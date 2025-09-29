Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20583231A30
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759185595; cv=none; b=VPxa8KNNIIM3onTbuqMQSQkELra9jQOkJmhnquZC//VUi4o+hzBg+ygi57W0Ovn9HIhcotHdEPH18oKCDzmtFU7GVSI9uiOHuLQhQLxHN8JhO14GracYXPZDx/meO9Y+MSLxIMQg25i8fx6UPKaTK80zaY4G5+WKxThm1IN+1QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759185595; c=relaxed/simple;
	bh=hWFXO6jcq54FBo16G6xNaTsXoGl6PgXfrhvNgrKLX/g=;
	h=To:Subject:From:Message-Id:Date; b=KLSx3R9L3J3myxoyNv4TAJ7XQPh5kLBa/Ge5Bj+kSx+f6TAnR9mFecPtdLTG7JRoFd/j2qV3geMdTGy62vVONt64iZdmXJMBzwsu2Zxb3Shx8IdufuvYODxDpFST8Qo4kzXIlw9uW9Adoro8hh2d1KCZN53R0umQQQYMXUmZsRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSOfI1h7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSOfI1h7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B097FC113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759185593;
	bh=hWFXO6jcq54FBo16G6xNaTsXoGl6PgXfrhvNgrKLX/g=;
	h=To:Subject:From:Date:From;
	b=XSOfI1h7iznq91r5GMI/1zLqxEZ8XPMXiw+WsBpZfoNhk+Va9Z3vFTa4l39tL8wDn
	 ktCpV7JtjU3AgZXvuozFBoVoW9hN24C5KgHPtsvmHgpUOWVYwxx1sGZKBZjqxWUSQl
	 8BmiHiI+HzMkTPBZARAyeoxdmdzeFCwYV18ZBsG1WOnRFFus4m4zFMbjFaGYj7XSDu
	 t/ckQXACcXPSUBh/Odsm/HBvSBlW3Q1kEC95VZ4SPcLIoGmmc96gc0moXKHkpK2Thh
	 h7x9a53qORBSlNvCCX/qzJvWM3iH/AJnuI+vSWs9QiyTmEyKwVJ1hOvO0nidUdrDXp
	 BQpWO51AQCHjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C69ECAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918559360.8159.17338171154012502181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795ff6e0c853adbfa340c49713f7b1ec3f715f43f4f68086bcbda12d76220b94
Date: Mon, 29 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759185593
