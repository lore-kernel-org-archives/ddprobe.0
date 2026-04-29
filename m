Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782933F595
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777460854; cv=none; b=KJOdnoRDAr0rJ/aGSJ11tiQjyWIlKS6l92WtKPvxDXPgQP5xKA0QWFYxc3oAVIoLe/NyQ1rmvE8yRYjRsxJMRZcTZhV7AaxN8w1wHJNYFL2/+SaF+rzP2lYBM62I/YiZsnVFzaK86kbYolUwFiEu53GUvSbrO+KEO5BL16eOwYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777460854; c=relaxed/simple;
	bh=6jvuTPwbFWq7tACs2qYqd5zm2SCaLEOEHDg9LxVrKVU=;
	h=To:Subject:From:Message-Id:Date; b=g8ptDqjWZucsbPNNzQZ9S94WX2pDYQv34BV6AsZiOH9GdnKg7HAByPQYYEC6RgNb6GQN6BbCm22kv/GhiQquXWWLFE2rVPGsQlb7aE7VJlmUP72hI/7O80dmRKn4u2Qr0E8vJlmjVTV02HdJ48azOVUTnv/KQixnmSNiLYYRj8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzaW8S30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzaW8S30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F0CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777460853;
	bh=6jvuTPwbFWq7tACs2qYqd5zm2SCaLEOEHDg9LxVrKVU=;
	h=To:Subject:From:Date:From;
	b=NzaW8S30yqbuKErsM999MrSbU0gxLY6UZJHcdXJXJyWvypstv7izG80pa3rg2b7w5
	 5kTnIVfiSpPugoV0XKi5PyVV0ZL31ilbFB0UDD6QBfTONpqdfyjCW8MYXtNfyVqGf7
	 oXOl5d9mL2AENvQdfM0ChsDDp53fq+4/jARy+7Q6anmHUGUvPeFyR4I1UnkpJCFvGA
	 zTuozRkBfP6rvF+/JDeXijB/JYM4Vuv1+dUwlveJ8s0MlOuSSUPYAL0tLBmuL7e9DY
	 DM5+rS4FkaxKkFlr1uTdRGPkzEN3SaoB/Y+S1KSgvCTdlEJkAKmOanh5ARr8L9WvXy
	 agqG7fP+SO/8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F79FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746085368.2402.16035703544600569923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cd06b3b0aec630b0b1a79ee714be8dea0153509da6874769c09f4600f97623
Date: Wed, 29 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777460853
