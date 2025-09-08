Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAC0313E34
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757354394; cv=none; b=iIRfoJd4zN5Njnb3cRDGY29EFyrVdOfV6UhlrPaJUgwcXvMiHn9k+jqQhMoRN+yv3AY/7JHpGA0CsP87x+IKgM2H8+qK85m8gadcVOsiAJK66SE+wlDJk4QY9d2Dn/fDKzg1oN0I8QJQqVUdfyYS1Im9xVcP8DlqCss/KhhW1MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757354394; c=relaxed/simple;
	bh=rOV6TswAuQ2fJJzrGLJ4WwD+vor1CUimj3+6W4v8tc4=;
	h=To:Subject:From:Message-Id:Date; b=tarSpV+HRTPSUDIar76I9MFsqW29BbwLWPyloL3npGH7oYVsgWDHebxnGzKN93aWg4T2coPo2/Y0VvBh0x309JLo5R1nh2JAoTUILX1kHf4QqU36nOHIb9EtbRugr6r+DAS1ToqnjHSi3XigvkFUpFV74RH0bKGAwgLUkZn6XE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMn8AaJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMn8AaJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E83DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757354393;
	bh=rOV6TswAuQ2fJJzrGLJ4WwD+vor1CUimj3+6W4v8tc4=;
	h=To:Subject:From:Date:From;
	b=TMn8AaJbd9/d1j3dry6Wxe5T8ZK+LLNUXx2tNiuW6i15hUiwxmqt87MaK6twnR1iC
	 jejUGJTQ/iQIz7qbMibeHmGOWVZQmkmLg4NamOp5Dl96XIUkG31qXrkHIr6pAei6so
	 HQHKfc43T5qe7vJ77zFwmMZDRoi0745BD6Hh67LR42Q6DY7G9/nZgzA57IXqa5/Bik
	 D62LQIzqPos9X8Wg0QvxAyl4x7JhGoDzSU5zCSR84QzlldCvT3KcpJqGXleEOmzRRw
	 FRWxX4kzVRl3tA5fUlijzyuLsHMdbk0K5vj1W0iMD23g52oU7XniMUXr7K0fjVHThW
	 eI3+IvWjNL/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F0CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735439357.4257.8345679349386596089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8fe91775b0daa733b94bc2ea57f7e60a554ea015a1298c477bb10bb21bae16
Date: Mon, 08 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757354393
