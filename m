Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBB3337E92
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758112194; cv=none; b=JBtIPRtYw4ABRm22lZV57UaWNnxQEKtMhEdGvYaH/oFPpZckl4nMOtrHrUE0mOtmJBWk8zJ/hI7DIKMUCpnnNPG7B/wkj4S4aSXVTC8PSP5xD6K3I0lHlDzoqxQJ5VJ0W/qTvx1lX6kncH7jTiojq/AKLMRmQSG/7UxXKfjduyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758112194; c=relaxed/simple;
	bh=pV8b7r0cNGjoPEZgGfpVa5LQr3XPr7jNqybGFsBq32s=;
	h=To:Subject:From:Message-Id:Date; b=h7LSS4eeB9oysXqKc7R7edz32UM9EwRtVq8CZjXdmdxnqQBPoEIqety8PL1/iSaFc0rLq7bOQ+CKKzU5OcHYm6aalUklZiNZZucbheXGmvUf6cB0XcJmt3GPoiCTG/tylv9QxThL3o6MODuS6QyebpHh1gGQk09SFq37Abmgv7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHxZfcxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHxZfcxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0705C4CEFA
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758112193;
	bh=pV8b7r0cNGjoPEZgGfpVa5LQr3XPr7jNqybGFsBq32s=;
	h=To:Subject:From:Date:From;
	b=eHxZfcxSuSVybhGjJCjTJdCLEUdcvSbYRd7uYIM0yK+tG3JkKMPo+EKbXe2t3T6T/
	 UQMudE65HMMj6GdVlUI1f8BCPGlZDVkHOjCKO8MHFU+hkvhvAMa/9GQS3KVIMK401f
	 s5YF4W7zD91ALd9gHLEnsHMlrW+25SX8M393SBXE4Zpln/9oo8OqTZl6XA8AOIApoN
	 cf0u18kTojzvqFwKQrWGYbPPp3ROEHQrHDUzBERAon03c3WZDZA9j+q3q8bZhAQstP
	 4t8fErRfzuSyA21Vl8XtREAA/7jHrL16aOnI/KpP3bhlB4d0UXHlkyFcSjMuO/CAUg
	 EFstuiSEEt9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F953CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811219358.11061.13599076741641209096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16540bb6d0bb0d928acd5c561bdc5cb14e93c9eb9db03ea0c7e8880740cac55
Date: Wed, 17 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758112193
