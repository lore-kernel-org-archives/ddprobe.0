Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249F4277C9A
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760817594; cv=none; b=h2wT8KQZk4XYODhxZ5c0ebZTJV8E4NlfS429W0swok+wE5SKigcSuWibYxNTkdeItJcHnlTFAZqEGRuVcPM9DXcegY5pQmQWU7byzm2DppIG7w2ONYPtMXagpsJxFiLjqxEHp3o1PQdesjXAptjtremwhEQGdTteXWujbu+bCag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760817594; c=relaxed/simple;
	bh=oOX9BJEVWr/jhCW4WEoVnu+GwLVcZaHHVWBmUS3v4UU=;
	h=To:Subject:From:Message-Id:Date; b=PgatUj8v2nfFz0HFlhAyMe4eVIWDjrYV9A9LWnddMfPFIjV8sXZUks5AqGn0B6RVYzzhH+Bze9TnvuoNH5UmhTZPWmd795WKE2XIj+as3DuFfSP6ew+qmEbs+rkotfD3OqNqJT3E0CWJORvOrMbpe1l6xo94IeO1Mbvz0hVlK/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYGvSppv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYGvSppv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB8C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760817593;
	bh=oOX9BJEVWr/jhCW4WEoVnu+GwLVcZaHHVWBmUS3v4UU=;
	h=To:Subject:From:Date:From;
	b=sYGvSppvxEVdEVsk4p3xkhMTr5PMVRTwG8Zu6+U5J4dZJFnHfFC5mYu/7wCpzFQuB
	 cWOV3xg2wJWI4qUeyAC/m3lvr/DFsRiiSqV9B6dWhN4s7mHCEBHC/9SpmrnBtRYDKe
	 Ng1uxL6o1IxY9Pw8+jA8ugO+1cOdcCuNq+RjxthVNEniIBd2++h2LMtVIBBm6ONSle
	 +vhKyxf6ikML+vhk5dXjI5aaYTO4d3cjAy6RAne1xMfbdVu1CYHkBaL/8y5QRxeYJW
	 RxIKpU9R1ru7jVYFvw80tnS4JlxzP1sFvdMWUJxpotvTslJNVxNTI1ubCPHeAuFpAG
	 Isn8diklx401A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC54CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081759358.10835.1565299975738799364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc6d1777c3c53ccc79014c8914c94bf789e1f56fbc6e6d10b89e8afe4e651e7
Date: Sat, 18 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760817593
