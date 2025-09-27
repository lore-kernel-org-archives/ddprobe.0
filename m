Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249462417E6
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758967795; cv=none; b=QaXwkYoZdLwHwDenjw5oDAGIgo7MybrFZutnpJ9T6ck2COJ2v9QGjTTbTxg2VZDwj8ozaNIotp5L3FQRGODmF4GYHYR64YC5CnQ+4GHS/ro+igWrajkyYewxhDEJpjgEkQ3x50sBmzBGJvUw2lAFyjEjjDouWfL6RmdAByzNP8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758967795; c=relaxed/simple;
	bh=Iwu3crVa9yTTOHOFlazaMhJHBRFkl/z7CioJPwmjAm0=;
	h=To:Subject:From:Message-Id:Date; b=jbzAv/+0uSY6rjXPDnlWXPA8U/qN/a/gOBIwy0TwnWH9OULrk39NwUdfRh5aSkCFQUsDGc53mkf4kLoy12vRDpOZ3vOll+KHJoWv189k7iHoSNxrZZcBngixHC09kvvYPVnG0rvvNKDqhxyaxYN6gqtdFbi21ctgY+9IpWPr2O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBZm8yeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBZm8yeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758967793;
	bh=Iwu3crVa9yTTOHOFlazaMhJHBRFkl/z7CioJPwmjAm0=;
	h=To:Subject:From:Date:From;
	b=pBZm8yeFdqRenYeywwGxyQegbJmJaw998NaPF7y2s4sPWmQgjfOKLQ613vcQvoI+1
	 tpAyUqiipta7bvYwYfkc26egtTY7f72RU1KKlW8r2gMeaJmEsoDD5FNX2IszA2gp5c
	 YBG+D+nXP2knwbAQ5IZtc/byq1RdEKxGFxp8kx8Xjgi8djD2n/9wb6HX6y+t91GIfh
	 UufEr3c49jWSBzp0lQuY+suj2ffafNGADeSQjeYEfwE3cQrazzciLcdpo5m3x/0ms7
	 3ghCylFEqhiY9Lwk14NFeCPyt8pQUXuem0E9Z015mtyrDK/oEnFx5hNRB/qwhooTg1
	 v+3yIg+RII6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94519CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896779358.1940.2859300552435634215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610f4af38e465165fd8c6a33fa92b64aca2f922b3ecbed6df3af528cb71d3278
Date: Sat, 27 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758967793
