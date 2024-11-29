Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABA176410
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732893354; cv=none; b=TwdoKFx3iMQ0nda/YUVCjh+z4ye34f7LjAaYS9xKFBlB2TJFCV6VT8qDYbSEpiK0XKd4jH12khjPXmOwGfUOJ8pJhDMBnoFDomN6X5TBDbnB3zRaQd4Sp0e9BhwKSHtO/CVmP+riDabo980J7G262nPZeJxSs/qn7/9vO3YieiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732893354; c=relaxed/simple;
	bh=XUZVNonYmrxo1O/Ds0TFLyXXOCRK6kmp+IuwrAVfLKQ=;
	h=To:Subject:From:Message-Id:Date; b=VjQcTh2CHo3dHZWfgshWMV9b2IV6j306+VUaHvR8u/cIeVgr/6XPMGcfKQLfD7uv1Be2y88wr4Z6A93jqWXm+eiIqG7/9FzPYeghx6Z7qD7hzD73Ono+glcnJ7JvOK/1dj/zwWPjYXy3la6yjyXCAmc98iavKFPt9kfvdqu0wQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9dwDvhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9dwDvhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54F6C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732893353;
	bh=XUZVNonYmrxo1O/Ds0TFLyXXOCRK6kmp+IuwrAVfLKQ=;
	h=To:Subject:From:Date:From;
	b=d9dwDvheZC5oKa+ht1Dm1LZyMdpeV67o7nmG70UXU5I0stP+YeLjuBRmYCYIZvOyj
	 pGUxso3rwKD67qqmB5bo8plG5er8rJZVaFjh9j6IXCHSMnJT/cVYftK4knA6u/3OsB
	 GGltHyt9OJRTjANOTeDMS9snP4RC+utaBqtORFAohRoYqrsryGzPmHfnTstSOPGkS0
	 Osyl+7uEFNF7xDY/Q1yt8YWp3rnzeFB4YPfS31fl5MbH3AvZ0vDY5WU0sicMXSohFx
	 v97RikWAO6jHChlPUmZJ2GYi4I/q9pRFcYwhkKNDG2ejTp2Iu+HzImCDo2TypPyUnn
	 WfGSFTnhQynxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3448D729E7
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289335365.31696.9817987389382757020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239a13734c005f629b5115aada9662930b36c250aa3101e0b635ad2e865d91a4
Date: Fri, 29 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732893353
