Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B377E46D2DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790751634; cv=none; b=K4Paq5WM8dLnOmNkv6mkrIPKUAn1urNYIEn8g/0nZ3b/0vVSTlb4Le/pxWeRhzXsS0yBO0+dFrNNv5+fSwJEetVe3kUrM7ZMsHtSxjNzDsT2ofvSTcjKguZxAYdEUFk0jxiOCJiWXoAcqC9DbJrR9ALpOjoPF/CvHYpWE14HxSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790751634; c=relaxed/simple;
	bh=7yPi6cz5pPVxFkFOHsUpZPyOZ3SxgMm0e+govzxUkY4=;
	h=To:Subject:From:Message-Id:Date; b=rO4fDQ8Q3Q5IBnVNJR0dFLn2aBJKo5em2BjoYZia50TBwowk9OElG+yxHPxALytPSUl7HDa1JNIcP2jFcZSaHSUbDti9IhofknJrn2DUAuKFM4ozDWzAxnmXMI/WSaEHI3p2Iu0E2Md3swPIUF1NkGRS11gLQgbJn5vx6MnY68s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hq9VS2Zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hq9VS2Zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84CCC4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790751633;
	bh=7yPi6cz5pPVxFkFOHsUpZPyOZ3SxgMm0e+govzxUkY4=;
	h=To:Subject:From:Date:From;
	b=Hq9VS2ZtDZDaDfyXpjcomkXyYQekUeNKuQw+2N1vKRBahSIWQaaCBaOr4Kvdqaq8n
	 RG9ij0+ktnQ4QDmLtfPgN5gE3kKQ+wo4gBJQqHRxtMBl6Y0At9z6CviXUwbwGcGp9Y
	 tgDI8qrClRjhqCUG3KYU70jFgSjfVVwUhphj8Izl17lzNOVGL1z5TUDfoF38CkbN1a
	 9BpyMz5HNeavG+g+/n1K6rFhP1TYHfNKZC79aKRaQWlBie9NRMkDHBEnba1bNYA6qW
	 vLa4lnIEAfPRlJqWVXI6VlwErTG2HRAB5idL4QvCIUVUMdMdjAu4Pjcztzhkn43uWV
	 ngt037z+UDNvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6574CA5FC2
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075163373.2542.14225303632957177111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b93abb34968937f7774871fd709d7f5ad9a3eb7e46fbbeac73fb7c6279407dd
Date: Wed, 30 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790751633
