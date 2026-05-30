Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB0A37D11F
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780123414; cv=none; b=bd7PmAvJ7bNCeymZP3ROOOqJB4tQW8b2TdX45KgOyPd/FeBW+563VZmZZviD192PZTiEQCt7EZnMqRWDNhsyI+eeMeQYONwJL0f5rj0Z2YUcL4lV2LtEZ28onr9XW6eNQCaMOrYlKDr4b3iB6xHEFrJGMx+BJK/XpvSUyNjnLWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780123414; c=relaxed/simple;
	bh=XJyb8GWp/rguKXZ/2TADBlgIqYlsmCvPSX4BExoGkj8=;
	h=To:Subject:From:Message-Id:Date; b=qXpCRapbNW/Q/8jH4DYraiNVMUHZs00LhKiGjk0t5ZJ4gjmou6WoLLNk57qhC6ubqOkakkQ/NUClxkvfcpsokMa06/BhuYOzXgKdBr/tPk2wvZM2VdVi93tl+Jj5J9VOGzDhX3+D2q5lhpw37ScTAwflc5rWkUiY4SNwb90Rxw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAwUIcE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAwUIcE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD43C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780123413;
	bh=XJyb8GWp/rguKXZ/2TADBlgIqYlsmCvPSX4BExoGkj8=;
	h=To:Subject:From:Date:From;
	b=DAwUIcE0wj1TJbnwFcKYhltiZZkZQAr5x/Hgd+AogK9r1GpnwfSjQADNOtI+iBnZW
	 2FzJPxn8dlonxSxKUIJKoZIUfBhstZxZWOw1DQRfq13Y1Q2U5S6afAUFOKmzlZMTLZ
	 WgrmpznS2TxZK8+Kh6mIq3j0w1fOUEdjLcrO5aaei3/b9woNDa/r5KdWa8z74+WoZy
	 SwrYs2NDVEmBQF4ULVb5/yCu+6uRNK4yl2lzKiLXDnbdBvlNe2kVrzfdsuAa3ToDoZ
	 mCv6Yo/mRnDftvy5tdMGZi8HNodK3dqozJReGfjDovNOA4urTyU+ETQ1S6vKyU1aX+
	 F+qRb+oUuENlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B1ECD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012341370.23549.17021937793430583250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e7710c582d7105ff9b347ae3cac72624b7c54224d4623c25aa1245c41b4167
Date: Sat, 30 May 2026 06:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780123413
