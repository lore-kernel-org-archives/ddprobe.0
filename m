Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4498460
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733192754; cv=none; b=inqcWZYmMOaPzSI+/kn5qhpE84VfAOg0k++qJq+Ck18Qj9lJF6gSAyrDE0HXX6DPLejkghvXSa7q8N2PD4Xwc6jYob08fUF2gRPzTptvRezIJESKXo/SikNk7u5BiFa5ZO/awUGROkP4uK54wCeeJnzhUgeNshmyGf6rs7N/4X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733192754; c=relaxed/simple;
	bh=C19JrRIC/NmK8hyiEiVnQo4Oj2HEv4x2ZFVIoTVoVP4=;
	h=To:Subject:From:Message-Id:Date; b=u8khDCgwFV1OxbonmjEyzt1DSXlzHfQWwphqlyCLAw/ZxJ61KsPJkaEghXTnmymFTUfooIjtNmtlrwdfwBdvqj9EPeuUKIaESDU2IdebvYRaHJKO9TfIohqSVxrDWpUhxnX6ILxNjt68QCt8hneZ4RAXoN2IAf1Li6eXheVShNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjsnNGEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjsnNGEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3954C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733192753;
	bh=C19JrRIC/NmK8hyiEiVnQo4Oj2HEv4x2ZFVIoTVoVP4=;
	h=To:Subject:From:Date:From;
	b=YjsnNGEXg2unmbdk57G9rbTQ1B3i2I9tNvfjxOxOGDuz4iNVeOdP65ZQjMGuq0UpD
	 FvUOEDp0CeP9xitmFBNcPTTCtJAFiBR1NZv3SAZRPKH3F/AA+fUhJ1xe/skBPM7uoF
	 VpEgH5X7l7Jx0E6CI+ax5toRAXYBxM5x26PdPZoqi3aR/A1TvEOYmf2GJGMJH+QeKV
	 TNw26WYOxYeLuvA66DkmnGLphihVzfCik0NQ0dacjuhb+pGF5hoVHKDFdWtUycSSHD
	 mQleVXLfas9/p4UmFpaFhn9jzzJNNIjF9VxVC/cUhyDmNsauGE1O+/1Td/VHZ2c2Lg
	 3rileKtVzcTtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB68E6C5E5
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173319275360.5468.6635116030083073613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a95258d56cd93438a38481fc82f4ff4c795e73b8deadd753963354469a91dd2
Date: Tue, 03 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733192753
