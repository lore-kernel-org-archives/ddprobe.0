Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C13215699E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720529783; cv=none; b=UodOWARBqWMkRBE9XoSxET1XmczDmTC5jy39UFUc0hViFlLo6KBvvAjHYnBmEHeiDS7p5+q6oTQSfg+zlt5d+9dWLF25oyisGZq4qa8alfQiFVTW5dw/Fc//OhPBferLe3I48nkyyqkh4134Kt+m8pQ3iIIMVEHefVtJy/XMyDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720529783; c=relaxed/simple;
	bh=AnOOkxL3LUeDDiRAvVpLJpu2RiSexZT5fl93vwq2Edw=;
	h=To:Subject:From:Message-Id:Date; b=R8RPbMVJwtZ99ydSuCJEtDtaXplg8XKPb6b89GMZ4mBspWJI4uhIKUBzVfTM7sK0SwXwku+W46OcHNQNn0HG+MVMG+0AKb1XxX8I3D6ZvL3w4waRh0Mr+7nAFPNUiumJvv8OPza7f5aUt34iaev4NyrJpRArUPKE/gs5XJp/p8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOUw+BNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOUw+BNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CC7C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720529782;
	bh=AnOOkxL3LUeDDiRAvVpLJpu2RiSexZT5fl93vwq2Edw=;
	h=To:Subject:From:Date:From;
	b=kOUw+BNKg1RwUtJ6j+olIP6HV2st/iyRY+250hcluz11JaVEyFbYg435+khtmVXev
	 WTAUA2seceehDQhaYk5PcEuPQl1Wk+J+biWYgus51vJnG8Wdj5Lt1rnrYSwGeyKQTZ
	 Irynm2Ge1UvphXeYngUBl0jUSFouCKcujttSwvoyIXG1QBlzQ3aZF294Pq5CqtfOmB
	 6UdoCiEfP56I3BInkRLXgaULJj8NVeAsKLO5a7cxwhqj+kwcEo8ioHxb41CnvJGKnn
	 cip9PxkcJF+YM5QvZQhQD3ROaPr8CMLEpVIw4XRfhyXIvjSQ8401qOMiKbXdvAWtwo
	 jrQ8uPV4OLE6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4769C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052978279.6588.444642929032324927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc42421723088d99bcfbde9f0e7277a3eaa91fcfe41a285e71f5729b3f79156d
Date: Tue, 09 Jul 2024 12:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720529782
