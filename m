Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36284B676
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736156154; cv=none; b=N736s9J15vra1W4CQiJlJ90No7XlgfrnKA3Bze/6IGFVSiQYlnJ9afSjMZPoVgxalLprkRY8L9hduaiDMgCMpe4y/eFslI8HhG6r35+2w5SEG8Xl449J16pYext3uMriKNmezZAq3QdG6rPGVPAa7JwIQbdLhjqxru9aMxbeSSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736156154; c=relaxed/simple;
	bh=uyaWuW01cD3CEtUv2W9Ye+huuugUakKovUsxp3F7Yjo=;
	h=To:Subject:From:Message-Id:Date; b=TGLjqt0e1ojdBXoU41k0K62SXhnuPOTj9vK7zkMBWNIlDe91G7MBVq+S9x1+tZaW48S6X6QpbR214I6B8GSzAj2amnzkGbDcC1zUANefo4nwH7limYJA5wSjkSYBWKC6kJSO+uZ7XJNyBXoPu6K7l8RP4dO94LtEyXoGFYWmmvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqcEKJj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqcEKJj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90C4C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736156153;
	bh=uyaWuW01cD3CEtUv2W9Ye+huuugUakKovUsxp3F7Yjo=;
	h=To:Subject:From:Date:From;
	b=DqcEKJj3Ha3fU+GhaPB8PHHj4RRJS1DYyL/A85FnRSZxa3aC4oLYbPMF+/93MKASr
	 qeCfucD7DJbK8hBX4h4igb/kaQ6/1Bj4v5OvJpmBO7f3qY1jG9s7gEk8TeKraxfIWV
	 YGKvlaF6BC1ke/+GbIPyyCeDhfAnZd7mqXkmInUvjf4ooVuHNgjZsxsvMWPPv3oF/D
	 45Z241ynyjQ04BxF30UTaApjQk9A3nW/7nLdo2CLdOoUiF+vqjQ/N8lsaQZVjTF3qD
	 TShTjTXVLvv6ETlRNQH3j0S0wY6JNPuslTA24SsFSTpkjtwAWXBVQG4prsuKW8KPs/
	 zGDknwjyIkFVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914EAE77199
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615615358.31585.13419448080135845432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb49e51b8fb6612fb3347773c3b1941f783f539cac44ec28ba6ee5e9fc7cd8e3
Date: Mon, 06 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736156153
