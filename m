Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDDA185B5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738922154; cv=none; b=qRDKKmlWXO8KBMjZeR+FtjRVdsh9dRqf9hzlaXD/v07+2+qSMGnQ5JHG5G8AtwF21FbtBb5az9JIA3d09/i5QDG1IxhnC6HthndDuLoi+z4++6UoaBvJAgxBJWmfVcImfo5mHUJStT2OKgftcpHcx414OCcGX/j3WmndulVRrSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738922154; c=relaxed/simple;
	bh=shOblgAKE9U+Na3pWb3HO8V0p20jOjJmfuHvPmhBS3U=;
	h=To:Subject:From:Message-Id:Date; b=OLaVCz7epEqwyfWlW5ivcnfDqm2X113WpdA9JknKdvVmva9/JFzuurdzBbEZTxG6ayBPp3qpXZQR/nsP6KDL8LXfbSjb2g0aPYXbPRkfeHhRqkfSaXx3CNu63AIBCazM78mxJfNxYzDC1rajcTgVgHwB0lTG4rjHiWz3xyWqlPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tqm4ha2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tqm4ha2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88D2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738922153;
	bh=shOblgAKE9U+Na3pWb3HO8V0p20jOjJmfuHvPmhBS3U=;
	h=To:Subject:From:Date:From;
	b=Tqm4ha2E+7koJY0VqkJxkSzj5gqrEsmnwRGTou13q0J6Vi9bAl91VFDO3yw1s4VBl
	 LaHSMIQjfSrVXHXCiI14fM2RnF2vGpS/NY1aD+FOV9Paf+Gkn8UraYsA09lepERhEM
	 b6yGMN+BTtox0zo9o1BiV35kWxvSlKQvU/0dMN+NpkT+HsR1wWwsPCovB/+3jCOfTF
	 sGAGpjuE9rBAP2FQNxU1hqm/4s2hxah4LG7TNw3XG0GdvhgrYxMH3T4U6xxbbdehEw
	 gmfCVh1scrlesmB7UDUJzPQeYraRdvQT1SSuPrzxpMirwltXnR3TZnhq7bTYqW511W
	 f9CPzzhBtRxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4055C0219C
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892215372.17329.12402679620376969164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c4553396918a107dcd9bf7b805f53a0d00c9c5035506b1508b0ec5c59019c9
Date: Fri, 07 Feb 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738922153
