Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34348846D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735952154; cv=none; b=C46KhOB+h7lH9EdqzPBoQLoVDHC3CcEA/jsarzJ6ZDTstv+q8NSZWSWeaw3A1xKCbwZWNkx3gSulyHHZ23VjyTmU99edh7Byh68RrYpBwmlpMX4P8mksqs0e66kqYl99UrPUcLf4rTsFjAWjzmWKSgUt+CDr+VpN/7YeeH/3IFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735952154; c=relaxed/simple;
	bh=XFdm/T81axF27Z555AFL6Y4OC2c7rRMrKBhFDoALf5U=;
	h=To:Subject:From:Message-Id:Date; b=CamsgLgxi5VlvZXn/WWFenb7scoMoSmvbKHuyCP3bziZI4eJovuaDsah1he3X/MSva0TCwyzEPTtbDZo0XIBSEZzAGNuWB+PuOJqgaYsGoZogPg7l43I0EBKDbHEzw9tDtNAeDyQOFMmCWYGypVM/zHlPxmVivl+T6mVg0SD73k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+spJLG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+spJLG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB1C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735952153;
	bh=XFdm/T81axF27Z555AFL6Y4OC2c7rRMrKBhFDoALf5U=;
	h=To:Subject:From:Date:From;
	b=Y+spJLG3G3lvB6pSXlBRiVsx8N7VH+UUa+UoN73LIXN4gbiCvHHtQngd38nby2BdJ
	 avH8Tx5+euKjTzntse5Sy9uaBDsst93Hhc9gtSGnTbw2mplQxcx+7sKLALX4yZTFD/
	 +W41YiyFCfzBrg9ifT4xzl2B8BdiicXBz+pY2V/sO1vNMKm83BnUMwIk7I8HwN/7ys
	 4aYVy1cm0F329Zb1y+IzMAFlqf9k4FfRe+NltsiAAcxhZFVBXuwmbMeEakV1OkrJBg
	 rUP2CtXMVz8n5B42ABmUPR+iv1lrBCzTHmUSypUf3udI/ADWjy2xAi97gQkdVYrZYE
	 lEAHSTY1/IGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98093E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595215360.17641.16327225141355141479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4499afd79e70879f96bff92b43dabf86ef1b006503cbb415176616b656a29242
Date: Sat, 04 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735952153
