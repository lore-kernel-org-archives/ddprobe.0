Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369C02E11A6
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759846194; cv=none; b=OeEwx9ASpRPQafr5WlhUxUXWMDFj2fBagUmw9Wj6Cq5Ui3kvyjn6xIqnDDpfD8yvTyjAzlWtPidkDIcxfSQHqdoWNLOUrDRkF7nXuU04VUm6lHFUzfMEq8mwlVLlRd90H3NgJA8LTwhNimybB/jd7/90uEOoMMal7hZ3JEXCYEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759846194; c=relaxed/simple;
	bh=Yf9J6320JKnnMYlgiuW/ipWQ79o8xO8pEHzux5FXCkU=;
	h=To:Subject:From:Message-Id:Date; b=Cmz7tvGo7rjvrRBXTk97DkNm2L4sz4HdYlZlS/8CLJ172a4g+xPnKWWldNPTnx/AWLQEzFFUYEiPKmdckRZFasixQkcE8GB2RJ2NeYKAt2mqpQWsuK7vZIFfJX4PY8++3KyWIrMgDv1j8lYT9Y+IXf7G7oRcmtDrI9UYWqG4skU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdMGKDW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdMGKDW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A657DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759846193;
	bh=Yf9J6320JKnnMYlgiuW/ipWQ79o8xO8pEHzux5FXCkU=;
	h=To:Subject:From:Date:From;
	b=tdMGKDW6Iwrn4tQHZ+jcofabdYBCknjqjL68LvCB7mVB49awtqs+RGX7zBeizrrJu
	 3Gunuc6sNArlnP+M2VMHHl4eglUvysdGaYIaTp5GgfldtJw1/r5PeF8KFGuMYI0/w+
	 Ojo8C5H82XfAn2NZ3CIwKm6ZJHIAjE0L11/l2NF2/Duib0/9X+XuzJAYWvE6uHM65p
	 J6qg3tgfF7O2ws7+SrakRRVoxFIM+aG1ulhzCAbvj6nhH+Wo+/nAldceUxuY8aN6DE
	 1NTIj4C21LB4UOcS5X13YFlwPLGVT7QGL01RUvxGcubhJSb79Ldp180b/A5qm2mLAf
	 gb5PG781jQH0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA2CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984619358.7868.12042475596673086861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d78b183fd216c75f6cb31ae6b471e490a411355353b757424f7fa8e42420e03
Date: Tue, 07 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759846193
