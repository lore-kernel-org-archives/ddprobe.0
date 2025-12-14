Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351CCDF6C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765679574; cv=none; b=plQaYVGTw37RgZ3ZRy3Objb8SHBpS/L8kGrFrZjGQ1SAHuxEsxX9PzdVDMTt6jl40WnhxEBfzIgDxWxYaaAwOkg/zENTLeTyRkKvtCdUCxHS0Pa8gYZpNCXrePb1TdqtB13qlXZDBg0WKQlreiwZdm3MQCO74RO2e/ZmnMvmznM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765679574; c=relaxed/simple;
	bh=NndNqaMXNNTo4z1pQTBU3nvb+FKa0bbWttnqkOzu6Ho=;
	h=To:Subject:From:Message-Id:Date; b=LHysymiDH6+WUC21ONPuRTpwmyP0MzppAhwShAyxBmxrzScHo5n35F7H0XT4S5YLx8KXZGdIbXrYJt7V3KUFcSVP+hHtXJWoTO6uW36GlGnoOv6j38t5A9qg/QLu4iknm/ygdza4mPJaB3oZwFfaHHnPP0eum8FWHIayhP4SOKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbOTgBAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbOTgBAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86DCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765679573;
	bh=NndNqaMXNNTo4z1pQTBU3nvb+FKa0bbWttnqkOzu6Ho=;
	h=To:Subject:From:Date:From;
	b=gbOTgBAXY3WsGIpUpsWOozrmRewpFp0gQ94+I3NNwoMKhQK2u++U3r8skxSkOwM+F
	 H/BYpurmrKJMSwM0m3DKsA4z9tsuo4xDpu0Raa8IkDRMWQsbZ4Kz/YgylAP2OpZVSA
	 EV+1tMvaMCM5a1sm4Dd9Vi7f79WTM7Iwm7FPPglR0LgH5hDpr/S7Hn/KxUhmB/ONvp
	 BnqsF4TjM9iikA59MQrgUEiC4fhdCbljM7wyQs3+3RR+pInQDaeq12Gj6SKaoLbvjz
	 BcC/4Y/8I0+2ku2zeY9ilLg8kHkAXSyIOGd8RSzafsmJB0Yh2mGyyKKfbkcOhbDdfV
	 vAjBJ2/frk+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97478D5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567957358.12419.15727768185632441750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628128af1a9a21e87c67f97da7b7d89bbc4688ae6ce9a7de1fe9053bb1f7b875
Date: Sun, 14 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765679573
