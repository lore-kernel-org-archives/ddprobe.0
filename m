Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C0D429037
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784107714; cv=none; b=cckWl13zF6PAYvrnW24+s9ZQYQTu4netOpsqv2MdT5GIW50bYFZafCtQXwRcC0eVhSWQh4u0hkvPwa8Z/wdDJZguUSakbhgiGmiac3Lc9k71nsNlrv7HHY5Dwr6u3/ELBflUyi7gcVZi6Bt7B6aHE7yUp375u8zMjD5ymMlhM0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784107714; c=relaxed/simple;
	bh=Tb12TApZyMcbx/vCmxo/Mm0QPU55b+JF0PjWGfRgwEI=;
	h=To:Subject:From:Message-Id:Date; b=Rxsn6jl/csh4dqWIwHXxI/i5IpgbftAoFgtrjLGuvvCXiLu2eAdNqnk0bGW1LV6MjyoNBkeV2fguhaxW/DW6XAQYQV4m6EcqY8+eVwO1aEmLEBGwDOMoj+G6d/w4CcqcgBKmZEYsVXoTLQvD+gFOSlRAfOKsnTK22OwmiVLq+X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJzafVRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJzafVRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3FAC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784107713;
	bh=Tb12TApZyMcbx/vCmxo/Mm0QPU55b+JF0PjWGfRgwEI=;
	h=To:Subject:From:Date:From;
	b=YJzafVRl4j2Y2bGedlOOXvztb1eEQIHOBJsIx1AO/3tAxQKe0DztjMoa4lq+oni5d
	 BEjYDWkXJ6uPX0bnBYomJtqFtij0k+hC51x5HbForJHVhELpZqofdqIrf/iFPn0KSA
	 uXnZcBWIsaWBMPEXTnHnoOpdTF6JiSqf1spX5eKfcEgneNGr1SYVdnrGSmx2HYPWOE
	 GKUv8bvgGSs3+UvAR0pGca65XIHV/YTHCA32ZH22Txxyy25NwiZ86Giy9zUDLkWuLn
	 Ry1sF6cfrNwPi2Q+ppTm++TZRQ27Cegi6ibfPMnCfaNNqSe5f1B6HwI0UDdjCEkVeO
	 FYIWAU3O4klzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9C7C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410771369.5110.7909913097042780168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe2abe06e792655e95ccec612b49f36f6ee6969509c648ce864a0e28e83e3bb
Date: Wed, 15 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784107713
