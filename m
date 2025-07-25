Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151A92836A3
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753424394; cv=none; b=BmBAUHwcjuuVD4yf/R4fZNQEM14sFdUe11xai5Eqi1ueB+M8b6r6aFyiMsK5VOZhzahgCWHYcpaqKlraN5k5k0wdGRq2vfVj1pz3zuM+3S/e/2vGAubW7BXaKTargPJ1IFgc3DkocBBesbRPMK0wXBwjiKe/GnKEGSWhowTwVFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753424394; c=relaxed/simple;
	bh=1w0ToNC8Fk3CFWeicJp6mcNmwKqz/asx06abX1Cedtg=;
	h=To:Subject:From:Message-Id:Date; b=bWr248VvkKqvIaOrySTIfKIRnix4j1ZbVSYdrL0UFrXBFTlMF5QWkOP2yeuPfCVDqKY5/+iAJ4NTXh6vy1pf1YUpdb/GfbVW5JmHyXFcE9ueMB5cjViH3LoSKFC5HxcBdfkdE5LWku1BuZfTDCSzT8mjhtYDx2i1HbQXEyH63b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JThaGJD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JThaGJD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0776C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753424393;
	bh=1w0ToNC8Fk3CFWeicJp6mcNmwKqz/asx06abX1Cedtg=;
	h=To:Subject:From:Date:From;
	b=JThaGJD8N2k0g5pxZFZygT8QHGjdqxapKdBt3UVRGq+thyv3GqWd3pNFqRAfCrDvR
	 rkj/Kl0XSlC6z5A8AowU2DwJUDisO49saxaZMD+EH2VMe0OHhCjdElZzBhSGKmangf
	 aLkGlXlueG34q+90uo9DTXY7YX9F9QdCM6Nd2JJ6fxiTKTdHGxI6foHLu7R2FN/Bi4
	 oxj10Smd9LkRsTkicYdxuFHAfqNf34ny9yXBari4l9tD7C7lrPJJAMo5uecQJXnT5X
	 AlOYbfJ/V0AQUhg+OvWGjJcdezs97CIpe5YKRKYyfPg17SN9/Glo5T6Qd61914dxFC
	 xCT0fgV67O2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BAC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342439357.32626.15909768783467351406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9535dd0b2d2a18af92283a6891b4ddfc94c739fc446adeb396fc29257ff5daa
Date: Fri, 25 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753424393
