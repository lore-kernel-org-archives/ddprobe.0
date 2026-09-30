Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426E92DCBEC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790753434; cv=none; b=MKKyfyMFB4MP99vyL1ufnAqp+fPdg5VH6TzyQfBQ9pxSo2G4DuA5wmBW0aK+isK5YRrUUZX9uximA/NVwfkhnq3+VMqdTmoAF+6AS9ve8s2WaO4GC5ALh8Gwa9AMHw2pkGX+kdugUizev+256my1Cxzadu0Pxid0lWTACqrs0Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790753434; c=relaxed/simple;
	bh=wQXaQrV41E68KzfBV7cucIoMstXG19y0o7IyMQ+W9jE=;
	h=To:Subject:From:Message-Id:Date; b=cZd/X+AFOhPrMtTU+f7CEmpKJx7CyNtA0JVHkaEGTPR3HWEn0M8eX8iJUp8qpSS9t3XI0JLR+UwvdB0CkyVwfzcVsosK+8JCFY/sG8RRTbtQIvNAQ5EMCRdWCnGsERJu4Z/v6N1158uYD0YvkcieY8qFnhguANkCGdbWJJmjSjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPQdlrV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPQdlrV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F57C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790753433;
	bh=wQXaQrV41E68KzfBV7cucIoMstXG19y0o7IyMQ+W9jE=;
	h=To:Subject:From:Date:From;
	b=EPQdlrV9T4hksh9vkVv+cHQ0pHajjIz0DNyDaggnN33nFSgVYiTC8DGAOGDIB8kg9
	 huhfZmSajkbtIKJzeW8obM0wZA0gP3T9XRuLqgTeh/PsNQNFfqHtLtmF+zYZQk4UMW
	 u//+KV4D0Xn1GFoUPphWHHi5T4v/NPEB76z6ELR6iMhRxycHOxp7vzXw8lKaXoNpv5
	 eBRRJAK9fER4FbLnDBTVChdnJg1TPJgVtyD2T/Nuia1Zvgo1l+j7Ziffilnmp6NEtF
	 90y4sktKH7grpc5Cn7PJkJ2/Kq5ogLvrAtO7CHd+6EidO3vvvRiOuNHCeOxtTJZkXJ
	 HCogEmwm5uKhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAF5CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075343369.4980.15753028486842135108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e007d2a7375026887dbd7f01a45da2f7115e347632fa0781582d8dee23a0a148
Date: Wed, 30 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790753433
