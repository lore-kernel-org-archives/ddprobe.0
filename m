Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2EEA34
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716429203; cv=none; b=XpyE0N2gD6jfarxJxwzotFRVWAgJr8QnhW6YIGpL7LV584w1HE1lUK4pHBgcPvMklbxLCsKsSFugtgoQPgEnWOHeGsCSgV1U/unMLFwc4YfhZTtiZc7sE/kDq5jG1QO5v2VuznNtJN32PrLEeZFIEl9Bf+IAXYXifxC5+LE0lzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716429203; c=relaxed/simple;
	bh=vI0FEVe+fMVXjQx0zGXC8p7++/PYiN6ftTGLBpJIxWE=;
	h=To:Subject:From:Message-Id:Date; b=N1HRYqrjmYTH8aA9oBjNnMY1/I7fYBg2AYe+VvxcLJU+kHn9crAIgczyRSo4jgPu0utSkk9DxkU7XG/RVAqOuFbkQpDhMmfnIkaF95TGA808nWn6EFAWgo/xsrjvciCaE8c0NCsUpXn8iVN3FcCVmht8sH2wtGIU9HlW99Vdx+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifOpxbLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifOpxbLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B3AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716429202;
	bh=vI0FEVe+fMVXjQx0zGXC8p7++/PYiN6ftTGLBpJIxWE=;
	h=To:Subject:From:Date:From;
	b=ifOpxbLXzA43jqgJENwkKvxavvX6am5FYfi75ONgLaPbk6O5OFfLT8MONUfFgPvvx
	 kEaDdZQn43K8BtopzRcSslZkEoK/aulX3AaFjLkGJaJBhzfRIW+aaat66ZmyVpA8sJ
	 G+Nu/jEtmaUI5apks/b+u+oO05Lg/O1owS8y6I6YqgBIkNISWnPkzWihKNjkBFEU3U
	 6ekQKeLRyGEMfSqwfHy9IufocC6EbT/KImrbmbtt1M4qrbSa1sOQEwKC4G0tqDQ0bv
	 nRnZK42GEmW4ZvHVi6A9HXna20ev4qVIxDqhiEgLXdjVp7N2AKdLrOEfuKsj7Au+lt
	 mU+R/TRXEF4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C87C25B78
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171642920276.4895.10707543845840915865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5d501d701680ea0e08cb86ca811016b8cfe9f5e1a349f206ca5832c8602e3d
Date: Thu, 23 May 2024 01:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716429202
