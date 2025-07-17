Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DF02FA652
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752769194; cv=none; b=h6h3AMu7+c4hFW+9dLYqRDFulv4CtCR5BhqHqbLt8b78Eg5ftxrBE15n4bDRtVA6leMUt5xPBTUbMEXiUhuFEezJJPe1kxf8uuVfYbpc8OQqkoht9BJZF6JLI9KzaKaLqyV6vipZbxW58082ebNIAvq5ONkXX/0apDb8W7BPUok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752769194; c=relaxed/simple;
	bh=wEHiiN98TvSE3G4zp3l77kqS9EQ9MG2XzYeY+RplEc0=;
	h=To:Subject:From:Message-Id:Date; b=SZaVhSIy07HCR3TxlRYZrZyk2ttY0rssIY2i/chN9sho/7BAohdqYwrSH5RXAHnVIQpo/hmI+gntLeFn5ge0stNHFuIitwje0P/kK5jXR+EGsFqwomEAPwN9Az9W0rr/7DtAYGpeaWvLsTXhL64klFUqnvvK6ycOF7hzWNPc/bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlwGgLCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlwGgLCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752769193;
	bh=wEHiiN98TvSE3G4zp3l77kqS9EQ9MG2XzYeY+RplEc0=;
	h=To:Subject:From:Date:From;
	b=TlwGgLCAsiQz/QWdzolkdf+/3B3lOjzyi8w2gTY6unPbo+PbyxoOvaa6vMre7zlFW
	 v6fdgKZ9vvzpO+nav52PJdEBsVl90S2LolWg9Pc5u6elNdHb9fg13nYLREMi7eQKDf
	 whwRj5YRtAEl/86CKHWKgjYQ94lRGfniOq58F0TEvsIz13jgoy3rPFmXLrYmbPa/Bq
	 3GmlMDXRqbo7IoDI3OrlnwwhaNUoGj6my7bZVOIOaupWNsV01kNUdduy7+NcXBjtgs
	 kuPW0Eaih5Ao5JGNv+m7E/aA0SDSFvo70ruiwIVQZno5Rlth2cxFzRpplogarHE2TD
	 TMSYsXTKjSegw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AAC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276919357.1619.16991966802577782055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5513d7d0c1309732704334de6403b4c4b5117f45278fa14cc358d46e5cd2a65b
Date: Thu, 17 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752769193
