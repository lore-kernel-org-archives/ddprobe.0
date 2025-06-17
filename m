Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51932135A0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750180794; cv=none; b=Huk1frXYoLrWCusNLI1/bI2wQ8RueoRYaWmMFPqCK0ai/JBRbbNhu4G9hePUD4lmF3V8srCybMQClFMV6ik22CvwQ/oYVB+5iPmgturJsoucqB0a35Y3A3TQbA4faoV5Xj1j92OjXUdrqXSxJ4AlUsFFkgE8KYi7VTw6/AGt5Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750180794; c=relaxed/simple;
	bh=eSYsz3h5Wd9t4w5PIuHwtDFihWlp7Vq2rny7Yk37+Xo=;
	h=To:Subject:From:Message-Id:Date; b=dz7L7Q/XEBFNkiS3ZWe38YdmUBo09qOwMm66Fe2+pKABl0DOJdGxpxFzkdx3vmhGCYEZcrrVRyd/c9nvr9fXUyXvqbSzInfzXSQzv58iDa30uzKhC0FFrPfmNa3Vr8OWOrc8pJdH4pjesfZNqJ6WWf0eaxxw5uXs0WnggbIaXUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3XaKp9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3XaKp9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3EFC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750180793;
	bh=eSYsz3h5Wd9t4w5PIuHwtDFihWlp7Vq2rny7Yk37+Xo=;
	h=To:Subject:From:Date:From;
	b=d3XaKp9gLi1vGJ0P1mfH0jhcXD+14SIdl3HiBWpfbThdM26XjQl1/rAErV3TotmSp
	 EbMNA6tNMQhwB4412uQLSdZh1bPjX2GN2dqfJkcPtwW+0lDk86d4c/l1WwfVFSBF8J
	 8fLhH3+rkeEqqz/uIZp/76OTb8aT4cX981uIJEcq4UyKenQALLpqZjkAPDu/JeTjZ1
	 p5BmGa5aLvYbe99p+1oL+pomqC6wEPQJi+oSY91UJgWUkGXNjmqc0tFQ5LVI7BVTxo
	 A6HBpbB5yHc4SQMbwVtb/tIJ5RRH/s87cO0QDhhPvbionMLCI2G9uTuisXcYnN5Fkc
	 7iM+t/cqN2eHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FFAC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018079358.32416.18365633072375211748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb741bafc5134ce1f91c2a591f407a5387f2122e0acfaea02e4f32712c19bf5
Date: Tue, 17 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750180793
