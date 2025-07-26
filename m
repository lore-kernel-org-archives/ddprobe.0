Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073C22E3700
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753533595; cv=none; b=WMSiLHR9L6hQXbVzi0YOtAl8JQObS4E1i4+yPcw+Wy07MzbmBPs6B1YXlCFkQeKvaIda7mE0TSsZZP95k2OB6+RkTZWpEkuZ+DqTDRTGoaMr94J70iZfDuaAq30AHn7SyjUSffos9F8A/frIRQVXO7OLbT00XYc5cd54zKl09Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753533595; c=relaxed/simple;
	bh=hQM9iZg4g5OXPCvmpLbRmMpRJkyWa16bpBn9hHFThNM=;
	h=To:Subject:From:Message-Id:Date; b=JBNTiqHOQ8xpO/rQ8Z7PsA/N7AnKJHhF4W7MF9Gq6TDHnaJ3mVFqfCpS9mX+4vjOw6HiBCxncNnMPdNlwem06O9XtRNSbH5/6HHoqsA2/ruyAb3wTBbpN4vCjyg0en8qT3JLe3iXhDejMmpggVJYqv4yiwpao8jak5debpFCVnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KL2/+fme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KL2/+fme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753533593;
	bh=hQM9iZg4g5OXPCvmpLbRmMpRJkyWa16bpBn9hHFThNM=;
	h=To:Subject:From:Date:From;
	b=KL2/+fmeL++ZwN3O6LP/UVujlkSY+PffXU9YGFDaDLGx5O5VgyikS6Ont6SzPYtA4
	 cGaCZhJzerio0DQGsrtLhZM2FQQxGuNkJebzxOTxz+t4gOAiBYcp40ZxQDZdSprmdg
	 vWsfqGCE5GIGNuP7yM2dyO33BLwN1gZUPWJirsvMNE2JtgVPOxKMw+NpDijjgrnnsQ
	 K6ZqBegNNDJhFK1lK1Cnd0y78vLsU6wYkbPMFSIbH31iJelsFmw1fUz/zNb0xyRsv7
	 LrBBokHD05oY3SpD6aRfeeWRhVHSkfc/yrBQyUfitIbJWa/0ImQe2uuT0GU31ie3t6
	 RFZt94L1pGzFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90095C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353359358.8658.5113252274971029208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f17d967e2e23444dc46d42a3c51eea980a94a1066479b10339a53032f8810e
Date: Sat, 26 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753533593
