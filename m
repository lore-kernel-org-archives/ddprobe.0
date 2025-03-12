Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3221A22B8A4
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741765734; cv=none; b=JUb3qHApSb6Iouxr3sdGalx2JRttQeN1RW2tcOT/h6rjkJHPB7m6QEczOdRZ1oUu7Ej+87Qvg70KIxmGFcPX75AKgRK9P54w51FZZHgVw+OUnoqWVtOE8zsv0syHw+IK6q8CI7AIOYY7foY7bKNJ1x0gawuPWMet3KEyvwo5n5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741765734; c=relaxed/simple;
	bh=q7GIWeh+bWJi5dSKlN7H8/mqU7i2GQ6bynTgDw+keXE=;
	h=To:Subject:From:Message-Id:Date; b=etN1K5iLF2XOCPPrcTxQl5gqbr6K3dyS+BpqfVGXa/fETKLWJFr+YYQRwwEEckcJV98e9c5qCuh7iLd4pRKGP1xCqmmcXHcB1bX5FHsBAXX2mLb/LPHQ+v/0Pv94I/IUk8q8l4PdHNXdGWJpYK4CIGUKKEyB6rD6sl7A54qosUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbOlFAfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbOlFAfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C2CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741765733;
	bh=q7GIWeh+bWJi5dSKlN7H8/mqU7i2GQ6bynTgDw+keXE=;
	h=To:Subject:From:Date:From;
	b=PbOlFAfINO14bmoYRBfh519J4drJKmajPJIQRCCDlpxNnXfmDBRzWXFr0HsNwfKBR
	 RsnIJOh47yq1lujZAnNBPNIxmv9dFgkwIwwLUmyRbKSHlWRdBBurhDu+w2yUvuj4qA
	 P6yWKde0jF/EqctS8hpwuFz/XwOFFIo95qGsfdAi7oWAK9RG06SoRLNLIe9JkFLSQl
	 gSRZEz15i/WxjGucnUZU6nSedEfKK6Yi+c6WdQMybr1O8Dt/1i0hWKxDLJy3Ft8Iks
	 iXUSXrlTCjiB3G9fq4qJoHxfqVVllwLjketC54wffGM6lPtKSMqEmRbeKNWFfC+sPB
	 3b1D82xuiHt8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91728C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176573358.28049.15276130191396798446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740458c430430ea127d932bb26205692aa431b53aa8c0446c2deb3c2a820258e
Date: Wed, 12 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741765733
