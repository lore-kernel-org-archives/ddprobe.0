Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D9C382F28
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789321834; cv=none; b=kQMZ0AguHf3AsNsQ8dL7Ouwu+/mql+8sr8H1fH7y+lLOOSWJVewm4VcOLbjyQaY6jR8NjJrx4Hh3stoVSpRTTosaTTyODHjlcj7j7wDkqSj5Ef1z02WODS+zpHalvXRqRFmPAqTTvniBKdqptxi3yatnvTfqWY3Uj9ZaC1/w+RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789321834; c=relaxed/simple;
	bh=4HeynAD/+tT0P/+9HZUwIsfxBPH9ulW4AFN+StxOYKQ=;
	h=To:Subject:From:Message-Id:Date; b=gyxMqxNKpe4B7RXxFmI5wwbYXneAN9UGl5dyKOpfGuZ1pqM5ydT3jwQ9iwwg0rVwIyxYWwh8ClfNPD14wHYeV2/GxvXd/i2CerH+HeZcW8YzpCSezwCKzi3Pm9DLAssHyE7eQQ+8+39fG21KLPed3/CAVp8ft8dTLCg+xXDpeG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvJZF3oJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvJZF3oJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19D4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789321833;
	bh=4HeynAD/+tT0P/+9HZUwIsfxBPH9ulW4AFN+StxOYKQ=;
	h=To:Subject:From:Date:From;
	b=ZvJZF3oJIFbjH3ogGMyENg55kUJSQ4AeTHtmruy9AQ+HeG9bAsRhneurk2RSznxik
	 C6lSd7ZIuMwq1syYPiwlCTw6Yg4U8kz3MdKCBYDRSUhpOPPjaP5f6/fpLvc8guGVgh
	 nEjMFyPIdeg8flKB+hubqRal5y7eRKmJPMUiUsWpKjmlK+BgUCguSRjlX+akuALWiG
	 djMQHCXbaxkQ0B+LcUSxYVeQAKY76wTnweuyEj3B49o59EQa6etUZ85/Lp9DrBrzf0
	 hXR5oK4wglZwHo34G8Unm6rUM4ryNPxrxP0TZoGhqlVif8HWbsUjF92ukHQ5vt1K00
	 rbtwoL7z454MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC16EC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932183368.19131.13142819064443680726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e94749441b97d0b42237594ef604c1ffb6385da53eec718bf6236eb07173bb
Date: Sun, 13 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789321833
