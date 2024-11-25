Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257E318F2E2
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732527954; cv=none; b=uuaBmatHROFp1R+jd+ur9x4jxvDTNaLv0+TkV/QPNrfQtKfVABCdTB9E0LJP9l9OfDmSaBoznaS9DRkIrCuncMScP/IAd5hx+98SqACpefX3iXuR5gpFtHEhp48Pv0Stq7Mh9++RSbkDZopNdu1uyJJPgruUSZbfcrzSgAOkRkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732527954; c=relaxed/simple;
	bh=yf+Rx7eX2QtdiUplJeFjOl4Vh9O6xlH5x3gMPDVemUI=;
	h=To:Subject:From:Message-Id:Date; b=PH+9ABGZH7vB62JdWupgYy/+HYcrlX0fqYPwKYuh3aphiaNj1AoB0clTzXj7JG53rkwr4ek4/Yy7Mus1glEybvTA9RFucRduUinH/K7dhikhl0a9CwZ1WeH9yuBDEoE8Bj0EiNxQ9HlXM27miiovxsOQm6wei/VgyVONmyDnSpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tULBkfl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tULBkfl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B1C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732527953;
	bh=yf+Rx7eX2QtdiUplJeFjOl4Vh9O6xlH5x3gMPDVemUI=;
	h=To:Subject:From:Date:From;
	b=tULBkfl8GRQeleksW8Iotynr3E6vjKljhYocSjRP8d8WbSFFHGjqZTdiGhDNOvfDW
	 fwTUZqOXUDPWvXTSyXSyC8WOr74S/yff8NrICZKOvjmwJZhVO4abG/7AEEUtc3auRA
	 AggOtunOc7y0lZzDe69S2im8IRKtavbrCYTLYtqHufj8VOgh9yW7vrTOEBveb2/ck5
	 gjGtgSOdkN12jQPNzvIG49xzQr5Yb+CvlmAi/wYU53q372Xex50EpWT0Jqt60t0GrP
	 xYsSFkS5Qdo62W7hofFgpe5GXTs1Inw1L8Ye8CpxeJzn8ovzJtLIX26pgLXLADANwM
	 u5YQZZHm8wZqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9702FD3B7F5
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173252795361.11860.1048292298545905585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64f81cd30e390055fbacb2bc6e734465bd831c65e485945ddc273b88410573f
Date: Mon, 25 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732527953
