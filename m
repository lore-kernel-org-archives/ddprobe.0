Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4682D15D1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748406594; cv=none; b=m2VabNDPpTE5do61Es/apvp/n3iN/OXDCE2Fz/nCxjOs/Oy+a9FmYDYFbTgeIya2x2In3g7YsIHkoCTPhsk+oemEiKIzWITMgSJWhaQQFilV7fMKkmR7pzqKemttOtUXjr37BfNdkLLX5S8uZSjOPEbA0h24To3f9QBWzk1EC+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748406594; c=relaxed/simple;
	bh=lWb75jNge5fA4ZgKpQ/wYngDVyIkBpeVKgzFH9r+Hho=;
	h=To:Subject:From:Message-Id:Date; b=ly3FjSv6LICsdWquG1nnnUKesfokVAfadtzeoUu1NAgL8t6kt9Y9hHGiaid3HiYpW2NOEQR7pPKm6CvXnVBjQeRXv+4kP3n0r7s40ihKb3zft/HDSDygfDiC/Jx2WlHbU8QhbvRdhpUWUXgo2AeuwDtBdil4bOiGZIQaqbZ1Aog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDPt29cu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDPt29cu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0EBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748406593;
	bh=lWb75jNge5fA4ZgKpQ/wYngDVyIkBpeVKgzFH9r+Hho=;
	h=To:Subject:From:Date:From;
	b=nDPt29cu2FLDzXC6VUlQ3lmdDY/mcrZJXtvf1c8fABGN8cPw/dM4B5Us9Axd6MVHS
	 ik9SCxlZ+jxLTWuBi6uc7VPGGs6yYsa9LnhgIgySAja10hmbgjvDWackhh+29YMKHt
	 GwJAVlauowiyMGQ4xVObREfojuVP9h2V3ZFLddwqZJ1MQ54SF1ZoTuPRdbyMTPNCwf
	 mgAIMU6yezeIOHYtHR+0oekmxbrUPF6UB1zYAcP9c9Sg/YyDMm/vQXWoGzz5yQ1Jrx
	 +8Nnnj98svXBmP89ryiWWEOTRm6TxMXbCaremswMNstwNPfZ2BS5oVC7ABnTywOuQk
	 KVXM7jiSG+amA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC7C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840659359.12573.4199756528681747570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6570fed7ce7e7247af5e4582fe3d5af51f797cfc093d9333ec5fbd3ffaa0b0c7
Date: Wed, 28 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748406593
