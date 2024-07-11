Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447411553BC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720690043; cv=none; b=sOllS4XNLRnIP3bMHBNIEsefCIB0uFSgWcwEvcxrMaN3F4Emg8pwsNf2kU74B9GIjrRvwsp/GPEzg965MGwsUkiPQJ2Z5xM4l9/nkGTbQ/E4CaBZCAtGzNSVYuvSGuUYstaX2RhshIvNJkMCmVhzRnVroQU7cl0EWM4LZh/aVVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720690043; c=relaxed/simple;
	bh=C1nGBDFp6vvc4p/HaSLoPr0IV+mJzp5sa0ngWuiZK9M=;
	h=To:Subject:From:Message-Id:Date; b=BAGIfKPGELBMVF0RmBpema8DsZskMrTPMewrKUNaEqwQFtGXA8+9lYJX9gl/42KTeMzKQs70tuj2bL8zRS4pE0MZ/J53ecZThNZGSk0jJXsXOqc7/6HxKA4XMIn8hebdfZDS3dsC/oo8+9hZxnWvTYBgtS+xNkMxkSiwcKJwhCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUdDufko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUdDufko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17F1C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720690042;
	bh=C1nGBDFp6vvc4p/HaSLoPr0IV+mJzp5sa0ngWuiZK9M=;
	h=To:Subject:From:Date:From;
	b=FUdDufkoystc6LmcHcxLsQVW8Y5ks8+0dZAWSBmECOtVlFAFblkWT0ibqegnUF+iv
	 LaF+YhO8CB0NUwzBqY/VWr3atDvd78fjb9Uo3aegVS30wFheP6ensGtdJ4Q73J7S2N
	 ukKzQteeMU/5CkHIWWlNRhmP8vS2wwp38LgTpH2JvoJasu2iilMZxb1p6BPtp3WplQ
	 +Z3B7sANxUk0KundU+XeTZXCqCoCGagxqH8/iTF9uoESdsGPODhzPq8gjChA7SUbmv
	 5NGGhwqnLFf+GhGQK62BN1tnA/rpI8Z/soVjmOMf1/sMRTr4Ag/KcSl4HbpeUhlbtd
	 c1zQazTQlqlYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C039FC3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069004277.23678.16730644220517349951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f945415ad2bcb8e96ed49ad50516bd5c0ff537f24dee8c4d16276e270c38b5a
Date: Thu, 11 Jul 2024 09:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720690042
