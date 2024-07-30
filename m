Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C63C881E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722302754; cv=none; b=BpuCbMs45llPDrriPq3u5MHmjOZa6WC1s8CHEdPWarYtRl5Si7ATFooAdxNRgrG28FeB/qV+EQmpMzn6bzEudZMd2/AFfk2ivKh+D8Ou9mIuAGwabgCZi+dudvxbiG041AnF+CQ1xwbtzhWIUUBBDdvZtvxItqG1nw95mI7mpbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722302754; c=relaxed/simple;
	bh=tkxlV/OwiO7Mzs2OB+vwFo1Id8BGdalcGvUGePu+IK0=;
	h=To:Subject:From:Message-Id:Date; b=BSzYwqbe89bEEjTbmguXQbeZIEkEH9Qlbi7dpnypkbJtyI1uMRBg3BDft59PwVZHm4GFPHVO1SSWFO8s8i7QxbIptQmLTz1uBp7zRYUmlh62r5s5pZTSgOahHKnoATEnjVb/vIsPvONBSpZsbTqjxtXa81WRYmcllFswQKS7EII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aat0wm4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aat0wm4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF5CC32786
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722302753;
	bh=tkxlV/OwiO7Mzs2OB+vwFo1Id8BGdalcGvUGePu+IK0=;
	h=To:Subject:From:Date:From;
	b=Aat0wm4b0wNMLCNHwtH6hK3RA6Occ9n2txQGvwlheM6PAXGap3Mbw0BUvdW0C4nh6
	 /VzcPYJJstYGmhfQp4noPUh4VnSGSSqJLeOxMvcNGwIGEjeC5Ak0fBDkBpfKZX69/C
	 aOH3r4BZb0zfcTFyLx/eSWNS/oF2FqXlihBdZ8JWmMk2aQVzPHb5p7ZcPyEyzfq84N
	 ailY4w7VhPpCykNQ4YBHmZd0BspnNOF8Qi7Wz4MnKhpbAGNrlR/sG8MN4ukNcDnNJQ
	 0ztkMD8m+0vSFqJUZXoaXTWoqDPFzXcd9wtd+omDuouvoCynqu43CrWJ7eS+5MEwTz
	 gVZR9stMNNAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95154C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172230275360.17168.9870866314927570173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac28bf0085dcad44a4a09f3a4e9f31035eb3aaa74c404e14a56a95b7b0608c5
Date: Tue, 30 Jul 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722302753
