Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577EE3148D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792221634; cv=none; b=bH0vv8WvWrQS25viHWTyKIn2MhzORa7tK4VgSVPMopzG0Vy1/kn55ycoh0vhRqT/xHlbG4uZwFN2SIlzCCmFc66QEuOFDb6SX6YPTlcU/4VLB0H5HxVO2seUPLzMeBHaK0hiGgBh2bH+Pj+XhnZF1ZwunV85vbSRzKknTUKc4qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792221634; c=relaxed/simple;
	bh=i63WEHuGnAxvO7fg62dDkeV72m093FLA6QnYii/AjOI=;
	h=To:Subject:From:Message-Id:Date; b=qUYybR2dIBN/kfYnMdEabAcUtf0SBP5VnyNMoFCJ59n8mGLoiBlLQLiIRmxO2Y91X4n4tqVFZpQIK9KK/5k4Tjikd6RGZvEqXb12sTz8h+HAzQ1NLS+LQvY+18M1YJ1Z8Uwxfzdjx+A7pC6as4SrYKNP+xfGkEsLZ7sIN2/01cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FY1xmhEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FY1xmhEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE17C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792221633;
	bh=i63WEHuGnAxvO7fg62dDkeV72m093FLA6QnYii/AjOI=;
	h=To:Subject:From:Date:From;
	b=FY1xmhEsTEnA3qhArc7hnxXmPNxlNk4kLp/PPhqZ7vcJSJkIuC9URg4XKz2OaHcvY
	 yigum3ulKBFvu2tZTwPmz+FM2iozAHtVzNsi+Zt+dKv9yfDkDoll2ThNKiQQL/ls6/
	 GN2pmg1KoIrJIl3wPmdOGfTKkzgXS4T1zuqMTpDOuRZvtGn7U2rd5FL1EhdovVL/dd
	 mor+NVaTGHFHV1HbKpOnndcqyR3l7une7yiyjNg76Bx6V6d6Be5Qn2msKJBpltquA5
	 9DnyPk0BNPwEreNV0iB2T63/lxrES/pCatqJynH28RwCJmRJcdvv02uAYdHo4X3oHM
	 5GZkYz2VXTY/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF24CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222163374.11858.17732399261265339053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9d9cb3fd0e66b51d392a94f30b7b939104187c81c464eb81754e2b45c02a53
Date: Sat, 17 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792221633
