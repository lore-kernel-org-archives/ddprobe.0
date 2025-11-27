Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9B52550A4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764212574; cv=none; b=iTbRKO9nf8MI2Dk6gkbJYyV+dIDFFMZVM7Yz3PqTuEl2tihz2ZVFOHtho5kekiNliCahYwU+Rz0cjwQ1QYlxfCYZ2CQPWkXb/DUxZb2p2mddM93XGtw4wc9aUSaUFMtmZoRvFz05BbNrMEzhyZytR3c4dJFlFJB93UDbALTFcnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764212574; c=relaxed/simple;
	bh=G4WSobofTUdEEwUiJq9Gy51DRV+dBnDiT9VgHWOncfo=;
	h=To:Subject:From:Message-Id:Date; b=cSPWNa0ooyGa3uCdglXVo+IzPzljLQ1N50V0h6RCKCP0gruOra1WsnNfl3ohUtFyhY0h7VGR6TvHd9kMeZBs6mJoXaW4F5VDQYh4nk8W/fiAKzWOkk+EJ4UMG3yHxnqkZApGr284wgP2suZ0YaDG/L6n34B81/TSO2PBU1nkvro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBYC2ve1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBYC2ve1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A613EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764212573;
	bh=G4WSobofTUdEEwUiJq9Gy51DRV+dBnDiT9VgHWOncfo=;
	h=To:Subject:From:Date:From;
	b=lBYC2ve1sdNvxnlWffp5fAAPpCZdrca4BDzQf7oN+XJ2yE2tPSG2WStNYEzNHqVeo
	 sqRhIguyeOi5jmXI8Ct9CGlpg9KpvjtBUKn8Sb1KI/i35zha9RJYodbKXysTDZ9T7p
	 3BTKZxki7CuncoBSmhd3wAxQ2kE49GWkEf6aVdIZ2mbEkNapjA+RdI9Jqh5CvLEhtn
	 lP44OGHrE+1DyvnLKxZceXNfZOzZfME3d4GnBaa9Iu5/e0J8ntjLDXRv8bwuc0gl+L
	 Ty+m2Cs7DIDkU1DR+uktrSvANmyMMQymYYrof5sCxpwo0gZSQy4jlQ3O5rtZLWRJ9p
	 XuDdswgXMcQEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C4AD116F1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421257359.31891.1461439183858328347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d432f0dfb84f0e292f0e2a69fb7de141104af3e0977c9d4fc487e1348132d9
Date: Thu, 27 Nov 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764212573
