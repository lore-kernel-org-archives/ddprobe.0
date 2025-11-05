Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6851C84BD
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762315794; cv=none; b=Bza6//a/jmC5nYBYjT2VdPVSbkoyjpKY1dnyO8SKj+rQfz/u1vlp/YqKL6Tru9+HdsyCwNowkhIisxV7QbPqCXODTObwt+ZRV52adk12kEQCxwWRVPvrvrnDpjCQr4OvtcXmAGnu8MraT6oMcHv8rQ6Rm7nm24lVVyVyuv70Ops=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762315794; c=relaxed/simple;
	bh=KtovX1OS+u+T//4cLAHiococn5NX4vqvcHxc/GEVsbY=;
	h=To:Subject:From:Message-Id:Date; b=pblwzJlOoyMo/74UBCtJLllCcFVOqubCbTrVmh84Mdti0/ExB7w4FT4d05JFre8KtSIJAxHNanqrDupOjIkAAjLFI8IR1KIrrNeVN/zWQHlnWyk1QvkS5AsWPy4i8Fx2QoW4pJ8I7ZjGH2eFnz6Z7ZHiu3ngrCDynQZNYXo2q3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVqfCv4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVqfCv4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28F1C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762315793;
	bh=KtovX1OS+u+T//4cLAHiococn5NX4vqvcHxc/GEVsbY=;
	h=To:Subject:From:Date:From;
	b=HVqfCv4vOiiG8avi8IG4nmw9cr8txo+qLkgZMoFptB13RSPBCt5BfYpgUIbGYxTqa
	 mCBNZcNiLps9TUKePNwDlrjve0qdOg4sk5qDLJA7eeYStI5Gmd+Zho86hpAMs9TIO7
	 rpMqV3bWvBK6I+ga/MSTFK/pcD1sJqWfnsoX+74Lh0HmrJ8hSD38rSzpzB5VfyYKMA
	 s34JVQH5PdhBw07oXVe3noWxWpD9GClyZJLBm/T4UbwWoPkmyZLCokeq6D0fRcT9Ao
	 GV6OZqetWgyVjJNeJ4IQ1v7RUewPlGeiYlmjt2ZVAJ/GJNtSksF9ZCiozObHJpgc60
	 9yCj3W7pfkUTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB7CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231579357.18780.3574080283619840464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c088c2ed7a29cd6dfed706e20ce0620acb2acaff6caa71ca2db832a7c860423a
Date: Wed, 05 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762315793
