Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB419471CF3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788253834; cv=none; b=klomUF6s0UwJbSwTYRuTtTIWZ2duwksT6tnfoUaSrHO0PXVASqe9E/qThqTFdlYwWl6ojP4QDhvj7EgyXYtLOsABMvHJ4a04c2r1SgFIz6gE6C+KDjACbeT/2yfYtr9qlEXCWvi29+LgqX9gSROLEMFuwakI8N/pTYbXH1FoRLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788253834; c=relaxed/simple;
	bh=d18jQpQjsnj2aFlP7vrYjOusXLI/ZD6V2J3QEXf/9MQ=;
	h=To:Subject:From:Message-Id:Date; b=BptJ8X6t8+UfNUthFt/qeyspm+mQOLcODRa+g0NMa9MwcalEHoLFfTbcrPuSoyhEBUb2T6eTLTzQte6ZnmFjFFPlM12LywuVZ05xw/SCSZ2TXEswy5hw2rek2O3Tdg97RiIBcY4BQMm3Pb7DHLolrQlhOyJ6TKk64F5BT6JTIRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s55ZGgBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s55ZGgBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DDAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788253833;
	bh=d18jQpQjsnj2aFlP7vrYjOusXLI/ZD6V2J3QEXf/9MQ=;
	h=To:Subject:From:Date:From;
	b=s55ZGgBVcHRlhJwTKljSo7uCzDgFdSMavSE1FPlMXg0KbaA2Y4NkWLaXWke2PbTQ6
	 StyvBedxtJAkDKm0JU6qaOyMW5QFb4l4iVonaQQPkKW9vZw46IXd23wzydE+MjaQUQ
	 xHqR1jYJVwmUb04rEsDIS7pUp+cvjSjsjUxy9JYIqt+beJZzbKrhyD9Dq3dJjhmd/m
	 0GDDUuMQfSxDbrUeWs6UTLg+ggeGEUVnSp0h8m3wxx7WrmoLm5iZ8sSnjZZ48FN8EV
	 9Ceqm8g0bJ1AmUDuDouQCQDzE1nkiJyCCAhArR+QjBToTjQRyTjfRFXJdpRdyFpmKK
	 nEgDSLwJwFxPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE681C624C6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825383370.14479.6359375077053212593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7ae0fca220eb58f9ff824a53554cd614743deb8a5b0235df613dc838d66322
Date: Tue, 01 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788253833
