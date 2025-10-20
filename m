Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5812848A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760976594; cv=none; b=GnIVKQiU/hLPkNBqm/lB0pSikHnRAWad2Vyf+6jl/2QD9OqK5/0XUTmdENa0qUhcjqfNsddPPUkThoMvSynXm4p4bLsGP86w9elvmYA5Yi6gl5gulCN9znZ1REESDJWfF9rSs/zzRqnNFtUg6uAz1Za3sU+Go08amfoLEvsMWoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760976594; c=relaxed/simple;
	bh=+p43YPiKr4STzk3bHhDQliKnghNkhtKK9y7Tk5LmzWA=;
	h=To:Subject:From:Message-Id:Date; b=KdUW8w8rEDYOpO1uDqeAwpKoUJiBng9jnwSaaEl8DZ4Ob9810abXKqTEofLj//6LiXfHghD4ZXUakwvUITqC/niYGx/vkjdSVVdola+wHgR7VxEcuc7Vxf44VKIxf86QW60zqKs9vFp9B1hFP4f6w9OuhR2jtZ2kLR/dTCY4cUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKLc7SS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKLc7SS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3555C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760976593;
	bh=+p43YPiKr4STzk3bHhDQliKnghNkhtKK9y7Tk5LmzWA=;
	h=To:Subject:From:Date:From;
	b=iKLc7SS3E1rzPPoKqJuqgTwd9jZIazgZDH12YWe26DTuDePwoBjI4ER0emRreDNUg
	 pNaqn44A4RqqcG6Lm7Z7C3zkL2AcOkzCNMLfBj9Hy5uabrsYGD5HoD+oPg/Vpj9ai2
	 myYs9hXxzdOpUWUAHqfmLEyjxUmnAYqyrxX7NiAcV7gUnoax+Wvqp22R/UeI7LU4sh
	 y03KX1ykoYd5m3/4dLro/rqb9EDIXDE6tfw5i30Nm4R29UBRoAEr5WW4XCYxYdKayC
	 ks8X4yv92zvnxX7bzsCyNLRwu4QZQk7ZlokEn8cGtVBvypp3n4aqW3GUiiF0Oc5iji
	 ySh13GFxp3WHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A5DCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097659358.18291.10756198174250595685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d60e1bde097eeffebee320a0e686771d9ff428b71387aac4b946f50db031a41
Date: Mon, 20 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760976593
