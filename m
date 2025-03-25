Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394F31F0E5B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742938194; cv=none; b=moHhOVFGmWMR6JQbCLmSH0P25vBlX6Sq8VMAte641JfNzE3gQIM+bgd/3Wkb/tQB2LcOKW+zVuKmjBgYBEYH3PEhwgZQ77dWJxLkkYSvucS7IGy0x6hgt+3TXyUWWeDlypQURb9NmQgh2QbgITAdP0y0YOpHgFP3m7QxoRyCH4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742938194; c=relaxed/simple;
	bh=fdv7EJNQFOA6tpnLiRWum7Gjhxte56+Nu3DnDgeFO5A=;
	h=To:Subject:From:Message-Id:Date; b=ealSvwjKbPQEKTReQ3LER3QJCORtAgMni6KR+C99ivxoO61nhYGbdM/Z58ExYoDxQL7VeqWYpe794QkBer8Glll8iIimSOOlJJHXfZP7MofInzpUqjISs0We62H4yhtgR0jbxjNNJsbpS9cUyLGijHUclkh8mii5HQMk3ViQWJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqX5TXjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqX5TXjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB04C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742938193;
	bh=fdv7EJNQFOA6tpnLiRWum7Gjhxte56+Nu3DnDgeFO5A=;
	h=To:Subject:From:Date:From;
	b=VqX5TXjnvEeRH2Nt2lwvRlgrlS8BIomG7EuX0MbYR57Ie83aY4JW5Q2eCbRxzhWzz
	 wQebyXMhiMZpUu3uIDeOWKKFAUBrBFgxnFc+Yq4pDJVeE4h3ZahLluZC31tMC5BluC
	 J4RxJIbfLr09rp9r58QUgfoE4FRoszsGUDBTNE3r9wESKyoBEwldxq3PIHD6o5DFmQ
	 r3xprUa+7rjAuEFsIuVGL3pBKjk/ta8wCdJZ4udiDzScvjUH4pIJNQSGgRn0d3F5aj
	 s9dnH/h8utni3pu5tYOvakov5nf9MdW3KqKkk+pVSZoxNRm+pFulew3YxFW1XeZ90A
	 fchxglxW67SuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0594C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293819363.15112.6569511235063908936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09152f4a70b0e37d1208483da36813831ce155dc89a73e51fe21c7031be76b58
Date: Tue, 25 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742938193
