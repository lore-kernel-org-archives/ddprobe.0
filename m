Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7C428C5BF
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754490594; cv=none; b=TJoy3EK0XrGU7A4fyLE7NSo6Erei9lPiyTNbyCNRuVFO1+JvuEZhz75NyD+g5XAP/8SQC+d36vwuse4HB1Oqno2JQGGRqdN7vJOMxOMX0S27z064cywgMHEkpl+kjr6FM3QtVI/m4BFnsj3JKn0AWQDTkFPhWjAaGH4cXizLmB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754490594; c=relaxed/simple;
	bh=IcDRYSk2z469sEAvPGUCUQ9uCnyo8tBIQAwZM8F0/A8=;
	h=To:Subject:From:Message-Id:Date; b=X0Xmvxhqid74qHP3+GdmlW6sBz7d7MQrnRkgfLViv640plU28/lXvagcMkfHP6t7XXkuBEMaGcVl43TzFQMMyvB7It60zDTr3zXL0+piDiLZIVaz6DKmarc8prmJ80cV65zYgljkUJbnHSujnMQtF4laho8hh41jG5wa4Qm1CZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9tzpZQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9tzpZQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2B9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754490593;
	bh=IcDRYSk2z469sEAvPGUCUQ9uCnyo8tBIQAwZM8F0/A8=;
	h=To:Subject:From:Date:From;
	b=G9tzpZQM3eO4+agnBgdnJsqHX9GUeTBbvPY9bGLSsefIO2jdmiBkmJOFroGqG5jUB
	 hHt6D4HhGOHBE5lVUYHNrYmzv+f70vJ0IlVGjXdnvqnbKkCysBihb71mp/NiN5Ji+4
	 TFicU8t7nKFQjty6riHmhzBh5nEUt73l62+UuylIoI06mikwSFcg5r1C0Qkjom8byW
	 sb2N+fbAC3mIoh7bsygfPHbeBQXq/v70vJn/1U4QtXj41zfhUAi3WBPa3kb474LTTS
	 RF/+5sFGWAS9VGGN1lsnRrcqfCKt0pcICsVG/5zWqiN8WzzETej/8v/wdtAXJzff/I
	 Bt38YtpD/edkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6FC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449059361.4501.4490152600381646458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafd8bf3bde07e5c38c795a84a0d10ffe485ab802d638d8b3961349d526acb3e
Date: Wed, 06 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754490593
