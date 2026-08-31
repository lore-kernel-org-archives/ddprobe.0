Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D753DA7F6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788168034; cv=none; b=ZlGD1sFIyQjnYM6ISGdqaInqVJXdsMwhvzxtgvzOBiSuWWCbDGRCw6IGwLVTgQuPfotwZqbiw54+MsR/p1aDvgrGpHZsUOz+pcvTi5peH7E/M7bSprxkWHCB5SzZwiM7kDZ547Ug7rqKWMx6JFfUjQP1OweAxrNIxf7JQKL8DWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788168034; c=relaxed/simple;
	bh=c0PNfH2QcCOQZfy4huiwFVAEh7z9WiNzjUh6I4C+oas=;
	h=To:Subject:From:Message-Id:Date; b=KjK1hF82XgPrq82VgYMNzug87RvEqVgK476pQRfkkBPGa4kO+TacI/VmXTJ4Ibdtam/AIXd3KEBKj1RhONnT5sLv68trmASfGNpXQQmZjvYdlGC0B8Bq9GDWZDSneZVBcKJ2n66DKParDGZK8JdhMkRFvfEpWU3/iydXf8sGKrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Geo252bO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Geo252bO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30D7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788168033;
	bh=c0PNfH2QcCOQZfy4huiwFVAEh7z9WiNzjUh6I4C+oas=;
	h=To:Subject:From:Date:From;
	b=Geo252bO7ywF6c2gdHBuGomrOwCms6VRPHTyYQcPnMAC/NmyTwrv0mV12SGGUeFZX
	 dedf0rEWpMm7IItAjy0xz91j0NrhFkmFkxiDYtuyg6ywhw9X4s7FALVmB/61dK27/Z
	 OckGeRMmGtEF+TAI0706IxmKxrQcvpKvE1MszkcBjKbhtbctVbwYFDW+N4heVtilvJ
	 i5RSmszfX7ADdSiuS017iInP9yd29YmcHJj56o3m2NWtAgk+ZNwQqkw2Nc4jpf79eE
	 cB0fw8EavCGZBgu4fGz5ZJkfLvvb9c9PVVnpYCuT4fjncHf+5rWDGxyyC3A3EhiGwb
	 7Cl0cmYJSXrFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB52CC61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816803369.5232.14919459404490616794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93b2e510d5caf67c593c980420255598062945aca92627c72a82d697ef08ffc
Date: Mon, 31 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788168033
