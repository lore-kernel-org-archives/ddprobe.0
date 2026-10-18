Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E104277026
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792305034; cv=none; b=imuQilTHYVVkyPmgRDiVxkfUwNZzxQA1RsIgYgCQ9EeNfRTJIZZkyPpZpWIUb9cW9IZosFvPcoFALvpagyZ8D07BAUwTv93eq2Cb3kY9Ma/D3U7RSpbedYno4iFYzbYh2kJnMGcMOITeCHBmlLrYEVYR0aLmsoMUjCEYk+EU0RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792305034; c=relaxed/simple;
	bh=RYUtLJ1FgvabfLhH+qGFeUArrAbZLVMm2S5wFRfp5xw=;
	h=To:Subject:From:Message-Id:Date; b=a4ZVFn9YUreL16wnzAVvCqUm25dRExmZcH08dBrAyhvDjxndmUFlkBR1g9Ht7g0q7YIASNJfUfwlN6RuCHkYFEbTmJw0ugvZyooaMMqFPL8EAyORWatQ5L2qhKp6/vupX+w2wMzeIqi2a8H5atjj3TUXFNwtXUvTEen4M9867gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ1XDkQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ1XDkQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D390CC2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792305033;
	bh=RYUtLJ1FgvabfLhH+qGFeUArrAbZLVMm2S5wFRfp5xw=;
	h=To:Subject:From:Date:From;
	b=kJ1XDkQJmFPx8GuvmaLhP1qi7Wi8TXxwtbHP8zdi6h6vb6a9W17lI9noZCSs2ZXkI
	 XFJRn8ZmsJNHnP3m4YnrOXGuMw82sAzlYN9NB1FjXwFva7cNOl8yrfTE3N4YHyxuf8
	 UEMt9gmSEr4L/5N89hD5FeECr3dPaBkUrij000NbxTreu+kr+NDR+Hsj27qJQ5E8mg
	 Fboys3miOTOyGqBkFrRPhfD4gT/1TzlO3BTVKQo20S3iNnGrDCCmtHCbV0I6SSLLql
	 gNqYBe9TLKBaVFd/JcYWwf1i++0pyPqEK/Ebb2/lqHQ+wa1H3K9+y2jKBN7WCYS+jS
	 iKWNgxXPKXHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1610CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230503369.3110.12395112130459176685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fa9717eafc55181a21ece29d50d1e517183ac10330c5db3045f808a16b5be8
Date: Sun, 18 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792305033
