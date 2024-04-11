Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD1DDCB
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712794097; cv=none; b=KYwp/Xor0q6A068Wjh3Y78+KlyxyGJHIq+lux50wXoxP+Bo+pnApyp2dfh3gc4tbnBCdvPYQs3z+29wBxSgjPxugea4CXgJv5nYBjRzVOppw7SDaUAZXKhSnIgFFUmZ1KwpEnC2v83fhJ45pi0TRcaqg10NdAiC4bhGS0oNsJxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712794097; c=relaxed/simple;
	bh=yu1jsBrYTyHcSboycqlrOwg6YiyYB+0S+TvQ94Sl7SI=;
	h=To:Subject:From:Message-Id:Date; b=p5MJOx8qQ91sjR/pwmkntzx0inEYvK89DwSsO3+79MmAE4i9cDHn/GAf9LaHczDdHCcNUKFLCO1BFzliHD2hWFrT5OFTWmNUn4uGdWgnzF+ItFu9PuBNxX7UNym+a+9q732ijyGC8GU2QBEPsvKe5qF2W6iz2/5MN8zSxBEqqFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vA9G52O1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vA9G52O1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A8BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712794096;
	bh=yu1jsBrYTyHcSboycqlrOwg6YiyYB+0S+TvQ94Sl7SI=;
	h=To:Subject:From:Date:From;
	b=vA9G52O1NgmwOjXhup9VB4Tv1umSo5PN86jBZ0jyaFPOrz39ubKLBk4/VnlHSwUIs
	 p8h6b+zEmKY45vo67oeLSbScmGnWsoAc8/Nnn/ZjXYJqeiAP+FX5lgNlul98vgeFsl
	 Zhhfd0+Mfq6ABsdoOEj0B7eEIHPJo4yC82yAmVLHDEXFT2LDXFSXIw+vzntrRkR2KA
	 zCE1vu3yY9XLJLmLgelhpLLG6SLbCbCX38YFIqLCWg+cMoHoHCp1BMPh33CiTulRkq
	 0jypAHbOrCNmXvYV6O7aryvBCA0wPvc2Ro8SHY/AYWLziaIY4xsBB+WKmwyj82ceFf
	 iloJZoCZ9gTvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6988BCD11C2
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279409638.490.1782518662757064417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5de632bb07213bdb88ef7733aa981b9be0b779241a02de3cc9732c2383964f5
Date: Thu, 11 Apr 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712794096
