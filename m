Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1EF2E6CBC
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765545174; cv=none; b=ge2iZLeUvG/uMZje6dxL9IDgVuXv7Q+NJYlaGyt26WpHQCNbseOEiOv1NqwGv5Oqw0ffhU2bzpIAMH6bfHc7EUqfGpGbv7xRKvYYpy97xVYFvMV8b8Uqm8aJ1uz7IbTRjvbCj/Ck67diL+oULnzh8sng+U8Ja5a4ZJzr5ha9oS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765545174; c=relaxed/simple;
	bh=xZ4/9nWbNGWX6hNWCvKwHOHUGubYOVGkk79pCv6SEyQ=;
	h=To:Subject:From:Message-Id:Date; b=aprzAhKSFUVlno4dvtZquvpJmr39D1fAu6pjuOEnkQ+hTJAtbTPbjHw2XVkIxJkYoyJyFq1gv+GB/q6uhG29f31DCPZpZKIRWYmLE24+hXTjaWXGUGdrs0XRgFkWPL+EozF9JLBtPi9C3JYtaBfUkPKq/7IUQwjY7eedx/N4h40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouciPsV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouciPsV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765545173;
	bh=xZ4/9nWbNGWX6hNWCvKwHOHUGubYOVGkk79pCv6SEyQ=;
	h=To:Subject:From:Date:From;
	b=ouciPsV8dbO9j8xS4rFpUmVg2x/DXsWsbLpJdkUecU3XTmsSf+AHTA84r2i35YNS0
	 4cQyUHjzln8PMez2R0q2//iGBKydAoM2rOo9cGm4MzBBcjqgrJYKA796+fLw1tr4Bb
	 OOKG6hSaEaHMBYETJoAUxAANtZOXyPbT61WtOyrwO+KcnZgmP9oL8MQy/udvVeB8SQ
	 4/3wpYDXuj49yD7urM3TcAsnkK396FjgzwLRwVV0WADkZM/ITtG62NnRt1cyV/qc9F
	 ORUHMplAHDEHAtNk3bnFVcwNlvePrELVHSBm5p3iPwA+9YXNkb/AEtml7+BVbanOsR
	 +hLblbHcyQhIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902CBD49224
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554517358.31131.15353128715412597679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f384044b871530a3363707ffd7ef1f838e13e7eec819e4767c9a53cada61d7
Date: Fri, 12 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765545173
