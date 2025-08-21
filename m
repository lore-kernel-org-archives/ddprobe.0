Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28893054E4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755772793; cv=none; b=hRfhBr0nFOLhShXYPi7XWb6ewASdP5OgvmXi49QZYyQOtPqlVNY4tgNAfVag0me1lsgteByeqcw/OVD8PaRdhshOBhaz0HcvqQtqxqs+rbazfYIVIHtniau8f1v07msI9WYnjfgFI22zsAG0VhXBKPD7CPLLadu2lztNOJp4S8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755772793; c=relaxed/simple;
	bh=y4iBE/cGioukIyf/qzqwIlH1uSt5NOPWGz2Wey1KAjk=;
	h=To:Subject:From:Message-Id:Date; b=repMdFbbaun4JQ/739fbubZwWIGQFtLDGN68v9Bo908+H2VC6RmhwXZoufbOcLdIioqBSSom4FRGSYkX+Q8WizKB2feBJ3CPTpR50aOhT0vZ4B7NCsT9bP89wrDQcNpJ80tEHmy1zPCrojydEKemPAHbgn5AMLvYqz8/jG+Riqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unITxq5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unITxq5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755772793;
	bh=y4iBE/cGioukIyf/qzqwIlH1uSt5NOPWGz2Wey1KAjk=;
	h=To:Subject:From:Date:From;
	b=unITxq5dsSCskWV1h6P9r/ZwHa6Tuxse4QhhacCbwo6qkWlT/b7sLziUlpwZ3jrpi
	 JH3dnd8lp9SFYsRJftaCU6tqBz5saziR9LjAnV2d8WXdMA9oDSI93/4a51qmkBr31C
	 EquBt4jZsTdq+ueumWFXEfKFprncwrmzKe4Bmm9DH/GXWuSdBFSdbWqTX41Ao0PAKk
	 U1IvQAI3WcMsfbnXeswZnWF2RTFUQQR7VrxlqkAiRHgHjlHgemf7VCn8sXB/PboFLl
	 SefAL1qGF15xGCF9VNIrZOtLxeI6xn6Elp2rQbn0zD5Zk8+qKAxWFXlzdJUA6Ul04K
	 /6M95JKEdfazQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057BCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577279358.27040.11766108671925427520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b582239483b3b7e1004807d554b698e4efb7cddbf849b56e1bdf4e36fdbfe394
Date: Thu, 21 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755772793
