Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE69155757
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766376234; cv=none; b=a/jOOTcwuWd0PnasnK7EuZ51IOuHq0Tp/31d91JiqJiix71d+6HIoJPWMlc3LxDXhIKNh56HYQGUsYIVnvtc3D/FkuQXutMRdrTykaf8bci5s1AtRpxvumhxHylKaq+/WPMsIdByX7/nq0AFHrpqlxRhgkLIEChXE2vaXt2i6Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766376234; c=relaxed/simple;
	bh=hZqeHCbrLJl9ctNFeydLkMnAg3ELWfUN9QgGD4nK1tU=;
	h=To:Subject:From:Message-Id:Date; b=kLYvYk5+Sl84zRmwFcEycsRND82Myic/dITNLzKxPofWo7xBrTc77/bBKPzOmweRY2MaImxytxcS1x973nZzMpMCw4fl44nP3wXKTcOFNQOskuBCO2Zyu68QlrA1fycKn2wxEHyJAHTBGBjwYMz3dPkA8k8w6WHBMNGOE5ugfHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yv6gKGuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yv6gKGuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5577C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766376233;
	bh=hZqeHCbrLJl9ctNFeydLkMnAg3ELWfUN9QgGD4nK1tU=;
	h=To:Subject:From:Date:From;
	b=Yv6gKGuEF918w9wyVYNIlrbevTZWxSH+0oWcv9ao8FDGtvyIzXe1R60AFaQrs2Xza
	 6rZLrlzS0+QKJ5OS5A+eaZD/NusN300K0gH5GF1+TfX8x592hJPd3zZ5sXk3P/75ie
	 2WEksKiB2YDrPaG8l8L8hhbcGxx70ksJn8oQThW0IiOX1cFS6y5vxAonwAk04XPr3P
	 L/XCKQV9vnRGumY8tJ/JLftj2Hj0QC2Q24pF4698cD2pO9IVyc/O63rltl8hUTOm9D
	 AlPq8KTZIsp22DMEp90W5m4DdsGqGpTHPIJbVgYEPftwTiTuFd4qByciltwi8fGYCg
	 jNUVHhXXTPNSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A3D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637623359.11948.11250449808992645081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4cb6bdd255e4548aa43fc5034076cb67bbc0abcb518a53677d96a09f0389bf
Date: Mon, 22 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766376233
