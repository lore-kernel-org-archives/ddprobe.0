Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB85185949
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731672954; cv=none; b=UZM/Dep969IG2d56xSL9YFCUf96tdNIem6QDchZrNkHIEY3ienizjf/cHg9qcotPyJyPiQj2tU9iHDpAwB89MPvsDIanTcJi3MxEavylfukWsOoGXBJvQbimgIAvrWvj7dNhf8MtH6Yrzl0uFurBpjG/RpY3z3BsWJ2xZmwXqOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731672954; c=relaxed/simple;
	bh=GqzID6Z+2WPANJPJJNhJKSCLkqfM+0QtRbhOOpsFK6I=;
	h=To:Subject:From:Message-Id:Date; b=eBZUgxkaj/7yPMc+sUi4xxF46AKI051VDQZI6nSFfLG5DA5FVukUfF81AvDog+rGwvBhFA51X6JEC8Clygh2xcA/MFfFkLipkHiZiSOmTaSwm0Rvb7CPGiYB0GrAuiydeO2W+4OisltMEmCexjD2/iNsl2H4p1Ki9+hSDK8avn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb4mUAKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb4mUAKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F8DC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731672953;
	bh=GqzID6Z+2WPANJPJJNhJKSCLkqfM+0QtRbhOOpsFK6I=;
	h=To:Subject:From:Date:From;
	b=Tb4mUAKYrrZuUDUkqiohZ7eAIEA0nFhy7SLiuUpuGSeXMmSfvGQPCsTqOufWaLZJf
	 S1PF9FY6Bz4mned5DHzZHGX2Rr7dbM7i5ExcfKYuTIXjejoQLRA97GOPA1FIiiVI3O
	 bfBivIhTLMH0zwRBdUvbh++yWZoUPf1fgFp88nYQAIqbudc/C0jS2HznIW+bVT/vd+
	 XMjboARjgTO/j56LqVskCALgHCZ4f0/UFQgwgUziIKKtYxvCOxKgQp3lNCcCpnT7ix
	 7AVn/fL6+NML7jA7Em0rJzFJzImN6hkzPnUqwb49glG2NubBOmrTYjnRRkliJejQxM
	 3WAYevCrK92vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99157D6DDED
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173167295361.30651.624589643364650535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e454cac3f041aa83020aa77a36a56fa21fe9461965de261ae66814be8a83e3
Date: Fri, 15 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731672953
