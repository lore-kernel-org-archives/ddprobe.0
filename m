Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34352DC76D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769858634; cv=none; b=Ts3HQmw1oA1yY+RPEnFJi9lng/ux++4/U6nM8Vd6+p51LTqkzhq5wEiCBld+1hVbjGQRDy1D9kIB+F19b9VoeyyGFbyXf1Y9DudQu2lqf2j60t4miZ8GC/ZjR+/rV9VWrjjwH0zSNa6PmtQKCHWL+G8kBUMK/+V8e96x/dCnmmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769858634; c=relaxed/simple;
	bh=vUwVIW9rrgPgHhOe3rPwoRkTsQPDhMCv+PHj3bfHSVY=;
	h=To:Subject:From:Message-Id:Date; b=QHpVmtVPt8EghyXKmG35E8753jWkcgEp/4iwJJg/pngyNfg+Utek4Xo6Uia4XWVw1R+zH1+cG+tM7Hx8KD8Q9z6n9W9fhU6b8wDTjOnYu5RImQJW2ETmygeXKW5v+La5OKwGYEioSAiGQLufl8rmvUfba6g54HlLh+zMP9ya3L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkjHll/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkjHll/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C57C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769858633;
	bh=vUwVIW9rrgPgHhOe3rPwoRkTsQPDhMCv+PHj3bfHSVY=;
	h=To:Subject:From:Date:From;
	b=pkjHll/cQQ50eLcTdCuR06lDyItSpF7u3ZEVL/GaFvCQXgOL9F2PFItRHCE6IujjD
	 Jlsp1X3VQPP9rZxLb4arxAsBLF5nyckQ6ojvYzzvpferpBBtMzLuaRfDH6c/i2VqcX
	 oQ44o6ZdKEsKhibC6Z9yXbiJAX+ie2uQ7sye5sTG7U7VXtqv2UUZNrxXyCYEksryx/
	 sYGj82uMqz4G7OVLSY4SYkbDiqGAJ6EonpmbQKHfEsO9e2Xl25fxs1iUOOGb4eaV9U
	 UW627NIN8yo2Ekekr5Q0NdblBTDo/cnmqXPRcEPWwikwr7cWGs1zY3Qt8MLqr84zV+
	 x6HweiFLg1zHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF7D79768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985863357.29787.12852745266965402117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d768d869de4467973e5a260779dc9ac6994f9d74b9b4bf9d7f95087b168a95
Date: Sat, 31 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769858633
