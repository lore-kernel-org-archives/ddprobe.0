Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ED018C31
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735511754; cv=none; b=YVTf0yOGJz+SgLDyeDWtNlVjLkIWjWfLlRC7H3612+DitFwOzsu+4nIZkHfvAjh4gBLfkImI/FQpiz0d1LLGTjyfM/fAW0BQjrORB7mrBguLHdlIquxsmyZlstweLBPIT3NcaNRFXLmMyBJeAcfK0YMTMeiaYXYDKb+C4+m/2NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735511754; c=relaxed/simple;
	bh=gjjp73rjYONKceAU4WNYg29GjftAm9MnhaDMgqIE1n4=;
	h=To:Subject:From:Message-Id:Date; b=dUE3yYa2R4XYiNB1UzxfQdzcggoYYlinRhiyssVEs4pjLAasgW83ohNPvVQYYPZfc5D+xFbU0Cw3rdhvnCKlUtBnYvHkbsfRqxBWkUsuIDk0CdyMYPGR6uCBRSfnmV/RE/oo6/pl7rTK6/+UDji4/ffdbOd/Vb79oOoPIuBL/aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbRKSxBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbRKSxBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4440C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735511753;
	bh=gjjp73rjYONKceAU4WNYg29GjftAm9MnhaDMgqIE1n4=;
	h=To:Subject:From:Date:From;
	b=IbRKSxBhcwfYdaF0W5l/wVuy47Rrn6O7q3J1ifTrgGYVScs+E0Bnm0CeAe92EdCDu
	 X9HqqyL2woOyCKgV6ijHtnIvkEdSU8APLYlgIh8ubN/jypU6VQRLWsFb0HzA/tQ3HE
	 IwJDWis25v5aufqIhe+RiHgMRzLtegcDK3VWj91eukVaR4YaRl8qKyHsDYkh0L54bR
	 t1OV5Ei5jjOAREiQXVThJzYLDPQfeI7N2KlUSxRT2JGOSl4dWXEyaXjJL5+LqmQkZc
	 u9AXdAJNZsgUlCdVuzpfVOBLkruVOZgAaeCc6aK5F/uilSMSWbViXrd6NoHfnDdwZC
	 0KO452zEufbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994A1E77191
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173551175361.30189.14366248219856229037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128f16847c7ef3c9ede01cf3b4c42d65f56f3d99f6e96a4842c0b08e18c7d7dc
Date: Sun, 29 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735511753
