Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F2F8615A
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746011994; cv=none; b=qfbLPD4FvWeyGcC8vZPddsjQyIaMZW6Qs/0hONEdjOgAHtvXZLTqjEt2sBVmU9OsvWUoQrSkalyQD+S7yasa2QgIqDY1JAl25CgbTxX4ok+MydzXF62i7efY/hyE6xsTPhUHZjuEcFovarskMFOtZiUszyDvejfcS3fQ2sy+EuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746011994; c=relaxed/simple;
	bh=j07DPwFdEJFrmWfu14+BGeb9GB11CuQDzJNfwpjmnCU=;
	h=To:Subject:From:Message-Id:Date; b=XvU/weLRLaoFYIZak6piqsBFDgRx1s3AS/RnX7QGUEg9W2umpwm1DhEy6KoGW2J3SxEz5eaLTN/oAu4/BNSOgbE13t1eD1kTO6wOGsdW7GhH5Fso4sNI7OZkKwwMB2/roQDFPqNnsYW2jOz2HQHZ0uA16g+Pt73eRrf4AgNPV2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7LuHrmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7LuHrmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D38C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746011993;
	bh=j07DPwFdEJFrmWfu14+BGeb9GB11CuQDzJNfwpjmnCU=;
	h=To:Subject:From:Date:From;
	b=X7LuHrmOOjDVtJgc6zpFhSRoYThYB/Kh8Jsctv36DYMj8VeRgAQpqc5v1JXmEoJ89
	 wXIKglWV8eiZWUEMAVvAI52/AYpNRWs5qmllkQAh1f96hfm449BUOjS+LSon0EEhzt
	 zbzfZq+x+iB0wd6DV5QzKGMI3igF3IjY9ScYWhmtzXulydSCtoh4UWgw+sNForkNx0
	 FSQFhK0tFOgY9owpGc2mizQiq+QfrPF8nKhWJH/v7binj7H2XprmGa90jiQKgV4Smx
	 btf5UEBSZcvzFD9WesBY/9sNjhqU2O4WUV5MFDpkBtdQxhckdf5xCpxHiArWc02k2R
	 9utm+WvLEae/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC9C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601199358.30519.12960688267727588608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3332ad2b920830af46de71bf5f13a047cf12830176af85c1bc08f384e2a3a8a
Date: Wed, 30 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746011993
