Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A022BB1D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755661794; cv=none; b=V5VHAwAGcwohKWj7/ajcUO4W1KEFfO1g+tSd5drtlmDX934k+c58J8LquK/Ei2wP8IPaZBj4zo1H5Bvl5OpwSu8+LURmrJxxrtghDvxJDcN+Gv5sxl8NQWojX37wXlmtkTY7NNUTfpRSaRw/A1J4UyWCMheDPrw3mhkkmu2tnZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755661794; c=relaxed/simple;
	bh=0wCg9fpEaeWBMoNO1um0iPmFAtE9xj5Y4kIIyaqH7Lw=;
	h=To:Subject:From:Message-Id:Date; b=oXRAGpUeaRfdza1rk32wG3KXG638QPXabUhBeIQbv5tIAnbDtwzm7A6aKKpgwX0wQKlxGAegkGs1S/T8e3oPL16NX1IBtafNQGqrtpzKauRcpA96gQK+5shmj/SJZEkbg2cbKvYSeRUCuWuG9qaWFIP+6l+y5l8Y4yU72hcEclM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RG33/Hf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RG33/Hf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F78C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755661793;
	bh=0wCg9fpEaeWBMoNO1um0iPmFAtE9xj5Y4kIIyaqH7Lw=;
	h=To:Subject:From:Date:From;
	b=RG33/Hf0FBhF+Pfe2kJoW07sSbZQ0ydAbHWcZlniTyxEzDoGnIFFWxqx+TQUm5ed0
	 IvqlaiHhBZatYhcIzb2jDUPniQcCvZm+1Xto/tjEVBojz/MMHwmSpRqRN+Czfil0/L
	 a1n14Q2AoHxN3ja5kJoiboitI13BqENLGfEhSGb939CRwkM03bvPLbj1xm/99DRyov
	 dTsrfTFPtS5V8CFdgiHc0g6GTxPfFMP7X6lxUe+tGwvQQFD+HRh/+Z2DVaVgn6Kw9q
	 RcfVgTZGleHivfirjgEov7gFM93rmL1HkAZ1fsBoIXZ/PurUiYKNGf+3yx7W07LLZS
	 yaS3RolgFDyqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EDCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566179357.32412.8434070553706097281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddf7aec92fd2cb97c5884abd9ec6a095a48d2b47323f47f35973c079a094a35
Date: Wed, 20 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755661793
