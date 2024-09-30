Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7E6185954
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727660754; cv=none; b=S6lZ9kv68+K0jOH1IPZnQFKLtJVkYAO7j1v1yWGte5BcatvSqxTjd92PzpJ/xgTS0erfQJMGBf8X7+nyQl5KCUoEffR2JIG7G8hii25kiU6UX5hhJ0U+3/bcgoMnFaidw4NFhKJTDi7k7Zb4wtQup6f0rkHS7GQ1GHBS25NuHMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727660754; c=relaxed/simple;
	bh=joqqO5X231RZUXEcVIYNqA2Vfh1dK8zkaRXkPcJwg8E=;
	h=To:Subject:From:Message-Id:Date; b=SoGsViuEN140M9wPYXIK7nyqb7Kb+0gcxT2I2it7QdUdbZr6CQsXCovzb4T85YYD7IK2Wr+hvlME/Z4hubrpVI8z6yG1IQijn3gNPDFq1YuRjTFRdnic9AHq+Zo2xX7Bot3MYSMFYU6T6ONW+5IOziB5MF00ZS/yrzxvTbQuh48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBHS+ZRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBHS+ZRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2826C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727660753;
	bh=joqqO5X231RZUXEcVIYNqA2Vfh1dK8zkaRXkPcJwg8E=;
	h=To:Subject:From:Date:From;
	b=TBHS+ZRG4h6TVq8y+nY0IbVXUx0NYIEi//4U3/mveg/ogdXz7NNTyI3Av95+DwQDa
	 zxiedZ6vIbA7SEfNmYZWZ4MnYrGyoIyCRZgohEfdCrhn+TNVlzALauurYdhj9ysM9N
	 T4qa4tzIn+Gb0G8a1GcKzk0E4mVwHJZW0I2iac88Yi6KYg/aYOHfWlB++0WvGYw6nj
	 EvSgn+W8oR1M+3+bX0WSBa2pa0ux7JVIKbirZLOAfJqUvGdcU1QYIkH5UP/vBR93zy
	 4B3AEPIXx6DwwIqe6Ldi63Wd7yavN0ovC0iqQVAqhqhSlMZNibLPYmA6kZimAydhd7
	 WowAAy1EWF1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4BCF6498
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766075358.26374.13208405824051685789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca0cd5ce9a74c73d77861e30708220a9992f2d847a29393ed9bc0aad91743f1
Date: Mon, 30 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727660753
