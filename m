Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F18238DC7
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716044543; cv=none; b=g0lmQxc38eoPziuuqMmgmfHd2vE27YLfhIsLUIVLVu8ScB7PHtqMd1ZI3ysBr0VqOHBcW2CUtQAPrq0sKWRFir46yzRgwcnhgL7Yb0wXEnBzaUeUWmIrqAOSbpmizp38hQml5SY9FwFm21oExDOem0GgBi+9/HBn5FTd7pEk9pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716044543; c=relaxed/simple;
	bh=SH0eJ9qzNf6Y0sQyjdZ6ouTrQr2hovQm/ShfHb+nLMQ=;
	h=To:Subject:From:Message-Id:Date; b=bfEmlTFYDyzScfJdMPpBwMnzADRBflfXyoYP6rItDvgDckKnzuyisu4sFQngCMEz3hTVs9zzBAbeof6QhjsH5O2ciqtOg/7iTOBomqYh5fjpvigSZ/nRTmEsMhMvYOnuCH8CzWNaOCl0/E39nb7d7nGxXL4iZ582oZ3Jak5d+Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAHI/O1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAHI/O1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AC1C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716044542;
	bh=SH0eJ9qzNf6Y0sQyjdZ6ouTrQr2hovQm/ShfHb+nLMQ=;
	h=To:Subject:From:Date:From;
	b=mAHI/O1i6344EckByIxUYKMNWx2lFvWRBtgEZTKc0j2YSMjA1377jEX7ISOhTHkg2
	 QCORHxolgIXBpHurq/xYm7npQaQf378MbhsSMqJAQ998AIZzqVzF87LNmOxn9PrXj+
	 N/TIJ+CWio7k/+mSaLWqr3Gpwo6BRPwMEolVbcFAvLfOd7vWnD4F4YptAqfKU1nM2t
	 ShFplYQonkbAJLR7D6WXgcaJ02Z0oXJbWB+ttW/y+zVJiUfPXtC60pyndOz+wCxt2b
	 Idklccv6AHnkIa7j66GRwgG3V6a0Bucrw3fhJHLft66PIrcnbe9IAudY//ROnfvt3R
	 BooKNaJ6LEcPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB175C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604454279.28914.11854096798301331299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52139fdc8059c4cad437664a63345dab7bca514541713b3683107bf2aac6605
Date: Sat, 18 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716044542
