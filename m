Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3302731BC89
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758056394; cv=none; b=BhntEE5LJIg+9Zb//YV2EjjadMPjtAdOmPPM2JcxveFO2+hkHbA3sN3f8a+TJpEpgmAcJlrEMpZe5HxqKig7WBngN8aGjUH7q0AjllkFAAPCxa+BawYDdMMldWDmgzzOJBrfPEPyhLh2BduDx6rBBGeamTCGb1MSlMxDoyhD4Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758056394; c=relaxed/simple;
	bh=ePOtUqpgzeoJEBHGjhke6mb1cazEsT8icsjVAOSJr7A=;
	h=To:Subject:From:Message-Id:Date; b=Sf6NrfeYyETt1LX+7+PJoEcWOtSRzQcBqrkkHw3EUTA/2uDtOWlZDDAKkck9/9PjjEwFd8hkFDgAy2aPTJVpTQolb6N1U/qZvXCo8n8lib1HoQHjUmXgOyt3mc10j5U1UDoT3/Q56ooxa3iXsdgmPWL4ixAyBWQ5cQb/GBryv4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyEQqFKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyEQqFKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B6C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758056393;
	bh=ePOtUqpgzeoJEBHGjhke6mb1cazEsT8icsjVAOSJr7A=;
	h=To:Subject:From:Date:From;
	b=IyEQqFKi7qHZ07H9n8W8pm8FLRS7UuPouEMqSwsYwjfQjZqhYYvgy328fO5URbUAu
	 ng+ZsMyuY+Aez9JBCFkDILk7grA9/7a+xN3ybfvlW/trK7+S3nftLvcP5kouP/DBmA
	 GPI+EYVw0RuVrwxmKkNshXgYKaP44KPVcfCfZwkptLPi5HdTaTjUgzGV5ku8+xR4tl
	 gTpJGLgjaJMuuY4I17/P/7pi9al8oYO2duPa+bLWXubsTcq3G6ReIGqQlsTR6hQOkh
	 1CKP81sS3anohy7Cs+ihaVz4DsqVW60pcAsCN5487UUbf5sJSuc0fR6ksTL8OtzR+Z
	 Xg1Um9Np/N8ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2ACAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805639357.6752.4194876564270569577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeffc842f258adcc7a22d1145377b2464ee3376120a2cd4d750d21e261513f5c
Date: Tue, 16 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758056393
