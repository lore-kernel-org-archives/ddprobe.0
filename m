Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F162AD31
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737165954; cv=none; b=WMMNcdmxBqg9jrUgrypEz5g9oidnuJmiHO9tUUSpygH03zEs/TPn3JLWskIZAQlW9IbSo3Z9v9MXjKmeVM9rkM8Onqaxfv8IOuzwistoR27/R5FyCYkNgM5iCWHz5rn/J5dEBNaTdTwwhUq3GqroJkyAAH1EHIQvlQfs95y341U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737165954; c=relaxed/simple;
	bh=fWHH+t2vzAxBTl/flxfW3ti+GbBMbSFU2qEOWYDikeM=;
	h=To:Subject:From:Message-Id:Date; b=DZkExV73d6coggiVVc3Io1Bm0nqNk8iGDiS7jEeaxth0WmJlNBg61InFfPYWG7Z6GY/4JXRTFKjNBWtrCM7dFV7C/T5FJwLyB38DdoHeVPYYIr0XyWx21XDQJNzez2UdlI4YsMS+Ag9OlBb98IAIs/EGssp4VxtsrXdUfj4Pslk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srrjkFBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srrjkFBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF92C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737165953;
	bh=fWHH+t2vzAxBTl/flxfW3ti+GbBMbSFU2qEOWYDikeM=;
	h=To:Subject:From:Date:From;
	b=srrjkFBdXDZbf72D1mv6Ho8BHvla+yhpl6uAUY53RoGnMUIzM6czoR0SyWITMQQAn
	 FlPdfk7krqO0l+Q5Sy/Qa4xFKq403nzcN0sh6BJkyrmKhsdt6yB6LHvU/tfMBD2Aw0
	 otSmDB5tNRG7Uxg4aSIdFSDtAP2xSfW4eDUWn+0pzJhe1wGip6xzsGdm3hJJooP11e
	 Xezpr6U34UQQiOfgc1fbOIiPyjF49DS+Tvel2cTc7wUSd6joSiA8KY2lo52CKyoYgK
	 kN9k93s3pFzHE1BkRFIuRNtjt2yBpjcUC/CW/7V4fny1XFbRz/UKiiftCOTaEA7e8H
	 fjwDexH2NUVdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9567CC02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716595359.30206.5578739551921120009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b4c1d18e305b6b67dab7eb5655677c794cfb4e3643496ed3a8b733276ecca1
Date: Sat, 18 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737165953
