Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB421303C8B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765624973; cv=none; b=EEbT9GKI8EgICXVLPzrTKrUWp3CxSpsl0QEZrWQTqyRcAakLVvynTe/7zJJKJZLaYcPOdLM5w/ux5ZFt+mFVrmOTpKe6WaPu41UKGluz3harAdiF8/Gr64fyNs2k0VJVGPcb73jYWQGponY+vxwEB0FbJ+aDRsfRrvLTG5SrKz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765624973; c=relaxed/simple;
	bh=aztZnTQBqSzYVXJRTbIqTAy1wwGH6ZlpV3UtPrBXVls=;
	h=To:Subject:From:Message-Id:Date; b=DzAOL8mF7R+Yh5YA312sAfL1I/p3Flv5UIAU+SIeP4xDmDXJEJgWOPVGZfRhW9Ge5Sy2bn2p/y6D1KGsaW2DcUmCEpZ+Ot43bWBLK84OMf6e1I9kIjTgEmLTny/56cVYR330xW4wvbFBtciR6AJrA1FctcBHhDFsOq4lvLSrIxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sinFfZsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sinFfZsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB9BC4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765624973;
	bh=aztZnTQBqSzYVXJRTbIqTAy1wwGH6ZlpV3UtPrBXVls=;
	h=To:Subject:From:Date:From;
	b=sinFfZsi4zkBZiyF/cSQf5bG3D5P8WXEs/UxPGtpy35sKzqsq1SMd3ac41wPYtJaJ
	 I4w6PqlnuwWI7UHorEgcPyvsfI3Gip/QhMUne2ZoPJB3YiP9UV3iapOpeGfTBiK/MK
	 3cD0aJUZYA1V+oi9Ul3x7k0TtrJPl4jPgsy9bsVFeIq3E/HCyyJ1L448DXavj9Bk/c
	 c93sU1I9C6LlPwnvOWNf9B0b499/xybiTcIVpjCvyQFjUGaEbN7SeVB8fDlTVTFKBZ
	 m7GEDwMeaxApEFqI+UTfDfVpzP39tJQCtMMJ5Knt5bCC/Nkl4dfxHpyyRJlSXAEaAT
	 IrekbHAhnTo7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE5D5AE45
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562497358.22417.1210961689479735783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc47da6dcd89f123c11a7fd0729d7c398991a0920ba219323a282de1a9b4838b
Date: Sat, 13 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765624973
