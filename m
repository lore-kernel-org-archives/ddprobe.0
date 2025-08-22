Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1548A279798
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755841194; cv=none; b=nPv4G7osX0JzaQsCAPnw1tft5ea3Xfv7+N59ZN96h5Eph4Nze/okCS+KVvlP8Tc5jXSyg8XKZd/gzLdsTy5chbYT1qHcszHDNizycp7Jah93qNdDks4WpoMJKV917iACKc+JBqoOCnH1OCitjHMwPrKGor76Y95fpd76Kj+fbHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755841194; c=relaxed/simple;
	bh=Bc4AUyowxu6C5uKmC7Lwt9mD1F/JvYmmQx35HuckhnU=;
	h=To:Subject:From:Message-Id:Date; b=HVvLt5Cn0lAMawowFC6ACDYfK61X4MB14Tz3kmF7NiORt1uM2UDFmCsUshUcU1ibeD969C+LpidrjlzSeSutCYHUbrpnXCUunU2w1E5AN4s6KdP3lm/YshlEoYJAABpWSKPzXOeg9pt2KFzAgaS8mj5RezuKxWDYlyERrCC3XO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=modEirZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="modEirZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A002DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755841193;
	bh=Bc4AUyowxu6C5uKmC7Lwt9mD1F/JvYmmQx35HuckhnU=;
	h=To:Subject:From:Date:From;
	b=modEirZbsYBjUyDC4cFOCs64WHFI0Ps+diOEao3ffJ4ypQ2jSkErmWQU2m5Q824Yz
	 LZK4mD7JOWe3i5dbq9zhYLkrhqb8Wqlmw4pmryafFStunDhcBH8g0VfbBw1uigXHBv
	 mUjjaCN8Osf6+b8BsZYuqRp9K9zsjb9dpvXjJh/9DZ+NYTAEygjR30NOhIluEFWmZS
	 mgxdZb/G0a6h+GtKJiJykFjOhpIeIruxkDrvoBwld7Ta8i1oME+ezcbkkOwh0q4gT5
	 qk1yiB0BNT4G46DcGMnwoiypoj5Z7Y/YtOdGppFFSjhANOFzwqXmcIGAm8a5TBchSo
	 tL5eS/W5z9oPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D4CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584119358.25595.12457225721963850949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e79ffca173d574d6e086647b82479167f5d95005f00c752c7e50b5571648b06
Date: Fri, 22 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755841193
