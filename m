Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECCB1ADFEA
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732547754; cv=none; b=tE9dZHRcM9zExdpKJ4hhOCCWL3yHrzhThYZbl81dHouSHAMKl8FLNa5zlOkE2t+4s1ijGzPBVuHaT6z5dY2ZNxPv6PIoz7v5JbnQUtj9BGV/m/gSkFvqFw9VgXoGH5wqXv1ixl5gzyDnqfUwzifedcAl8VeuDWrqGpa0CesmCr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732547754; c=relaxed/simple;
	bh=JrqNvLdWzmJtdyQXsQRdZRuxAOxyIlxscv27jkn0xQY=;
	h=To:Subject:From:Message-Id:Date; b=fgoYpdFHZ7CDHVLf0jPhyCWzyAx/yjOy2+BYW6gU+MTvdMMq5DAQmcQOHLq1jYDljAB7fpgbBmIYZih/vxnMev98f8VpJl9FUtexVd4/CVgijUfnFqnKgSo9jqDRtvYa9f9D7iLdeu+MSGHHoZUMemNCbsH1ABbk1z8wUBZOiig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9b8sxBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9b8sxBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5171C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732547753;
	bh=JrqNvLdWzmJtdyQXsQRdZRuxAOxyIlxscv27jkn0xQY=;
	h=To:Subject:From:Date:From;
	b=Q9b8sxBSB+CPTbAKLur7R1Cs+PghNqFtYVZhlHBZRRpeyqO1GTrTYB5dl6kbYYUoD
	 1Rgjj229/Bi+Bg+MtrDyfMM/VqM3bR3TLmnf05kPmY2gZCrQtdYVE1R6C9p9V8GbIo
	 6+b6pO5jMPdy8tkXVzLy97MqXzhF7vL6Q8lXRk1mD1u/cWvqlATbjQCJ8jA50VqDy4
	 0Yhle56JTifzW9FqwpOc4VRIwDflTujqCd4g3l7Kabl9hT3YistilSAIf4Wg6uC7AZ
	 LuYhaAIhA00lquA7/Hk+45Sq7mt2q3h+tvZJxv/m3B5LYcYGjJT5+uB+xEUvrpRwcm
	 HsF3q9jA6fDBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0361D58D5D
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173254775364.23895.14409888171188185710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e892722f938923ad5bdff547907e86fed0c8c3a1c17eca9c4a5d94f083262db1
Date: Mon, 25 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732547753
