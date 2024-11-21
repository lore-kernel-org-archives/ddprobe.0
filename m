Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD61230986
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732165554; cv=none; b=Vdoolkedt++Znf7nHH3VHKwznX694NFIs8y9/7QoUqoPiF6LeZ7kyQGdeAbwfKXp1GwL5V/w0sGjsHFue/exSND5VHCxIOOojDuhUA0zuXkuegWsli8VVUusKpabbJvd0A3k1KjXqOGt3VRdBszQkSxdCbGOxBRnCHY/7a4PEBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732165554; c=relaxed/simple;
	bh=r8wLDjgv4Sd9gOZrRZPiP3wZdGfYi5lKcrZw1i4FeQU=;
	h=To:Subject:From:Message-Id:Date; b=RVyF4DRO9JKZaQJEMCjQ2j628gqw2urPqD2qlRWI8yajmi/vzvHMb0paEteUrTI3Yg+hak9huwWmEAXxQ/4QXCN4aNpzKWIyU98kN50c3mdfOwuQAXrDxmMX493LdcKG/5NVhpv8B4xg9Z+baTyD5/uYGbU1q7WJKM4t6hsiDMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJl1cQp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJl1cQp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFD3C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732165553;
	bh=r8wLDjgv4Sd9gOZrRZPiP3wZdGfYi5lKcrZw1i4FeQU=;
	h=To:Subject:From:Date:From;
	b=dJl1cQp+hNv7CgE8/lLAbr93Is7l5dk9xYsVQPGvW4H04nGR5O0mtXMaS1tjpAReq
	 OAX/VrZT0v40V5mOZtNwjShuYwn/NNqFkaD5+ovRF6OrFmjA9bdN0mZh11NfTpvtY+
	 +rj32lJwqgZEZ3f2Ecws2sM/JIWGK/lDT//KJupXOci6XYBTQcVejsFhEE4L3pxfL1
	 8fa/1xVcO8Uyudg4SttHkOvYZGiBgOivhbfHYdn+EXw6ySIeDTxpAfHJVcT2WZ7XpS
	 inrid8/Dlkh9pQTmITJh2AjJWhbXvg0HuJUTBmi2FEn3JGwJ3rs42qTsbpGweOkCSz
	 CUzRfBi/GLo1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973BCD75BBA
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173216555357.16796.12430806113280511022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5b43c6a793828b8c63487d9895789192f7cc256c2fd723c4b970e098301737
Date: Thu, 21 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732165553
