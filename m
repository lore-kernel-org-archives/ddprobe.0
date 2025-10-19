Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C3B3596D
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760882994; cv=none; b=B+dnhVb09kfpPOCMBl4yLk7oQRDDhFbIFN8bUfk8PsEDgcN9PvV/Y/JnEkXuAFGehvzOfU5gVNdsGtpEPoStCsJwSiA3zCxk/SqmUG1ZfZ7ZbyNs4hIQkj29gn6MrAwRzVTeb4mX1e+6rL2jy1wJwF3EEe+Do1IxFlW7YAoDFok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760882994; c=relaxed/simple;
	bh=O/ZCvVCU36FYQw1i25SurBcl3PpN0sBqY6m8A7r4r9I=;
	h=To:Subject:From:Message-Id:Date; b=o/bjeW98j6NbB7OZbDHv9EbOCVhSqVVOPNVWGVXctbCgqLJlTA7oprHbRw1QMb7ab383vewpC2RmSPKixZPcembQ1UXhUu37/86JFu0nCmDhsypVAtVgznFzUbFfhE0ISJvTACAQWH8OUCzgHNdDnssHqbwhW4wAW16QrRPIL60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmDUDGS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmDUDGS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A64C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760882993;
	bh=O/ZCvVCU36FYQw1i25SurBcl3PpN0sBqY6m8A7r4r9I=;
	h=To:Subject:From:Date:From;
	b=XmDUDGS5JzdRsCkjcvsGnhCrTwm8R/ptpuhQJmoaFeBOHahOWFleEIGnXmTLJpQna
	 58ycjmYCcKtwaz1AhbuUfp3KAEE8U0i/sHPiWi7b+2enJ0JTnQmUjkV9lVh9e7JU5c
	 VlBbhv6pr/Aq5MjZbePEj9Lwo9JLHPXQni0wwe2DUcq3UROJj/Vm+YvNXaFScXUE6R
	 ysQbmuI0AovGIFeBSh9ps7xgHga/PiSN270UFg/TZ/FjFwwuQ0d0iuSUE/dsIMaHtk
	 TjSKwPqFvQjA/rCPD2YoXoPTo146KkyvR69I8XF6f02L2M9hnlyrHXlNTX7v1xHfNH
	 sqzVPfHJRGHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E9ACCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088299359.21401.17959073081236916486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9cf6e820641d623d744d63be09770ac2400dc66c7db84176ef301c01b93670
Date: Sun, 19 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760882993
