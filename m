Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199C927470
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766535234; cv=none; b=F8sSwWkDRC/Sl/8l/LyUWtkrVmqjMZrYsAWr31HzyL2aQ2bKoKF235XQ7AZr4ZptpDG1f1BB3eryZvi/aylufOANWQUgdLNVe1s+SfFxZ6KnoqPTYeLzYlCwmuZtSlehjZaK0mLYZL+NcjM8COtgM8DMPFP3CtD60e8r0Bme2TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766535234; c=relaxed/simple;
	bh=Gw5lXEkPqTT5ywHpJHjVAxXeVPZKa8+pXYW5Tyv9qYw=;
	h=To:Subject:From:Message-Id:Date; b=CIkx9TU3Ji7D4G5nDxAwv+Wq6HJgGsTnRNMFtxHydLpVdABLp3rsugeVbXrq4Qjr/EIgvXSmBDfBDj4wva3OGv9hCpkVzesGK0RsnlYcwFv2vqa9Sqz/P0NnwlvHjDa/LOH3jCxpN8QVDIepftZfLAsMOMMpLfv/j/Jqeq6o1+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2T+JNl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2T+JNl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A315FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766535233;
	bh=Gw5lXEkPqTT5ywHpJHjVAxXeVPZKa8+pXYW5Tyv9qYw=;
	h=To:Subject:From:Date:From;
	b=g2T+JNl6uqACzXCaz8/r52VhfhrgMRFkmT9jNNaakA1cSJQAo4wJ4qbZglkqWNtCo
	 mv5PxhfQstlX8unHzP6Vt50+6WiIaYEEDPzICM7+aO97Uyi72FlUvgtB8catFYpWdD
	 VyVu7Hl7SYf4NfHQPM5OwRgEzU1jAGYwtxnAq0aDegEF8DBUHnp7mSbbVtH4n70nPf
	 Rl6qKVrZ+BJNIPjCUkrrdbWnxJYckUD9pJvXYxTJwI38bCAMahIMlxpdPcWJP+ozgB
	 m5jwy2tZn/kHE/R36zU2TunDw2Mlj3K7WQYYFo1pz/NMnvGLyLqYl9uvnZDE8eg9zE
	 TYJg3lkNIzrow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9207DE6FE26
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653523357.3988.10188175844302102632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d041fe1581e5fd0ef2a2019b8497c78f150fe8fadd631cf4779d03f4e04c5b
Date: Wed, 24 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766535233
