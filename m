Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506711E7C24
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742851194; cv=none; b=bRTTbsiWZdNo9Z6Aa38e3lRvFewccNg+Ec6j4e+LemybaZDV/WwLdRvMX5vdUCaQfoL9fuJUDPUhkKzJm+xIubNhNFJ8XWL/dWKpz1ixMLxmNrMsZ8v/QJaXgmmSdyiZiAA7c1cA6P5lZk8zPxK0FC9g2mT+MzvNYZNT55uSldc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742851194; c=relaxed/simple;
	bh=xkUwVwXZuXKI3YDwesAituohNOruW9xiAxnKPHxsSpQ=;
	h=To:Subject:From:Message-Id:Date; b=RwaIuJVDDcdZijDeASzNyk9NuZipC1A4l24y32+e6QGqu1nNwIaZQs6iVMGgw0wsCvcBKft5joIKgrc/oXgtfEza5cl/Cmeod9+OHAefp7AZUXVN8rD3qzq9zRQGJmfe7nT6wbfkXgErsxaJWkT49oJjFLyo7oll7jKL7Tf42Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNLTywg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNLTywg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC52C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742851193;
	bh=xkUwVwXZuXKI3YDwesAituohNOruW9xiAxnKPHxsSpQ=;
	h=To:Subject:From:Date:From;
	b=oNLTywg8kDau7mgB9m8C50M+OFP3Zkh+qsFTDPHrfIOe+SoRIgIv4i2TiZUo+zu3l
	 RyIetxCe5jgF2Yyhm/RL16HBhWBE3Ld4xqE4VMpY9wZLofN2iQtsJxFntn9e6IVtul
	 00YAjOC0Q5GTiB9z4eco7N3P8/IsHGgMz5AAA4gZU4iPQX5svdRyVvJbJlb2v995JB
	 qIGokWyF/tp8yBM/chW6j/K86VDrpGdbBzilfwunnEB2fx9AXo7lPovQaxGCteDFPQ
	 +AT0iP14nGBfYIt8lwc91oPfzqLt3/gX+walapmx3mbX05BMDYQUMWXFp9PB7NMOO3
	 emc1Z+cJQxNXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3979C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285119365.17695.16340881706923455372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbf958ada9db89c7979cd442141db93932049a46806d10cb653c398fb96cc66
Date: Mon, 24 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742851193
