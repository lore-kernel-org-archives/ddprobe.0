Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F052641FC
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787812234; cv=none; b=qiNSN+oHGkRmuP44y1sO1Nrr4Yp5pQr7cZmBzrOMIyyTLFo85Nrm2TPxuJxozo5UvFvU80IQNlZwd0osm/RLraWSYl/LbjgO+ybJ8fcohx1zeSuoXmrOxcQ9WmuaNT7gERqqwogF3BDMP79fC+M5dNwE3NOfp6J4Nf+YXDu4Wuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787812234; c=relaxed/simple;
	bh=a+gr90/MQsR7tH12ODD49B0787/2NTVWIgmzEnJYxDU=;
	h=To:Subject:From:Message-Id:Date; b=G5mPOk2O3H2ZV4z3YcNImMbxIbk30vcaDQqV4Y+Unl5gWFBSZ0TE6YKJCpgfKbPYGwvGO94GZuWzkmgEuX3LHvgg3qH90b1O1jHdEHc3U/Ce6bmbIQK5qH3ia0NHYasigpNQ9iXjc5GFELLc5w2UVhfM8VQr+NqnEkdnieIscBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OE42NnGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OE42NnGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DD9C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787812233;
	bh=a+gr90/MQsR7tH12ODD49B0787/2NTVWIgmzEnJYxDU=;
	h=To:Subject:From:Date:From;
	b=OE42NnGGk+4tfFB7SSPQKYH3jRzwftY7vDsuwoRhblNCEg6AL/LQ2UhdCoGBZ36nV
	 OJpERAfaKMqXiqBCYCq56E5+yCMulIEwrKCCOivtiGXBydjgGE4UYXgraYGlWQe/I+
	 wA9HwHMvw3wpdPyShog7pADvL/dg5HQc+O3Oy3wSrEdTU4UqhsSY+tODtwsRydQ56g
	 C0Zxb0vH2MEdJzikbEEDlyNneEr1sgs2OIg/y3eOglBWM8s9T02oz52c0hVqaSbRcL
	 MKWv9Nn85NkIFf5N2vq20wiwFP1UfNOu17zUFLhAtpQ16a6gNVif4HHe1LVvanh7YX
	 837qf3RsPzU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE865C5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781223370.32683.4477658689377422505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701a28b0267889da06909b3f6cb00732c4d776b316fd63583240b475000212a8
Date: Thu, 27 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787812233
