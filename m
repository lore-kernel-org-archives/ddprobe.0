Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C027B27AC48
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767377633; cv=none; b=B8YzHviUWkTGShvWtQtG2b3LvPKuW2fHdpJEjHyTRtWgvGdxuGPctxIwvsDEAFJDiV0jwI4tQNY8IGyXTP849asSTIpz94drxaWzvIK7LWubV4gPb/sNFKh/O2Tk/9QWkWKS3NeeXDeICnw++WY3hDdToPjkyjzcoaF3Tud+wbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767377633; c=relaxed/simple;
	bh=51xEgU1i+ESZDGL/TdfRipBJcwf9Br5/8pfmH3fxzds=;
	h=To:Subject:From:Message-Id:Date; b=JwHQ1EjzWZPwu9L36Gv/Lt2sAhbifT4Lohax1prhuDyXKIyyrDDp7cZf+Pg1SugWIRyLyX56qrtGhP8pwnfMrkePI56+YccWjl+ZbWDI8H7+2vuRI2N6D+fRkz0TQakDOuwVVW7NLbL5cmq0h1xsWqmqYoeqX24O7FI57SVxC7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGke3DAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGke3DAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D48CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767377633;
	bh=51xEgU1i+ESZDGL/TdfRipBJcwf9Br5/8pfmH3fxzds=;
	h=To:Subject:From:Date:From;
	b=MGke3DAnkMB30zNcrUdleal3yWNVSF0XqtQCnRcmJrgVUdE0laOQebXSxgiTwIkGu
	 bIrCXXkNsxAh38gO5Nte3G0SuB5nXUFFlTAg2josNk85et8DRhDkxslk+DTQsIKpLB
	 f2owOba7NRmntltSmI3Id5JkNd1apsRYbJ+7V/MfSlK5KppOM7mGAtV/3nVNSy9VeW
	 ++GOjJJCN6Yi4D1mCAsfHX5afb5AnZrv6o3MA6a85CIMFtIYRipOWd9pccGp0DNJA4
	 QNhn1caBx2IfDgWS6F0tIw2FLUy6LjZj94W3h9Bvp8F6CM6AZOvmXouFCp9drIgZkJ
	 tMvUQ3vCmcoag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F267FA3755
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737763357.26030.10828403525828333241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898c7a819e58d32c270bf9314d4fd4ad67d7bcde2b6af453037e5d5139adb7c5
Date: Fri, 02 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767377633
