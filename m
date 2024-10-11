Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E611D096B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728675953; cv=none; b=XDnNNdcppnWUDQ/6vVRDbUc+KU1OIUAh+eFu23QK3A1n93mJvgKvejFbW/PVtVG/XH2AE2o9lgK71WfcQByhsOD8QMvZsTLuwRrG2JDBU6NbcPMA5DGzf/KebMvtf/IrxrbkImfxPK45MlduOHdBgIVRAjKtGR580ML4hInQZrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728675953; c=relaxed/simple;
	bh=lko/fDf9p4IOvlLwrOvb7wKeYsbHqOfIbOB1BjvDD+c=;
	h=To:Subject:From:Message-Id:Date; b=GEEbOm6qL63Nk+1nnJp7OVQlMeIc+RZjKc7HDl+jTxHWoNHnHJhdicDYkdEZPRE3xiHE9ETHkZDFbUXT0ZR1cBjXazpYUBqNIZ4UxTRDefjI+Q8cmAlP9pBGYEM6+ksItQPUPwXjKYnbU2Q8sF22Z9OHPmSwqLCCGvVrqDEQeeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eifhkRg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eifhkRg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE043C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728675953;
	bh=lko/fDf9p4IOvlLwrOvb7wKeYsbHqOfIbOB1BjvDD+c=;
	h=To:Subject:From:Date:From;
	b=eifhkRg99qYVjOKKnuZoBLxX64ySW4HeSAJoqNmQDu6y4/xy25ar12+AxyAQrXHla
	 PLz9pU0hv67qbTH/Py3eg0KJO2nZAyUyvhsr1eR8PvKDV+rE/vCC+5tVJPCD5Mes6S
	 GfTb1+99nory/7L3HaNKgFzdAE0A4hmA9/q0OOeSRhkWVXSHHyMgMuj1u8d8sJfdRt
	 XJNInXHluoa18nTaXESJdP8oIeL9bi62WSM5jx74E/VAhA6Hu1AIa8BGT+IJ4w6gFI
	 VhDlGwA1AEBwx5Mr1jNUNMmQk1vziwyGxZB/QqRMoQEoLnj+S3ocPLAzMh9Z+Y+cC2
	 SLbciN7ii5U9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC8D0EE2A
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172867595360.2614.12488435960528555328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8c662783560aec94d23be95253e5a6cac507ef277326a66d4b027f6276be6c
Date: Fri, 11 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728675953
