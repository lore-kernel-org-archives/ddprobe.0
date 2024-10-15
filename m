Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C81F8185
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729026954; cv=none; b=tDp9oWCfOuLbpzCH7NYNEEcIKira5wtATLbC32of97b8ot3aDF1j+LCtTVe9FkZAjOedzSbphYnbjOLlFHnHwY3wOhely/PbDV5FITGd0joNCSSDKncScgVXJ32RpEyiMnRD8m1odlG3Km+DzB3Qe1OGUI9nzxoqaDQIgf0c/XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729026954; c=relaxed/simple;
	bh=24lpAbSsWXmGf6cfX7bZPMOqI9JizUA3cSRiSywdByw=;
	h=To:Subject:From:Message-Id:Date; b=G/0s5ELGVQn4saG8ZB8TMc5OSjZ8NB5f2QPT3S/I//g6xF/EJ7kvRu+5bbx+OfXD4VBzyH9YR7dRtIiqEnj6uIwitgxu5pbiIEB3GHfnVYUNcSwQOAzE0I63qT1Cyn8lLwEGFqlCgSbpkanw2r85XlYZ2SH/HjRZzY+26qiPJaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbCE3mSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbCE3mSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEFEC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729026953;
	bh=24lpAbSsWXmGf6cfX7bZPMOqI9JizUA3cSRiSywdByw=;
	h=To:Subject:From:Date:From;
	b=RbCE3mSYUrT7K226zpRH09xhf9pa5tD2/yP8MHK5QAqmzFzfyFCk4s1mFVRNN7Oo7
	 ugeM+FAw2X0lI7BtZ8A6rBn+jGTgAv3YLwNazBQF1tG0mhR+VIPSGscTgOeWbgZI9R
	 1jLPXYdKK/48AI0l6XlKzOHTWUlsaKWEHncFq1knQWEKpmXQpd8aEtjjj2Eezvf7dP
	 5svA7Nc+IhpY9Wj3JNNHm+JRdSN0AWcjIWICZgadxyB67g0K3yC9cYG5GIuOFlp79T
	 6VLyHI9IwhV4qpdYnAIbqTKefD/zuij06OGVO6TU42zf6gtpwotxiY+vGPOO24cwXM
	 pTRNi6zgw9gWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4F9D1D876
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172902695361.28502.17121236149573277117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d273682a969cb580b76e609ad79108432e54e516c08cfb7c406dab67f383d6b1
Date: Tue, 15 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729026953
