Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03CB296BA0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755857393; cv=none; b=Dp4Uo/obXgt8bka65ZuJSHgY6VtpugqJFqW1zXTadWJlPsWtw03uNsmyIN73kUv6JQ4qUFxin1poclwICnHML/dhAyj9OKhna/tq2cWc5lYFnw+mmgIxyPmKWcCnX39cNl42eDamyvBxVXylppxv8YyqJlyM3LSNY6/31T6NS3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755857393; c=relaxed/simple;
	bh=iwDBl+ll+Ae0PVPpLT7om1tHMRo58LgthwehcTIu4Xk=;
	h=To:Subject:From:Message-Id:Date; b=Yb0v+x1AJ40S+yhF7P2BflbseYgu59YWUUegawcm2wsOMOmWafziLOzxbDzPmsr0bFZlpDYq0hgwBb+ZF5KyqAqsHokzypjmpnKHE0TDawAnDBtroCp5TQjkxuhwWgHmslpg4gDmXDfbjAOgl+UgiVSF4dkGBk64Z4Wvk8+VOh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZVRBksS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZVRBksS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C990C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755857393;
	bh=iwDBl+ll+Ae0PVPpLT7om1tHMRo58LgthwehcTIu4Xk=;
	h=To:Subject:From:Date:From;
	b=QZVRBksSekRwER0KohEFJ+4y97r9cDQG5fYAipFFT3hg4MZ2iX5SE+dYUH9PiL+Dt
	 X1qbgv+KF/S/a1W2opyP6ZmbO0CWmt+OPZ2AWVp0jGisbUChJx4wdQpoYXWlj/AOEY
	 vU1zH/zudkYoPY++zqCjauqMwZlSIG54Tt1JaDpi2VHBP1GRuE04P2DwHAPQipa9Hm
	 +avHQRN5VSW6cH//F8bjjwNUsAFFqaxUwmm3UpDFIRW99KY9UcmQSx1MIwhXDCX4Uu
	 xA9RDyqU5ehOhI9JhSuS9OstDxBsEUTMvVSBhW+Ovt8oViqjWaXBmEdxwvXbQwfJVQ
	 iBywH/OSML9ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED26CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585739357.31393.3004629778232571317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def720e6f2d15b5edf9fb675f402b41af5b8805800706d30d992b38ff6d2001e
Date: Fri, 22 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755857393
