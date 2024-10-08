Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220E020B20
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728411354; cv=none; b=FJyWVLrcZ9P6h2zJtYKl/nCAlQI/HpjjP6Xm4n5cYaI9+Nlx6O1akfR2y4aR4DcRxc8h/i8tRd0HjIgsbBojiVFqBVAbTWBiFj8WwhPw0HZI1HQR04K2o8Igpsk3nGYp8lz0FbqARP26hXt5nJiSf4qCYQtFXCTVv6AJn7rehY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728411354; c=relaxed/simple;
	bh=lOFC51Ph+ZH1EGqaw0i8JonJEm8X/qD/fbngeDjDLKs=;
	h=To:Subject:From:Message-Id:Date; b=iFCbRBBMriemC2Sx2K3sSSfeEA+fQIqHuHbLyykcdNus09dXm4tykiDUGxoYQ+eS4at1D7oDghhN3gQ2K6pKPGM8Cb9ZEZhyaNeZJGaJhV0WH7lYHef0ksy1hjgWzMGU/NGJBs3W4DbV8kngvEjMhXx2IePXh07QpAn/d91p5/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePNBsGmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePNBsGmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD80C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728411353;
	bh=lOFC51Ph+ZH1EGqaw0i8JonJEm8X/qD/fbngeDjDLKs=;
	h=To:Subject:From:Date:From;
	b=ePNBsGmjgbu022eBYWRD17HLLRbgYm+c+f0ClU2JVUT9MEbXa25Ij/odMaX4ScPqr
	 FtuZ4kAM8iWUzMMyaqXgZB4JV7zshAyZkIxHGismISp25rjTFiZOR4JvTFYgwzRPJM
	 K9SbwFAIun7VH+YG6/DD2rt81ghufDgM8T/7lWlrm+thNXLKXTICJijNzDafxUHdXO
	 aeihlsT6zqq2yU9Iu49jBNIU1VU4Etm34ctHc4OhaVa7HnpKU+EQM3toD4/6WOiJjT
	 3wf69lse48e338b0soRaOe4Ob84gJJlbORFeKDcPCEuz3keAplxOil9MNwIxoiKRS2
	 7wbpiqluE9crQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9590ACEFC38
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841135360.19871.1239670916390874853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf99a3f7e1d42e9fb9407c8a57b1c6cd19d5f2c666ed54a90aaa182140856373
Date: Tue, 08 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728411353
