Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239DC333439
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776578254; cv=none; b=C7k8GKmFi5VQZ3XfedP3AMqjrCwMqrsUaxSHvHdBJ0PianW9GfmCqIEGYGx3DjFvgYvhTg9D3vB0uy6ezQHSo3xfk6DO/Hc6ynt8I30JBuomLF/jzBAv+935sNZhDowwQM3yrDr15r5/PNh3jIzVgMIspW5wZ0EGSzxVqzTqkk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776578254; c=relaxed/simple;
	bh=/cPXZjG7kISg+Wb9mZRnZQfnfjlbuuy8btr9henYAm0=;
	h=To:Subject:From:Message-Id:Date; b=DhOLXlgVvcvK1ilYF1BrHKjG1ygc1O5cOZD2cKgVFOTKeMUvgZUVrqUcMfBgvrvtf/rGyaxN/2uNvHN6ZMNZmrxK1RV28X3I5UQrIai5I9kII4Fi897McotOMcYJf6BZR415EuCa3+IkyJhmtwOpfYOnxD/B9dU+M59vOq41lNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzBaVpZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzBaVpZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6C7C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776578253;
	bh=/cPXZjG7kISg+Wb9mZRnZQfnfjlbuuy8btr9henYAm0=;
	h=To:Subject:From:Date:From;
	b=bzBaVpZuO6JMGVdUDtaNbfk9W4I1QDtpIE1wouZv20HCbdlchFI+pnJbn5tk4tjbc
	 hYbJd24Kj1a56j5eexihM5faZq0rNIwM/dgfHLEGOGNVBHaXby0WShCMr/+EcMAt3b
	 LvzI09udJ7KOM4vAcTbYnDT/16e/qizq7OaCH7M7TuUvKUc5qwLoI3ye1K2i5u6bRa
	 bu1gOBZTzYITqZFuspjZiNEAS6AvvdDdCoZ0GeW4XhpX3b5Oiqp8O9rdqAmg+Zg7RF
	 159lSAHtR0G56sRU5lEsy9lzw4HD4MkYN2WVQlLPS9yOy0Dn9niUiGmoAP+C+Bkl6L
	 l9bphEp3ESdfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1A7EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657825368.2625.15945853555584704196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b71ed489dc3fb3c4c9d96b78343a162d5def5a148eb0248a3f7a98c20e5301d
Date: Sun, 19 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776578253
