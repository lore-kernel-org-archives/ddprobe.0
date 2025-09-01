Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AD3311959
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756723194; cv=none; b=dHyOYKgK24uEBe72QofupN1NNh2eK1Fgc1kxKg8D/ClMz5AlmBgZJWjLmXxFfN3uLJk4hO3UpjU6r+qPMhqChMRaGefht3Oh9IV5GD1ug4I3iVYQMhAldtuzvWnHSFg9W61ovwCksyGoIZjGprmGuYmna++SllM28Kj8As4rk6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756723194; c=relaxed/simple;
	bh=pK1hq1nyEQ5O3YY5ePxmGr4RGHaJLFIqNOg4dfXrZ+o=;
	h=To:Subject:From:Message-Id:Date; b=Pd9AzqjEH1quMSBehU8/xHyZnMnsNZ+vuC6HSDActYV22U/Z9kqnvJDk24tK3wHhNRGThkBAq4Md0KhQXpucF1xXDUpHQHnG7Qju7eCe3hNcJKXsYYqinA2PmDlZ8BtP4RBCo5OPGwilgp34f3BiznH3GFeVbuFabMc51LjEk3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8d+uUyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8d+uUyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20A7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756723193;
	bh=pK1hq1nyEQ5O3YY5ePxmGr4RGHaJLFIqNOg4dfXrZ+o=;
	h=To:Subject:From:Date:From;
	b=f8d+uUyVV2yljDz4YyuMt7xln8LQYxrUN0NnWBpuCit1dejrWg4pWAvvlKzGWxRB9
	 hB6L8uuAVTNpBf04eY/hvW/x+QedZGujBxc5y1WAX0hfJNjId1E2Dd1zXgPnpxYlGy
	 9rKf0JS5T8MDYX0OPVYPa0GpZVnlJSCuGeZM6M64IRy/qJN17DxfDn5DVc/nm+Yy0z
	 JzzxeJT3sJyd5ud7BPSNTOsUhT/X3ckEIvktkeNrQ9awDOAjiOj8doFAxtGqnAhtEH
	 /1574kSFGxMQmIMtI0vOAAAwRNk7akmuDrLPwHMBiRZCv5yyLbi6LpubQgwxeFLQ0t
	 6TBIeiaATSGyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D59CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672319373.14358.6938883277035795269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5d41086045e9dab4ae3055352db69d1ab21c119dbbd2ab95d8c098e99508b9
Date: Mon, 01 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756723193
