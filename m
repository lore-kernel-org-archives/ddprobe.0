Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087251114
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758833994; cv=none; b=avpUj/Zv2LjE9cN0+cOc3NCqkUrv7iTypgYygWyuwtCtZy0tjIvULs+PBrf1DtB/OvO/AXjbNbMyQVfvo1B3DP9Er2Tquz0TqPcc9ey1uq0Rg6V0xdXFosYy4c+vLID1vTE5JlzkjzoKBC5IW8v1hCcInSf70oxBb9jTQjY6+FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758833994; c=relaxed/simple;
	bh=q7cwf3BI9AOUYjgbK22dGhJYmfrQXCF8Vxg78TC/fCM=;
	h=To:Subject:From:Message-Id:Date; b=qZUI3LeSwlkXdyd9z7u5MdajmzMGpHGInQ/f+8QAKcDh/ZXohmhGc23oFZWhkXn1Ny8SD7UhpeMlfKdDtcB9KqPJcjmbpQTMC6jqZzFwpFbP6bCDzBUl/q4NMOdBax+lXTrbskndpbKiQPPvnuuqpSYOitZASm2dxbswtbGasjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO4HnqS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO4HnqS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C8DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758833993;
	bh=q7cwf3BI9AOUYjgbK22dGhJYmfrQXCF8Vxg78TC/fCM=;
	h=To:Subject:From:Date:From;
	b=vO4HnqS0Rj2a0LDAeEsm9E86cBYu6jyPXEM3N1Ck8sdbZ/Px0ytnKs6xuoKVAQsKv
	 nc3IDpF/D+yKAqAkW4hchslBDC0NIGwlFvCqyidLYnMkott6Kn9Y7fIKEuZj9Wqa8t
	 En1W8040vRn4sacfnvRBE3Gm7oE2iFUHDvL1nBOAep99LB0KV3ONJAhiKl+SWXY085
	 KplbU1Xv9ErT3Vz1/GVtIB3BHdVGmMU1Sjg9KkO1Zac0S9YhGMO6E+Yw+EJtuiqFgZ
	 WdVcUh1XwACG0aI9UTI9wfHAkq6XS/JqaBOuej3KCXeULwLF6gJfhDCSG9/4UXrdOk
	 HUMfpsvMY3ybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955BBCAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883399358.12265.4153854648613850938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b29262ca928e830b48c95bbf52ca1abf8ac88e18e64c84edafcfca385b1dfd5
Date: Thu, 25 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758833993
