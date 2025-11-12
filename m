Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89B432BF20
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762958993; cv=none; b=AushYtRZMXaVO4D5lNqBMgtZnOj7Pkth91rCS98QvTHnFxYCRZU0bZ9lJDsiQt+hhT6BukvTsG1Qr080F3pngY7XrhAN+RsoCn1vcJHZP4V1ZKW5aOunPQxO56CnJ/GiqSc4RrDM6P7YgeopsFLDFwY7wi2eW4tJ9aFgqmsQAOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762958993; c=relaxed/simple;
	bh=bd6NagAEmVJT8y9JLCmu/XBx3kHJDJWQPZ0oXspk34w=;
	h=To:Subject:From:Message-Id:Date; b=HX2seiOYAve6H5YQ0nsVKgLFVYbtSSbRSu+Gpgi2V5FZ8z6CKMvFYm7Jfs9fG9A5Ho0MWSUqYKs9IMV8CTIWdhLJvNgAL8I+NqjGReU5zMlE22SXvDk20RVUwcuYnunyTmqlDJvUUSyPwq6fN9RVfaf6VKf2BdtvzCmnT6WdcKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHNGpnHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHNGpnHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B413C113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762958993;
	bh=bd6NagAEmVJT8y9JLCmu/XBx3kHJDJWQPZ0oXspk34w=;
	h=To:Subject:From:Date:From;
	b=mHNGpnHJCBtZi9t7AN9V7yZW68prNXPjkhZBkbaNN7p2ZDnA1S7QehiG2VnlMkQe1
	 gJOwmK54WL1JQ9tEMWLfoRy/hGMQIm52bUO7z/LH+KfCc05nKOu6+GpbtlZ0XEIocA
	 MBFZrZO0qIy5OBervKamglZS0lv3ajT1VaWU0qK5Mggy7JqjyHKYaxCTS3FOnlXGpq
	 NJ/78H0736yig1CEsDtCMbxDVYwuFja5jobbX8cRsrrYQGB5p0Fnu7K9GpiAaWOmmS
	 lW4xka6aY/WxeuojzQ7bFEZtgIjaN0JShXNR+ZNGHUVIFP8YLO/btJ+vv+uSQQd40K
	 J2IHGP7xbz2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10CCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295899357.28311.9104528817796927656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12925761b1769315ae11ddeaf9b79db1b3460454125e37b6046dd2c026012669
Date: Wed, 12 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762958993
