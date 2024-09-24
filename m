Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D87316E
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727157954; cv=none; b=HEUJXSlsrKuQfLJ7jRNYe0hm2Z6CayU5GwbEY44UKh/q+OHdrYWbzvD2eICw4mYIOq/7arf4cahLeK0wT+tl0mdxAvTUtSsWtgYrx48eQgE+NEU7DVB13C1ZwHZdUn8ZQpOi0WVyBMQ036eaDni/DNzCwdkLNZW+nuVLZLBMDik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727157954; c=relaxed/simple;
	bh=Ze6/xVwlvyPwBpqf+o55fUvVUD1BmbCfA1P3+5uJqoE=;
	h=To:Subject:From:Message-Id:Date; b=CLdEpt/edePOrKS2KrjcT/HshNGeQ0Kr7zbWAfF1MTqzM0QZ2rTlMrFHwhBo5Mt3fHbyTOkloqkb+jKzL2rtmS0HM/3pqelH1NpV6u0cnGRX1U/H8q2M4FSac+GJDptg950j0W1/sYK00i9vQuQsv/eZzDBgTRxabIxfflBAXrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jU72VRTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jU72VRTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15E6C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727157953;
	bh=Ze6/xVwlvyPwBpqf+o55fUvVUD1BmbCfA1P3+5uJqoE=;
	h=To:Subject:From:Date:From;
	b=jU72VRTKZ8btjNLdSI8xqi+VSJ19cHPvHDbNDiFZyNxqZ9oinqhorNC80dsyRlqW5
	 QKzJaepcfZHSTUjHXvwweRqSuEF0R++XoQtYmrDc6LPynNkvFwGnAEvx3nT9zauV6b
	 O9SZz0mzeN/YOQFLI3jGu6R1wN7heqEy7sHY5rlh6srhIAMKfq9oDckckGkxgX6M9f
	 rf4L4BQCsOmFRdRIzZBKngq4q3ioJbPVd4or3BIzlMNWye/EBtayimczV7Zr0+g31v
	 OtJFXDxhKLb+13gn1ib5fDYdvfZk+wbteUy8SW6bT2/eTyB6Vdt9GGehxirg1J8Qyr
	 xrdqEFKY736QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91867CF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715795358.9025.5148201227994811193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8191c8cbe4c6b7df6489a4f349acb9634a17bba0b80ef34976a1943dc148eb6
Date: Tue, 24 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727157953
