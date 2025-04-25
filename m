Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3BC2586EC
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745587794; cv=none; b=EE06rZW+2ZydWpT0CQcw4p2ZfePYsVToSWo+FfAdSI+AXuhwkd2ec85etQDHRByB4FLa474qW32IgCglWm5WC8VH5F8afeAd14MEX5mS+UnYZk+OY23QfUWNmqgcOScOgEeIlwAs8+nkakVADxxjpAAIJ6TXFXuUuPuH8pbe7Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745587794; c=relaxed/simple;
	bh=UML8WHo9XlviVp2wjw0KMVP9umoDowNUpJfVn/ECIv8=;
	h=To:Subject:From:Message-Id:Date; b=puODCYMfH9B0QZYW7elAVlA1IQ7yJbTQVFmqrEeGPbKIpnuysgmYHQLIW8s9S/n94cAanWwq9wnAxh7TjRXaFHZ18hH4V1z02szqbXXm95f4HGw4XhD7hugzfyWSf8xrqkr0SWPLrPAk/lLu4Fst5mYH/upNbsMjsS5qEo0G3x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsUghCvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsUghCvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D96EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745587793;
	bh=UML8WHo9XlviVp2wjw0KMVP9umoDowNUpJfVn/ECIv8=;
	h=To:Subject:From:Date:From;
	b=YsUghCvHz/m40Zml1ckToF34OO/gbNUeNt+V64xENEiKu9FZ5J87zuV58B7biaeE9
	 569uOEIC/w+0LlgQoAB3XC0SjPYXaCrmkfCBaVMdurbNrA5yQ1yO2V4Wa91zUP27bw
	 hg+Wvn6IoM8ey1jgH3trbuIrYp2/XiwXcYXsREXKYF+2Qa9LXfURf4HkIZiiKJPKK+
	 r10QrahhggsVgy3b7ujJWSkE6/K05Gi5CPcOaIfd200B3BkIbSVIDPGieQlQNXgQzS
	 RtptnijaeRwfehaQlucDth3iBz9t0ukvQQBccNEKFIQdYSl45kidgRYaN1WlZpwVUt
	 TvcxKARYes1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D4C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558779357.24549.13282839333919122327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9911ec2f197b9b68cc4526f259db0dfdaf5b208d26074a2464eaf53cedb13897
Date: Fri, 25 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745587793
