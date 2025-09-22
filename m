Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1072D2FFFB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758540594; cv=none; b=opQEtyDNg7GsU6jJmWx9zpTdwW/iD46BnOK6Y8INSNggZzBu9IlSE2cb79lkPOgsRgPfcLgHuJpLpZmCdDkpvJq+FtIP3zGZjNvnUZqPgtydzZXRg5Lgy+BCyqtLJOb091fF8aSNVZFJp4KjTP1NQjHdxcoK39+uXGbaK6FcRcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758540594; c=relaxed/simple;
	bh=8S/xVKraoW45vLIu8CKUwJwjRGDu/iLOBtxBgoK6Bn0=;
	h=To:Subject:From:Message-Id:Date; b=PAv//pPmJU6WVCfIQ/+wZK+eKX8kSJdc8nwC3kNdj2cDNx4DXGtbGCinpiXtmsi4R6dI9nHfpgJHPnHW7Yts0gwXjXgGdS8lKB1dn/o7OLJoVmKp0YrRA43f9jJRehSj5ewx1ZWx8korI/NRhrGGG/Pd4qTL8rxJYk3C2fwK56U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL4l4SUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL4l4SUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC0DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758540593;
	bh=8S/xVKraoW45vLIu8CKUwJwjRGDu/iLOBtxBgoK6Bn0=;
	h=To:Subject:From:Date:From;
	b=XL4l4SUbmfxiwRe38SgMUInDX+OKG1ye7oEqrjNW+PQsT99Hd/4F7HQgam+W4KiJz
	 /z+jNRNsxI0kdOfXIqiRAKbMg9RAaLgZ+wH2hMl8OYEsTvOXzpzWgynXHCE88rpZ/4
	 6gQGLGizv4QeVs0T4PCM14EpYWW51QL+hv7BgdDw5VJoaDjqZPefqTf443EivSB3fb
	 JyAAdl4BpOFauurQAwPHLhF1oy3BwGAFB2qvKpvjMpztBeotQ2ogVLXKH6/gKXn7xt
	 R8tDgliIDSaQ8vBHofe0SGytE3WlWUf66M5kcj0sW+u9PLu6Z+xKcrAwCh+YZsqEJ7
	 l3nWijuCyPdsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FECAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854059357.25471.4823509870049656415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68aa5a8e7bf2f3690efbc5d56caab403573454bba08d9031a1bb2b75219940c5
Date: Mon, 22 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758540593
