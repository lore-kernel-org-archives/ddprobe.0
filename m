Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF2A176258
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723188954; cv=none; b=X4PVzHumXy1j1AHIvd28pUajFtv6k1LDdi1PpTvDmy/sHW5TrHwimc+Q65kZgnQ7i1E6rscuPA3lZhycEOeCjhUy2ZTN8NfLUSxGQrHfx9GJTrkHTd1B6nKS8K4GisQbPYnd7uM6ObR3ruJxY6tfyJSMHofsNSCU6ICzXJzzphU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723188954; c=relaxed/simple;
	bh=An95OfnT/1foymbplfLxGb5GDaBmUa7Iiidr1yIoBhk=;
	h=To:Subject:From:Message-Id:Date; b=Re2AIaxogyqlabHvXXM8wMAqwXNC1qi050Ko6wWta1c8ds7d8GcCYHWPB6Mblw7X2RMX1CUvQjwpFtmw8i01hj5pIOif+rMM+dcT5x4EUL7i/CLOYYF7lICRdmhM0p9Ti0eG8+mxjMu+Jkxfbl4KKtnBmNufsrP8nqs5mcwMtnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dvhuzcwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dvhuzcwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60B7C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723188953;
	bh=An95OfnT/1foymbplfLxGb5GDaBmUa7Iiidr1yIoBhk=;
	h=To:Subject:From:Date:From;
	b=DvhuzcwnjwIAYJVdeIiYeWWG/086LU5dlzU8x287npKCl7KBQ47JCR9JqsCQaSKAX
	 DLctbFtpswgM9AnBOcDC2T1e5tpHEVKtwsb37PTkU9P2ZNV3T9X+tfIyUrwiTm0JmP
	 M2w5GCxgfrH3hRiLlSk/VTaxnSpjhTJe5fj+p5CveCoREeLiQLmU7E+Nj9Ejyvrj3u
	 jLFRB7uU/MmJdHsHq2F0qVo1OReGZK00L0dMJjDMxF2SNYWZqTifKwxlk9hcnLltuD
	 o9cOZF60t1bWrnD+rs8lrfAGXwEKulXUACa96EFgHOFdY/eszWrTSY6RF50/oVNMhP
	 IifIUem41g4Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F337C52D71
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172318895362.3606.6249369159970570277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6ee3afdd58eaf76b4c1842aacb8131f9049eccc62dd60d486f8486d4600787
Date: Fri, 09 Aug 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723188953
