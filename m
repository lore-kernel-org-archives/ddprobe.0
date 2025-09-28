Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C186034BA32
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759069793; cv=none; b=X9DQempAIwtf/x/Ci6jzvrvBes49U9K8TVrBBm50H02LXTp1OnfK02cuTJzlZWnSGOY98MU4S3WBGzwd85MUzS6ppb2KuUfXYj8PaZo9bjFqx0jBdXEM7u+qrt7Dad8dltVSK1c9uvSkdtN5uvqp3YVBrBSlyHXo56YLTwBkcMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759069793; c=relaxed/simple;
	bh=GPay7Hvf/y8JABOAdnwrB8MjtqrHPf8l5/KDGqRkOnE=;
	h=To:Subject:From:Message-Id:Date; b=eHGMgVRIDlWl4N5Ri2sbaOZTISEUtTsKbnbHTrKhRTUJIliLbNWnMBqDkuEwsdtZvugLA4kA+lo+lWpJ2gAy/XooOJ/oWQN4QNq55XWnELGMcLOn2h+0OQsL3qdrS+0mP6ow9PED9+Dr7CAP5mGlTMAOnfQox91cF1Gge8tATF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ku2/M4Kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ku2/M4Kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759069793;
	bh=GPay7Hvf/y8JABOAdnwrB8MjtqrHPf8l5/KDGqRkOnE=;
	h=To:Subject:From:Date:From;
	b=ku2/M4KqTVR0kgtwaNECcNMjRgNUYhId1WPIcC3AdutB1FhfXgIRHfUqulNpg23bq
	 uixMHknTOYYxh/HHBpnoYduSj3wqpIhA1g0HJ5rw1BA3lM8CohjrOnhnbix5zz64+v
	 Wk0KzwlgbUs8/E/3EeyXVP2wtJsq33rnqiTWfnM/SSVWsmtbBQbtmVOP+T3BtN8U/V
	 vID0xRVrnY8myz6qkQR+x+ubgJR6u4WdfMQFmE01LZ6CqZ4pwcxZReXwslAXGOt+sk
	 gPJjalNgPJyCyhc+uM7ziyYtdA6drSTwKx/gcnnovdxuoq/0QvGZwaO625+rmNev4D
	 VJLdECBpMyVog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90632CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906979358.12904.4344044023601936227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f84118b2d55dc67059fca1ed8045d66dbc5f18c1a9fb4cbd5dc53c8a91d91f5
Date: Sun, 28 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759069793
