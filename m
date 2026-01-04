Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233F34315A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767489834; cv=none; b=Bi35bPv7j5BF9yAMzUQjADCkRx9FuGo0zMDvtSrrN749MHfoVqJ15jkBnCputd8Vkz/ballhV29geEt27yY100xHaWtonffDEPjJgjB+CJJxvj+fboXMDRUZTxGb3xEZ7Iox/wn78JbNM/YHVlsnn8Y9Q5ZlHDWNjabO5ZnNMiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767489834; c=relaxed/simple;
	bh=CQuX9SMxYOY7vKhCQgR3P3+NMhj0Q7cYJQKgStk5YNY=;
	h=To:Subject:From:Message-Id:Date; b=jIHeD/zXP4DQb+Glr9ipQTXqPM/NP4qxH1FNdH3z1V4WKkcYDpQauX9R0esD+7V2UliihH8Krxr4/be/T3xHHEfomK+V6/1kYo+bhHvpFeyLuz/Fjfdjqu0ziAemgwlTE0HdpkF4Odcs3x0Tcj23d0+MO+5ONFhy75DXLU7H2Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZSkVZjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZSkVZjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BFAC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767489833;
	bh=CQuX9SMxYOY7vKhCQgR3P3+NMhj0Q7cYJQKgStk5YNY=;
	h=To:Subject:From:Date:From;
	b=pZSkVZjY21He2EdgZg/m/TOOAxMwQk6TIMxxZGkQuYoCKeC2k8VRyMNDD5SZ5UsCI
	 FxTUxe1QjT3g/tWFVNQGRAfuru5541aebixH7kXxuQcXNqBhDyZ9dKiKZU2mAYjpi+
	 UvFEPb2rtY5RjZpxlogNbOtpMd3ojXFJRSS/qkZmMMb1PfmH2vDtaJWtfYX0/YbUEZ
	 zns2VctP1WAvv0DdBtub/68Qm/nFgeTsC4vwW0OiTLV6tH7kbbTJox/hdt3zgVmtZ7
	 YOkjcuoi53KZumDeAseS6WVrfrpdrTT3ZYZR8y2t1PuiJE1JD1ompsblESMjMqUk3V
	 3Y9cLtHNVnEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ACEC2A061
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748983357.3378.14283598241846393189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d361526b1e3f94c5331d09fd3326bb3308d6f48d6e2f6ca61e04e59ce4f83ab9
Date: Sun, 04 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767489833
