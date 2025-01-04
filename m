Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3946628377
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736022954; cv=none; b=r5FRsQNVACLBNInVkrGQyFsGJeUBkZlanWxNcx7Di4V+QEQIdvxkpaBacXHPBNvDh7NFsYyzgRkfgvGOKyy9A8g1LFtSDJHCPCVK55QCMiftmSEf2dEKZHyRz7xffCLPunZA9D+jHpJTbyQ8peQ781R6VUMMal2mjGPznNPH51w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736022954; c=relaxed/simple;
	bh=DFq9tZytDocNzIHtiBYpulEwKEAI4hFMIcDKx8iNBho=;
	h=To:Subject:From:Message-Id:Date; b=jY1+VdFIMofk2vdvrxT2tA4DNeLg3T7mW5FLJIhuXksDxNA4P8P1jb+/PcKTBCsfign3YSOAVXTrzJsOVrqG9UIjGF4LhKi2b/qWDkklQC+RDXyTIKI3++2m/igwjX5/i0jLKLRAiSIaelwGHjLexwsBPFhiMhOCbCorExv4dmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mf2FX0Jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mf2FX0Jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB643C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736022953;
	bh=DFq9tZytDocNzIHtiBYpulEwKEAI4hFMIcDKx8iNBho=;
	h=To:Subject:From:Date:From;
	b=mf2FX0JrrrsQL1qxQYBTqv+8DKt4gV0O3Jq+yFitZiLUQ052Bchx1JIq0zhKIc6EY
	 SlZ4iVECZkO5Dfy9x3OOCSz+/omOX03LaJSQR4+q3a/MrysCvlYp7NAOg02MEYL33R
	 D/p9zhifRGW/VSfrYwYq+Alb+507cn9NVddbR50lD5bMCDTz2pMGMaw1e8k2q9r3qM
	 11KcScJFJwuOKxDTtYB27lv6RVa7eN8ic8a7xpbTEUuxZdob2hIGkFJcl3rQydYeud
	 zFbKMaDEEpgAd8PIddmehp+OxU30fZFZNO/EVOUbTVkSD/quoSBnUUxw99r7CeGa14
	 jDcGjJclr/o5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D94E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602295363.32539.866248138084114470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45b85c1e3e8ec63c435bb2372cb5d1eefacb88aa75a0205f5b4b466fda3fdd0
Date: Sat, 04 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736022953
