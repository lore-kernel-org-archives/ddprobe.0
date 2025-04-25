Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA621DFDAB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745563194; cv=none; b=enr5sEcnTNZzjrq1/6LoYxN96JWZt5QIwYfwETmFfqOVfJ+6rj6SrXvvK7+xyqxCIJlugTtv1i2ejipj6YEYxXH1ZyrfhIifJQtFVahWLbDyhow8IjJTScah0Yzo/JMoEvnvAubP1SQkTSgva5gUiIkT22VR6z0qJCS98FxoprU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745563194; c=relaxed/simple;
	bh=MP8va00h6TBY9IhYwHDak1Zm3Z9lZhWVhyD/HPrqVEQ=;
	h=To:Subject:From:Message-Id:Date; b=kWV6rI/nTOdHb369IZr9TAxWdZT7qWq/ubtZICBBatyNoEgQg38j3NQGy1Vx/NO2vhNguuTKs63M7SmbyB3mKeF0ibu/dNIh4eOpwGVXPBMtPXyqhBgAyRH0O/96QkMcMYgC1ItuWYu5GU77aKarmeAL3BnFFZVLzWzOdeUxGnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb74o8QP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb74o8QP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A306FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745563193;
	bh=MP8va00h6TBY9IhYwHDak1Zm3Z9lZhWVhyD/HPrqVEQ=;
	h=To:Subject:From:Date:From;
	b=Tb74o8QP5pmB94u/wfFoEhOuXZplfZhs/mNwlfMZJQEstbdndsBoDFgQ3lISPUl+f
	 O+LQjoZ2scdDgcy6Qu20nR1jDrGFD6zsRl7H9lFcm4mx8ocqUqMcY/yM1V8KnOIy58
	 E81kF09rae3sVi8Xvnn/trD6s/uTf/ycwID/emaV1hPaXQD7GGNe+4r1aBlT3C3a6t
	 6Q690s4LxYCMKYE/1jP8+tAPVEUhnrm/Fs/7BICLaYBrDu8sezgIsNklPhDGcDQGzK
	 ralrDl0YItmNWwMWOaYnDK4b5OMW5+j7e21O+1UguLuPLP/+lEPF3Setxv0wQWkLTo
	 jQiKNVwa/S6Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B7C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556319357.8356.16930581430940910717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77e0b4fe29bf79ffdaa3fc9dcaeaf14e44d725d524cd397e38eedc01d44e940
Date: Fri, 25 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745563193
