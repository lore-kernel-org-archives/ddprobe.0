Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653BD44210D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784805634; cv=none; b=bmOBI8+e2FRVk7I0Xky864tGSg2YRkpIY7I7N6VneDDmX869HiQIbOIEi+qVELL7QR9cI450DdFm7fuaGe+v0pvrVSUe1KpQ+G1OjsZYkjUv1ZuPaXoxQPGGpevQ07RsXIcc7KZazZHQ0HnX20eA9rVR5NGv/n/ZRnihJAyaXCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784805634; c=relaxed/simple;
	bh=1IU7tdQ/Jx7ZS8+z1O/U0+G8/U7ILDFYee+SdgOhauY=;
	h=To:Subject:From:Message-Id:Date; b=XJbKi+iFu84DFSJ9XHu+OC4la+yscYD0LLGiOo+x+FvTWIjHCVAigYox0wegqBi9zhh9B64OnItwJ8gJAass3h4jbJOKMAA2jUZzrp2F1IfOnB3HSDXtyOUtnA8qCkgaaAKHwBO4OUyhPT2WbDton2EkMJ2lSyQNiNMX54GH3CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJVkQ5Dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJVkQ5Dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E96C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784805633;
	bh=1IU7tdQ/Jx7ZS8+z1O/U0+G8/U7ILDFYee+SdgOhauY=;
	h=To:Subject:From:Date:From;
	b=OJVkQ5DpWZiVJkm+OQbHzRn8IMU8hXHpop8tp6IMu31s8qDvk/dAjuwg1DJQ6iefm
	 xNFxbvmpq7NjQoF3lyemBt+g44DT8bILPSgKquFRkWxP2keO7ixGnioO+pVfdQcL/S
	 i2/tF4udUdQrvC3pH067QDmhy1U40I80MZ657FPlrMekWjpQPXkyTV616RG7pBpYtR
	 puIB/WtJkcMc81p0NCHnsU6hGTRlaCab7xTQaeDPzOs8upYS5FPETFrga6n9Pe5MDU
	 s+NvHK3aacKlngi71jI02kDTQgfIQZQfWMkDbLeTz/cfg7BcY52RsG6vvONwT2Gxs/
	 tY+2gpW+S36Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0849C531CF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480563370.25594.13805716110225013025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568c565e6f6de829d2209a629d8855bab04b7a4ba1d34205f8cd0615b5782057
Date: Thu, 23 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784805633
