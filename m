Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DEA2AEF1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748939393; cv=none; b=WgOD7QfpAJXkW57LabeioZsIt5/dTgBFZQ8Wj2DzavBgEIbTtINSXlD/fej0Oj95TrP9TqutejdAM3E89XdLSi9+0JI68/8rvVjZr92Rth6uGmC1ETrgoSo89Mz1DOMuDYCRU0azeDUyunXih5PMWbs1AylUo+ffDNJk0e9uNr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748939393; c=relaxed/simple;
	bh=BBk7ploY0QftS+34UNZjIrTzG4TVVqDZ4vtcAo4ox9I=;
	h=To:Subject:From:Message-Id:Date; b=OUFk08fuabIrrIwjE4JofQXWIauXnWoMy3UVczHlSyx9xidZoRtdn5c4T5C2QZ7K07QvX6Y5kzK/5fAlTZ6duoBfN6xN/sNDH+JYeMC7wvz8y/OahUfXJYzKEFhBRrRiRCrgnDyhpT7ZBX/Go2W8CIkdmmddcFoVVkVtInGM6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb1iO3GH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb1iO3GH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2936C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748939393;
	bh=BBk7ploY0QftS+34UNZjIrTzG4TVVqDZ4vtcAo4ox9I=;
	h=To:Subject:From:Date:From;
	b=Kb1iO3GHT4WL7rnHXrSyavJNCt4NPQ7aym424baME8XBKqdSngmR9PmjHCSFee6dn
	 lAfGombV4isDDpb7/qbTXaxwGUFion1Lb8J2yrZFSuO7fbi5XUSTWyO3f7Sba6++8f
	 /Fyt4KJennD5pXzrhvdStmVeOD6M9Tr/FSOIKR8qqxlRxzzADuZ7hIaKiAU/0+HTU7
	 qMlbaJxv8dVrBul8aJiziy5VL07OcOCh5lwJyDdnPJ5yNGeIGKXy74GZEE7b+d34Zf
	 MLZ9zwSd2XJPOUhpjrscCoQ6GaaFZulDrnHu8lzodMpooiezEYSRhPKue0D/Xqo65w
	 nH+8G5g2tYseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF2C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893939359.27011.1334772931524703124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985135825bc3a0e2802ef607933e3ce3363c94b3ee087f94e71bf813dc25a8fa
Date: Tue, 03 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748939393
