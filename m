Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA5E235C03
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743590997; cv=none; b=NcSCNVxka8w+meDtu8sffQiSB7M7Z9e3+aSY6r7683xWCQTcW9VRlg7kd/OaAc2plmywg9YBwPdV8Ka+Sg5cemKxC/9dZtL/lI45VDt3UFZhbf1pt6u7sdM5I+M/k4dJDGkE+pwRsAjC1u/7BPqRJBGVHwE0Dug2DiGYkOEhUGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743590997; c=relaxed/simple;
	bh=mz+Za8e4BNXZ7ulWforEyzUHYltrkozu/T79+nNExkQ=;
	h=To:Subject:From:Message-Id:Date; b=qH9ZpFxxID2OJezQ13mHaHo48rleJ5afHLn+a7GR+RsY7DFViEPx9WFvY0qo26KDZnMqUJ5CvR1yBoQHhMlhBz6N3h9QobP3G/XLs14S/NyAzDrPjOswQgd99givQPo5fLokYSTklPWiJZM91ShXBw1gNRX10aKfkmMUVJgJKXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XverJgMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XverJgMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6143C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743590993;
	bh=mz+Za8e4BNXZ7ulWforEyzUHYltrkozu/T79+nNExkQ=;
	h=To:Subject:From:Date:From;
	b=XverJgMyc1feFgFMqLuH6dOHWI40ibCyKkRY8wviQSqk9ai3Wb/T0m/9BrJyokUg1
	 fUOqpbrUFPCu5yDq4lzDP00yF5+jbKiWUjtR/QAoJlC+uz+ggL1s45GcXLyhD3p+jv
	 U/7dcOMnB/3PCKUMmI9fhNdE2L1tgsNW0Ra2jLYYdsGCBjFUNVj2XsWypnb0nCwaLi
	 yK+rw4E31skgGMnDMbbF2LouGQL33n6zyJNK+nOu4onT1ARh0UKzFHDKjAaLp+js01
	 EYyFm564e6gM46n+2D0C7ETpKnGoNyKHfA4jvGNF+dO+aDlKTTVbmVmoGafDN7E6GM
	 eyw/q0zu6yYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D9BC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359099358.14286.10530002723656630776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fbf40b863f1d7408d43d2d3b6cadf60f90698c08914ea5025e0ba9c32be599
Date: Wed, 02 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743590993
