Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF911DD9AC
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772298894; cv=none; b=WQam+hdqK2nQIx0MQ9DREJnelrevkiiR6ht5seRqV6l06Gpe6Eql7E3L66RQUUE8pwuWsal2mFFYyzlsNT21JCCy41xjmBDczarbs5Lp2rj2TuhMNfaG1tziZshiS4VMdisps9gvUcpzuSDtPpB704BsizH7RvU5lBYpD5vBXWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772298894; c=relaxed/simple;
	bh=CFyKvsB/L8V47duw1vacVUnZdz5+o+csDjXXklOVODc=;
	h=To:Subject:From:Message-Id:Date; b=pLH/jaS77LDdd6nH0+ZoMTTxcRJd/jYpFrIuIcNsDlS/re9pgFSD68ubiiAU/2cxmEoWM7btb3HqqOuv8nYROWXBXZz4tyjiYERA/OH5vn3jg1hYAjcmjeRegjOedc6gjrvonTH6i6IdjdilxtuxLPAxUVz64pEKmLDhp+CHECQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GARLBuEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GARLBuEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B61C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772298893;
	bh=CFyKvsB/L8V47duw1vacVUnZdz5+o+csDjXXklOVODc=;
	h=To:Subject:From:Date:From;
	b=GARLBuEse3+lRneQr26b836fKuSAoZaN3SS69iMFgzCcd2eel2clROJDVhl98LLv0
	 tZ/RxWms6ItcGNjDJjbkLvfA5GdOEhyc+0PyJQ/EXaExINef5WBnuXCpQ3rSqkFl5b
	 xYnOatDWDVSCatgFkul3Ah33iXPT/3v5/2Ol242YW+FX9AEXLg+fPy0r+tKZ2vD3Ka
	 o7nN9Y/RUtLqKqzkclmTNEt2KQGlwL6ZSBbARKZoVPwvQWvwhe2bsqfXZeIqjJx/vU
	 MUig+Mnv0oVEsK5bdmIJGCyPmbD4KoGeKZlc30eTcMtrxwcL/BufvMJbtwCUOW0/Jc
	 zyaklciDlKvLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94689FEE4F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229889358.1460.2276596251217310135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01131909a522959d22b3812b145751c9f54218ea2f9aec25babf0251997d3e27
Date: Sat, 28 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772298893
