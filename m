Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D4B1755C
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722715554; cv=none; b=FOSYj+gmaFnAM3K7I7JPnEVcPH//pA+aK/+Spmr8UwTuUl5q75w/neSHgnk+nErISzi4XP2EAVxUCh31jiKWuK9OtuHh1fPhtHWTM5soNt4UyAu7dksVsh9QWl2RDtBrQW5YG2LkhDqYGYoKj2nI/xv9IAiQSojNnvBLMXD8WMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722715554; c=relaxed/simple;
	bh=3yOwb10yy2vQvN9BiTTJjj7kvDy2CZoNPIK9YZTYDBI=;
	h=To:Subject:From:Message-Id:Date; b=oyh2gsPeaF1M1ojqyYq29fq8ZcoihCn06a+3AhjkLk0M95o+4+C1iONbWqhU4J9FQcoH8y3Hd/eBOtmaaA3jv7zVkMgO4AljOUzovWKWwjc3Ndh4WwHR23zug8NIrdSjMUokniyslLivWFoxznipXC4QeOWvQPQ++l0lPMr5eCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8Dnz4mF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8Dnz4mF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2001C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722715553;
	bh=3yOwb10yy2vQvN9BiTTJjj7kvDy2CZoNPIK9YZTYDBI=;
	h=To:Subject:From:Date:From;
	b=J8Dnz4mFWlTZlIaawq+KgpY2GQOd+UtetfImLOcZVges6K9V68Pamuq0vT9d+gFpb
	 HgyC2k4oIy6WS0eH4YcaNtxyqpOafJw4sDMDL0+n+dkCZD1Cvtx652yoxm+6BB/lIr
	 ZxsTQHB9zsBavZkkiUJ/olTkg4iLA5dElAI7d+LLdv0T5D+Ps+OcAmshCGaoLXKoyP
	 vzurCpPVst3cuK9nVxjteetMdiVdGqk0R+0rNNw4PvxTKuKi0azjdehvy/1+7tJyv3
	 PHL9BpfwoFy6PExkUncGiIttaoFMZvpt9WA5Jw1lvZ5T15VQdo/9WOsbRabStfS07k
	 VuzUSRxcLJdJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E8BC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271555363.17140.9852761904601189272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe78af6e29ada0bb413e29c23350bb1df8ebc5104a463aeddef9cc8f8f5137f8
Date: Sat, 03 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722715553
