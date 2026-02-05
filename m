Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB863A7F69
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770292433; cv=none; b=Ptzpuc8qdNxhgWdqUn9cdg65/29gr3XU/06nf5WIaYS68avlg3QQZFTPYYjISlXRJQOc27XtWycuFzSzI6yTMs38T6/4i+So85SCxowUPkjeLZDtkZWLndwKzB2pFmSxTJi4HeyvE4fb06P6C/swdxmZG964zELi4VOQEWWt2k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770292433; c=relaxed/simple;
	bh=6/8gi52eL46xRZWxNoGnsJjieK8Dng2g6zGf7D8VZGY=;
	h=To:Subject:From:Message-Id:Date; b=socvKe0C04q4JAqCYb+NOcTd+Ta9TkKjfmx2YK9apEAjF7JxMwU5YCi4NUbFanQYX9ssfgbfVaSahQYDzVld6sfye6voO2duRUiXV+5FuSiOrb77XzoSl55bG7m3VU5j3TaWqjYqmeS5ZU/PbSfhRLYjOsr7bVLFEMp8XunFfKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5kaA0qB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5kaA0qB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF3AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770292433;
	bh=6/8gi52eL46xRZWxNoGnsJjieK8Dng2g6zGf7D8VZGY=;
	h=To:Subject:From:Date:From;
	b=B5kaA0qB0mbSLtXVtAZARn1C9NGm46palVnctt9+F5YC00puhV5B/hw48hkX3fVSq
	 9Bu02hps+z7FUq7/xMcvuPssWDZ44eAawA1mjwvwc6GuO69vOthTMb/1yD3bFYKqn9
	 qTTN61pse4p8qwmx6vAOxp7tIdA+ZETlWsc/n/AO18Ra3XuhozVdtSsJE+WjIRm/tV
	 zTkw50hrYytJKXfYrJiJdQ/yB4lFSjZWuf82nJtMEK3MxsUxYJoZUaZ4pR5gaGAmK2
	 +Ok7D/vm4PphbgcOi2v8ol66+POftMatcAF6g9rLX3E/pKSI2+f6E2tGuTGTrGOQQX
	 OEKFQIOclwEPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082DEC1EA6
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029243358.9242.15489113072735812041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ff7a89a429a5f79326e1f00c5b05be14579370ce716d29f700af5dcaff5725
Date: Thu, 05 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770292433
