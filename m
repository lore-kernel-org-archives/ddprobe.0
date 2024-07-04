Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467B51A0AE1
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720081523; cv=none; b=TNdWh2gfAHeZ/gxkQXaZdmIyh0ZqdXnEIcNeDzW32GQSmonWk5j+GQXvThutUsleB2TLVH2zcHvKNvtQylv7pRVfY3P+hYRjGIqk/RuP/R+mhfVcv522DEDQ2jr7h5dew6ALX1dk69Eo/wJ/tPusD+Yo7eKFS3tAArWPzZ7d5S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720081523; c=relaxed/simple;
	bh=38pmvzCP2l8eaDmew8IO5+JHrwQToTBLmrWHrzQPVws=;
	h=To:Subject:From:Message-Id:Date; b=og57ec+Cepv1M+FkZJ/SNDn3jPmkchzv4mIxmBDBWJa8KIaYl8ZAIK1M367KHPJu9NeCVSi/9Z7Sp2JjTCVNTRQb/6U7zP+lKU6bvVff7imjS4a970lzqYd0FYCezJhw0sV/dS/QReTf/1lNnY+fbs5snPaegW3m0iHDI3Mj6M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKVcoIZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKVcoIZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D42C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720081522;
	bh=38pmvzCP2l8eaDmew8IO5+JHrwQToTBLmrWHrzQPVws=;
	h=To:Subject:From:Date:From;
	b=AKVcoIZxa9jzXwydkuI4aXQadLh/ZylOkqup0ZiI6VRdKrC9PMD2NPFjYdKn9OsV/
	 bsncuJIqjBLBGe3MNIgzclHNLE8HDd5hjZ0TfZxvwNLtMtu/r7gO+HZ2G+DkC03knf
	 f7slZBQExRNTSEHxix0u2JfmjL57Ymk06cGSo/1B64d9+oh/xIJh6lCF2yOKskSQ1L
	 vAdaK3kYYJiLXkpHWlb/SAiHbqJ8VYWaYO07H+qQemp6+Vxq+oXU97OesTIJbRFsCn
	 +mDpmJdoxVWOAzg67UKlzOxmyfK9J6Q1ZvRN93ejdy4n14QJYKz+W5BSXCSHoU/mL6
	 uFchUJ8o7U5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3ADC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008152276.28706.8667866978856192210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7634a47abdd958a4874b2f635d8c7534e49530dea4a038c40116c393b726fb24
Date: Thu, 04 Jul 2024 08:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720081522
