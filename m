Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EE11F60A
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738821354; cv=none; b=k8dL6W19fdcUKUPzXXlKWZxSqtOOva/qe1wiU/sUoIlub5wciuSIUTvLFcvUnqh4iHIoXqc/KccmSCsnQ9gPPrp5ivDDrR0SrgOH5QQdjU4GIcEq8XLFXgj2ka7NXjHwU084IZQqs9Mi+Us4LAs8qn4PK0pB7Brcuu8WcbbNfhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738821354; c=relaxed/simple;
	bh=L16hgvy0hdMvxzhe4VE2yIPgR2MAwAVYE39kXpUWIEg=;
	h=To:Subject:From:Message-Id:Date; b=LUMQ0FOMvqoQ3lME/K+vizICkyfwT/wsAGkwYXriH4zWVmycfelGGr+kmh1gPZp4Ys/BZLFxGSyu3s9Th83ebtpdnWdIjMdzuErDdWuoGALx8shMb3b+p//nVL/ZdNhpcw3JoQzaAL0WIcXFWt7025EdSN2xA3EC6j1vqWrUo+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imVSGxv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imVSGxv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8927C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738821353;
	bh=L16hgvy0hdMvxzhe4VE2yIPgR2MAwAVYE39kXpUWIEg=;
	h=To:Subject:From:Date:From;
	b=imVSGxv94QRwDwI4113VyGXizz4AH1quCBNWf//Yxj3N9URql9suKhfcVT5Hi73D6
	 BDq6bv4BS38rXgeI8Cyl9Xw+Hkyq/gaqoFH+dgfrqJtAZzZcBWQLq6DwilC0A8kNGz
	 UJscCtbQRaRVKuow0bn4G98CQ+AWmorDIh7VLT5Lzyxp3vSDHM7tm3rrmXfC03M7OU
	 z6HGoDAoCKCqawqt5dXFvPWgGpeyEBwfDuTIGyX/eEKKiV0F2h7ejyTN3xaR7C3j/G
	 iv+KndjbAPAODF2x6BckwYs4y+Zw/Ngchqkt3j8E2xYrrOtjslmywU6FV6gcyIiuxn
	 8+qe6HLbtIwRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964D6C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882135360.13768.3687401256412216403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e205cc284dbe4eba2df8d3364c9d84d5c4eb979c381906344796dc1fabbe9446
Date: Thu, 06 Feb 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738821353
