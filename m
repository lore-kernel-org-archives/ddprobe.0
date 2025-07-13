Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297A219AD8B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752383394; cv=none; b=ZOl+PE2y751lmuUIwpZ0ir+VRCNBVwY/ReHV6qTeQMVT88u+oj8Tdk1UkcngDhijyJI0wRZDDCkMhKUtpcTKiywHG18+rJpEtHn1PQQVx7kgc0k54725arkB6m93O9qStroj2gSH6buQYZUDdb1g+MHLHV4LAVhwHrm/o99ZAS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752383394; c=relaxed/simple;
	bh=HcyFePcHBlskhM+8wkE+KrNGg/EYFM0QqrqPcJpfy+A=;
	h=To:Subject:From:Message-Id:Date; b=kwi2T9b/k8HfjzT49ViRD9AXTlTexzh2b7dGHrSWWx8KMcL4Z2lZYh3d8zWp+tRma7nYOxjhNC43AyGTwE3mJ98pHZgSdF6uzieHs8sG9YQ/ZjrVnAH9UX8G+PQSdC+14YDhQy9eLDnoZ8PKQqeEgqdV9AJFf1DQ8f4ydAGvrug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONR7kviv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONR7kviv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752383393;
	bh=HcyFePcHBlskhM+8wkE+KrNGg/EYFM0QqrqPcJpfy+A=;
	h=To:Subject:From:Date:From;
	b=ONR7kvivxvi4e2NMlfm/37xs5lLzPRd8nuzbTbVuYGlsyqE0vlmyZWcKmfuCv6ep+
	 +KtKirn/9i9a9xxlc1Gs5eS6Vu1meeGYgW/pw08GQXJVuTm3mfwaZKBlbmgEy4NroH
	 7N2xrjk7wmKHGpimfWtsQRpCEoODcgIHY4wuYbYU0QwcaYjF7j2yAuqF61i+m5qcdk
	 K3zf8WZn2SoVVkikkDItFb5CqypRipe85AzkVOOFc6vmi26rtpFzPqznv/FWLxq7/9
	 redi6E0kIT0xSrms/xNwUjpa77tIdN8gSVggeqR7sE3wVRKPN2o2+l8aamOf/9WufX
	 Nun6Ez4RpDmMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197FC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238339357.8994.12855631957410302617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9741bfb56ec5c13315fcb579168fd5d2d0fa37bcef6cd598a4d80b96fd0f968
Date: Sun, 13 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752383393
