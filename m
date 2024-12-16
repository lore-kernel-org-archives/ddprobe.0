Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132601BD517
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734326754; cv=none; b=R1mFAUXCt/ZaJDjKa+KRgGWyxy+gJAm94mF+hCBMikpIbpCCARZPhxLL3mD59qIMHr75gTMpGn2oLWTiQ9rt3zE72VTQ5iomBbDGi+SrnjgXRXGsEu0mGS+yOg8zfp0DRbs+5WKitEuS3FdP5E4fw3zT9eggUpy59f7Fo7Uuk44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734326754; c=relaxed/simple;
	bh=vydo/3M+9CVi0cmbkeqr16j8Dj3QeFwzbyFL+vv5lr0=;
	h=To:Subject:From:Message-Id:Date; b=Yu2q/YXXgVhapF/D2oaSp8L874x5GLlx+dm2CDYc4fXgMy+7h/hsW1Vux8pf39Il16b5u8R3zr2pxpSm4R/C/ujcyoIYN5SMCbFl02uIl8ZxjA4eb77+LR/lDZj6+yk20ycyh3hIYXD9a/K7aeSY+jPMqKiD2ubrpgUyrjZMMo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9Ql6J90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9Ql6J90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02DDC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734326753;
	bh=vydo/3M+9CVi0cmbkeqr16j8Dj3QeFwzbyFL+vv5lr0=;
	h=To:Subject:From:Date:From;
	b=S9Ql6J90c/EWJY47RV8FnNa9a5iFrhuXI+dTD9w0mwuAuz8Zj0Ri2DKwcnRelfiiE
	 t2WBgS6I1BhxdTZAiwAkDlAJ6vQELFZRhetAMfnTWeR0KcVSOmzt08jUKZl12g1lrV
	 Era5GPsIeD8UGEm34CGvo/kTdZAbppJfMZXzc2hzHOTF6czMs2u7XT4amPQWonIqvk
	 IWtR99ihj+riWA2WAMLorZf3KOERxuBBoxB+ULZOQV2Lg56I39QXGBmUi/z2Y8wpKQ
	 CuuGLKY3bXXgxSOQNyrvrCmjOC8a66BNqvvuGaCj1/JPPMT/xA38PZKu2sHrUCETqr
	 4lj9UhxPCCq3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915CBE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432675358.20713.16323070366537578822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a397f0cee54dbc8a95332bff96623299bfe5815ff2eaae3b1d2372d010820f4b
Date: Mon, 16 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734326753
