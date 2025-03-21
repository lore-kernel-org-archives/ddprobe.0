Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416C822D781
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742591394; cv=none; b=lnlI6t/gWqcjsNLsaiA8eqcvjSLwLHrORe3bKI8XfRcZUbBdl91c14bJ2dBgbNQy/vN/7uKiysWEeNsiogEtTTWvYNpMkdyZ9jKIp7wOvpiEQ0Kmi7/S29UchXHGNWs9e/iMa3E1MVHuY4/QiC9cb0c1FVtnWF/BpTM/8j5FZ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742591394; c=relaxed/simple;
	bh=JVp+uGKw5igUf/ULsUtnGYDuHUVSd2Xh24JDNZra2sU=;
	h=To:Subject:From:Message-Id:Date; b=Ip8aoex5oxZmIFEgGGw1NbYMlp7uFJmhX+SfB5/5pcGqrTot9Y1gywb0AaKExe1qAJIW8WRKAkvpc4HYNPe6DiiMgoH0iHUmmBYtGVwP8IUpyJPnIKnfySlfmRbw3gBh+GvUy21qToaDzSxukEWm888OaiDC6NrBEWEP+MmQGvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6JrQOnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6JrQOnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1187C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742591393;
	bh=JVp+uGKw5igUf/ULsUtnGYDuHUVSd2Xh24JDNZra2sU=;
	h=To:Subject:From:Date:From;
	b=q6JrQOnSE0X0AWmifycdse1lg5GvfqyacjL/XZT/ic/D0ynPdhpIWEF7Z9RFS7VMk
	 BGSB2T9fS0a18OMMCtyEQ3FdxuNUSDLpsC7w9XUX+2frgcIeAjY12seLCW8oGyAUrR
	 wsMBVVX6eWh/f9J5G4TvoridO+7vSKBnMiu8HG/HrmF/dxCCOC+YTDXfhcOfN4Dlm+
	 F8HqvJma7iPQAFX6Y5+uSyIrexcZpaa0vWXSi4xVNolp6hYs/C8W4QCBXOI7UT1cwy
	 poj7NJZrCTIwyKKL/W8fDYPV+w6pcKeJrnfTywc1C6IP+Ar0QFTqnVqAp1Ed1TQ5Gp
	 qH7PtbRmV7/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA595C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259139368.19665.17394300500958078755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0670d4f3f1d7f0c6acfb8e0ed87ec813af64f146a78886634b912707ce147e
Date: Fri, 21 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742591393
