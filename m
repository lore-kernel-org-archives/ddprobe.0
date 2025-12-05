Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6F43B8D6F
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764974574; cv=none; b=aSNGIv6O80+IWH+iugiD9Eue+qNntORZ2bG29/egs3Q2MIFRRreyd/9aB4mbhGHnzpCdsoSwqiOu0gPzNcVYdjVXHPSw7d1pLrkE/IOlG5AGIMN6yqI94fMventDdgKrgabC+2eDGO8XiRRc0IKikB1j0EvXZwmQOM1qJEmtHYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764974574; c=relaxed/simple;
	bh=rgEMm03knRdpP4QrExLoSVnk+OVHH4SKjkkYJMPGb3E=;
	h=To:Subject:From:Message-Id:Date; b=lS89tgABKLNsPmtXRiCV2tVuuYXPXvfEVBGGdYJZ863sWof84YdmHcbmx9wsTUG7aJrgraedx1EC8H4jIJpvVbhvJ5PDFKs29oD6/X87lshLy4+7omgr55YNAJilfOwJhxVsMpDDKaACBspqntR9LJr+lhRr14gMHcu1fVz9RME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFz0PlNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFz0PlNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A630CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764974573;
	bh=rgEMm03knRdpP4QrExLoSVnk+OVHH4SKjkkYJMPGb3E=;
	h=To:Subject:From:Date:From;
	b=vFz0PlNUu4tMmWgihjXy3s++3YRpQzWxy/wdifIfi2SBQEicrboSNPC1vDCu6iXFZ
	 H3EvP/ysq5cl6JDnwJUziwVW3LMzED62dJfGJuKUKfxwWRSzNex+yhP0KIewKj6UZq
	 kBNXyxjCCXayi2SDfaxeDE9afmtsy2VwJ6aHBQpnB3MxycoaEnlBVkBUpAlyE2VDZO
	 d60u3vXx4f0lWfQtavzp+lBX6GyMDwHtXYmIhwvz/Hy+3V9K8lDwGeP2O9V4x5+eOG
	 7ASGUAsW/ujaOGi6/hviivTIJ3/0Ho3rg2naOXzhGokYdv74y2Q/Xm8/xL4XM1940r
	 z89rYzuBy6HcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBAD374AE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497457359.21030.8795194594449530713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9a1b28fa5db85fe130e7e66affefbfc2d7178bd49550c92f17fdf64c3ae10d
Date: Fri, 05 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764974573
