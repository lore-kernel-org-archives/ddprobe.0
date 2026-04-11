Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF0E146A66
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775943454; cv=none; b=bVBh6OWuo1MnoMlWVbQ9IAvwGEx4ReqrJOk9EZmmd7wSR8IvuxqYsffBbcB6CzZtiLny7qyWz/iaeBAuZwjkTnuotsPiuGkMvQzU9Sc/x0RZ+yVmEdU16eI4uqi7G5oI2IXa//S39+cy9+81TaseDV6NiY9UCGwH4Ap3D5f+u2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775943454; c=relaxed/simple;
	bh=vpBIoAp2hvjALWT+fExxwy0ApN7obs5zl2wx+xqTyN8=;
	h=To:Subject:From:Message-Id:Date; b=BmDnhuvmaQ7bU9/kH8aKQjZXmx1MNkTLwr/tIpN1OF7yasmsVT0JX8Te6qYybVRGBQ9ir53ySagfOfOUNROk8/TFl/IAnIMJzzPny3TbMoRZ8tUpOaxC/2smwJCbi2Of96LYmfrvXYGipPGXTuiAbrxf06tQUf+c2pE+nVQkqLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7bc0Ofq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7bc0Ofq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DB6C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775943453;
	bh=vpBIoAp2hvjALWT+fExxwy0ApN7obs5zl2wx+xqTyN8=;
	h=To:Subject:From:Date:From;
	b=D7bc0OfqEp9jIGOiE2wkt859MGgyKDsB1mFAH6LgjOuNr4kvFODA2G7ak2JV9z+vK
	 92bTPqMNQLS5Chti+O/m8Rp5EeMRXzi3h0KL8IenL2dYdJgevkZBzHdT8AKLEea8wq
	 5D/+gfrg+z0XKxY1r9XoK8pl0PbSFCQEyv47OPF0ZtPqw2Mlcsd3/HQ82sBqnfPZuV
	 awSon71qhLb2ktRXTA0ZA6J9mUtKxE39fE90W3E1Y9e2nBX9HazTweOyeBHEcwY8oR
	 L21z6Y0KB3TSizq4NflzKYPcvG3DtqyvhNSKtZQZeZs7lyiIF+LfrHvrUhqEivs1G6
	 qS9NRmYtknvrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE7F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594345368.2632.7170803413444512125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8416ef6669b4cfde361b00b273c9b7cb7822b4cc627e774a238d818935817bb2
Date: Sat, 11 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775943453
