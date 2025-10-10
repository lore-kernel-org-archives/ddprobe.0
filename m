Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395621DF26E
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760076594; cv=none; b=Xqp7f6ZRutkeKLT9aNgp6PasE12HYdmkQVInVlXTbtPe/A8HOKw6AwT4cvv2f58SfXzG8io2kp7UF7EtjfRhFu73DNJqBkvXFBjcg1uA4sm2+UtjnxqfE32Fry9g7QrIt7fK4dCpWTbgi5LbRW2NgGYE4ysm0lL8p9e2Vb1D7V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760076594; c=relaxed/simple;
	bh=SCvl1jTe5fgrDoRv1FEZsnOjDG6f3r7WcslYlRBxIx4=;
	h=To:Subject:From:Message-Id:Date; b=PFIZUxH8jYdiJtG8lYY7mk5rowZAs0BONU3duuIsyNFarAwGWPVbd+w/2S40i+JA4k6bd34i7FAlz3QXnHowSvXAGyFQo5XneLFVF8wcWJKOMQiaewOHLfzLFIzjfOLYJnfBhBht6cyP8ktdW30nlTp1G4/UaYm9k6OsTnyYUZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mif59yev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mif59yev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A447AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760076593;
	bh=SCvl1jTe5fgrDoRv1FEZsnOjDG6f3r7WcslYlRBxIx4=;
	h=To:Subject:From:Date:From;
	b=mif59yevKXtU38puhpz9a1kjdrpyXFeVxoZXAjQJesCcvz5s7fq1J++bsKFDhT9e9
	 lr9Uvk77tPFBkWdkn0jbHLQ92f78f5Z94GuuvsQuKLxPRbsMCkc/tgAnVJqXdqahsd
	 Mzw6niMHWBqKne1wCERpB8F+HdubhnV3AiNFWUkc6BZmgVqRNt2p/8Zloj5VP9MA9J
	 eP1aqWsd9RxeKrAp/rJY9hOICISX0WS+ADy2m+aMw7XANFJz3s+1/pnkvkAimOJBUR
	 h3N3231CvRQHFq/RETcTJLd+XvU/Xy+lcclnj065iC3/3Ww7z8BJPnorqCwD9IREM6
	 /1xmc5Iw51dUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A1CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007659358.8738.7141169157109381809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad8b485c04c1d2d850b24730a8154f275cbca8fff4b2eeb5a76493acc4f53a5
Date: Fri, 10 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760076593
