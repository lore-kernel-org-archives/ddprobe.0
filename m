Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389991EDA09
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756295394; cv=none; b=jKYxVonSZdM7CoeFL/Yd0NAO17VI4xy8XiJqwtXNT1BsEx2oind2y6Xjh4MhIYDUh8GkN+gGYy+xXKj30iFUqpVoTGnHoitzC+OFgY6qXKzmX4tFOoTeXk82Fy6y2DvaH2DYFiIzLnCqugnCzYJITOiOZ7zkcBcZD+tzcuUMQg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756295394; c=relaxed/simple;
	bh=8FqYFKMm0Gr6vq7N9GZF9i6WoTQX8TFAXgTNJoFOwUU=;
	h=To:Subject:From:Message-Id:Date; b=Fh7QoJzgvc9sy1CG24KnQkAGF7nZoJNW8gcNGpjfmPGFFFMr5buxPL8i5IDZw3V8z6GsivGjlIR9UbCbUa+A3O2fn28ZB1jRH6GpbPzz3KXX0B4dB04vh8fzKmw5+lrF2QprW9vNZXdyUCqk+NNVro9IhN5Mu2BOHifpzPYOoTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6y/NRyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6y/NRyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4452C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756295393;
	bh=8FqYFKMm0Gr6vq7N9GZF9i6WoTQX8TFAXgTNJoFOwUU=;
	h=To:Subject:From:Date:From;
	b=S6y/NRyPgC450rrpPIsTN7RtveOE0DJo6+R1Mpu0YOh/nhdrLkrF5goHBRdnGScZ0
	 k9Zh2FBaPgt1tdwpJAjPRHpwvpIzjaZUxOAG3UaZipLTBcJR1sIHy8iLgyYvhZbTeC
	 j1mbR/jbo5YqVliZYL6iDHkFcuqXofFUSwpeS6rmgXSstz5l1xEeqkEM78DjpwwvPK
	 ID66p2YjyWc0cqPW87HFM/AiYeI8LC6dda36UzeidRodXtPTrujX4Dn3Zgsh2NGBxj
	 jP3MIhc3gXuVkqfJdpTUKpxBO72sg1WzASliT459Xv+COWG3NjOkZlgdtNj8i5tuMP
	 OZFBUWwmfNIrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94912CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629539359.5129.7254603211640771833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2483331882f7a0503ca9c0b0e5815cfcfa7b26b4548e562143bbf878058c939
Date: Wed, 27 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756295393
