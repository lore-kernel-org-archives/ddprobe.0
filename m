Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4243BC68D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790536234; cv=none; b=S8xNUOzPq1LQSb55ErTUqBpdrLbuWEGZmupX+WaPKWvZSv/S5qx7N5CcopyAFciJD7f8PJnqBbzjNrWj3Y/qlMdEo46eOzkGvUSky3ZJejPqyec0KCPKWjQHFHakSS7TalXGg6eRHUaD+i9UH0gLkaMYQV0t0oNASMh8Vke2DD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790536234; c=relaxed/simple;
	bh=/dPCiMpa/T1CNIHbVz0CeHxEX6h/91gJsDEIE9BFejg=;
	h=To:Subject:From:Message-Id:Date; b=nBcOAV3yMDQr2kNxpNlLV+QUyzxKTSAGMV96nQ8d4r19sTjhfouu/ngE3iZ8fanrOCVr0FjNukKJwhOjukyWhVIFmKcg+T1cJAgDN/iLVlfBZpfQ2dpAevVsTQKjAoZGupjkXmqonVcmJaWUPVaOtcplZk18MyKRztWO07xBVZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pws7aMbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pws7aMbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE1FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790536233;
	bh=/dPCiMpa/T1CNIHbVz0CeHxEX6h/91gJsDEIE9BFejg=;
	h=To:Subject:From:Date:From;
	b=Pws7aMbNq0xLYgyu50aeMLooU/JgAneTja7Jd31SKXTq+yT736VKKPBS7+tDz7YDM
	 Js5MWwZYtNbWSHR1numupZMzMVEGey9srbuoVXxgsGOs739Rt/g/yrfLhRT3x9FVnX
	 NriGRohoKsHVpi2GE3phLN1edxFPxoQun2GNT/rTQsYpCqFCKlon7cQoLC1L6PU1rf
	 YNQb3uevR09uLRImbwL6FhthU3jZFavFVpYpwDCoXToyiAWpP6241KNUaLeXUxExW1
	 CW7h2JDVc5z2/AxNUZ2rf6aThCYUBGhg/rm9rQmuBBL9Lhmu1WjF8h8pz+uvWz3lo1
	 np1aggp+Y2D5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E18C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053623374.29433.10513600000983792549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0de373b03fd611cf9ecbcbdaeb843bfdb6dd8787b584fb956ad3ecf70b5f062
Date: Sun, 27 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790536233
