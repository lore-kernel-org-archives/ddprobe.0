Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350791E4AB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766380434; cv=none; b=mhlSFOMF6n1Tm5V9AvaZ4S8lTkCVgKITJwmkOCyPb9T+q9BJXQqJGio8xfvajirZEjxwTV0zHv6lmff9HxtLe2igDTLY/uwP2Kc/a4m9bNUbQk0pupvvRMBjHP03pOWtIt7mEp2UuwS5ysg3JOpaVad6BPVS59rd0eWrUaEYjuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766380434; c=relaxed/simple;
	bh=3tlphzKd0Oa72oyhqpEY0l4ltjXQJmloNgo0tnSUeT0=;
	h=To:Subject:From:Message-Id:Date; b=RY0PlwLqU7DSmoOg+bqXvLQI5MEFrd0PMke8wGSxeHtO0A0+Vq0BsWXyRrrNa5uaVQvoEXUhYZVZFo856OMTaaJdiLAh6rYVg4BcMGcwiWTzAlUAB3EdKlTP2ZOs5ERduSpPFj4OE0e3P7TtKNZfo3wVg7cjCruq+L0iI0TVvnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E41LzjLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E41LzjLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766380433;
	bh=3tlphzKd0Oa72oyhqpEY0l4ltjXQJmloNgo0tnSUeT0=;
	h=To:Subject:From:Date:From;
	b=E41LzjLted/pcD8uNvCA5vVx0h8CcAsI2/3+l9oKlOyrmsInrC/KFQqx82mtFlM79
	 QvKZzflfv066ztfcja21kDjN3KHYLb3FZDvYy3sRPIkEtVpZnSrl5JF92Ddx1tk7Rb
	 Kdd37ewI8STVnrIDBiHG9DUsqv+GbzJGEtkcHsdL9fHHH8D43mWyx/dIopdlZTMEmV
	 7gDgOS6HcQ/Ydsqi7P+LJKbEoe0IPxJOmvj3XAl1i0OGX2beBgOGdDJhu+6wiT8LaP
	 Mw8G9jaK20jR7BG56FIQT94RaqMVoJyRucyPcQXs/ZSdO/ibNIar8aHlge9zllhvkL
	 PtdkwSiDtD3Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C9ED711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638043357.20386.6655929044509910849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb97472d422a88ceb57f6d07021900ab996d0260ee0820084f3332ca08901953
Date: Mon, 22 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766380433
