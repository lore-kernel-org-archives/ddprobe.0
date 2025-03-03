Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ABA20E714
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741006134; cv=none; b=X/Ij/oGlQLlS1Ayv85VGK6jL5up4+j5oTHaNItzLpOg/HM1ol1Qe/t3nA583+yT63bkL6aP1HbEU6TctRlHZzKmbKwYX5S5jzxjIPCLa+EBAU3aWNk9NIKabWgdcFMmiWjxmuOrRTqyHhS2FVOEeKO5o+Opo88PKa/SoeySos8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741006134; c=relaxed/simple;
	bh=XTL9eg8TRRkLjeurtk6MQEu0yAuOMmwmyYvvLjtmpIQ=;
	h=To:Subject:From:Message-Id:Date; b=IggxpJKKLQeorEeuB9kTVSDODTuKYr+EL1KN/6250vN2CXaQrDVcW+k4byFFK4cLXOGAgjVETmNpMS9OQKTwoS1VG25Rt6VLSNPqnuAIQ5g5Sa/AJrlkiTtM0bRO+Sl9NPufAtcQRfzunlxtXfdVofY6EA2llpi6VRXhkVHDHt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k00+qJt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k00+qJt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8667C4CEE6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741006133;
	bh=XTL9eg8TRRkLjeurtk6MQEu0yAuOMmwmyYvvLjtmpIQ=;
	h=To:Subject:From:Date:From;
	b=k00+qJt3vKGYlhxSEbvUClo4/ZoO6HOJlaeqMYI4ma9a0GLBhseMkk3zQhE1zrYpO
	 hnHRiL+Npb5kF7v80QshXe4ir1CFsnYtR2bXQ1ncXMe/yAacOd5OEtVOMzjo85iDgi
	 /F4C49mBVblJ0tTCr+RefGvtM9v29LYZ7LOEIS8rbMLYio/clxCDOa9roiXaTqJci0
	 ZYidqRn3EB+zjq1Up8Dvq8yY26uC4zCgqmzQUJSkC29sM3BwBJmSJRBl+k5UNRjSmL
	 mKLZC1b6oywXZA0rICnUCsOtdLvnpTB9Ii4MD3Ol/nF1fq+PfD3jij1S0DaHNOmqHk
	 rcP3N5JLDaO1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F51C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174100613359.17167.17190183380939929018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd367083fb1d71d2d4b926580e1852ac9ed756aeda6b19bf0f5ecaa35e4e731
Date: Mon, 03 Mar 2025 12:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741006133
