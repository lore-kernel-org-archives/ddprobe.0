Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCD012E61
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721458554; cv=none; b=rDHGYIaA5AQ60uYGMmhy3XnJIPgjfGxhvghb+iUPptPc+zVExS7f/JlV++eMiVMDsFQDi+FB8LBSaIeoRkZY/AWzvJmwCvO/QVljXRbcBcoUDLvgb9emsSbLwKy7t0HkXmsB6Pf+fGH7rhOEsEN2RxSdY71rnPVoH4tThZbIj4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721458554; c=relaxed/simple;
	bh=9erQi5VpUQeWb4lEMEie34f9c8ZmUY/Ob0SQW8OBYMM=;
	h=To:Subject:From:Message-Id:Date; b=ub1wL6fkkmLqGX4tnr8WX7iWX6lwry1VQMlWEMfDrn6gzwNtRsgUalS4L1X0RN8A+zIwkieZGdczIf7vAU8OxVcKgDh/0tAJOip0oebfx3OqBZHZ5ZxXJlL5hD/EBkfuuJCA0jqvdhb5guMT9Ylltquwi9Q+tTZ/OtpE4KfQDmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjF1I1+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjF1I1+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02C2C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721458553;
	bh=9erQi5VpUQeWb4lEMEie34f9c8ZmUY/Ob0SQW8OBYMM=;
	h=To:Subject:From:Date:From;
	b=tjF1I1+D3VpmbQWHBWi/Rt74TG4qFFoAGdNas2lnbZDwOkF1M43ro/AhbYta8EJdp
	 5OOhTzm2EOhbRNZNXpQPK26LBvvoA5RbjyjBHUIovo3x0PeGyb3UlkHcMi/nxlvw9D
	 ZbET+2bnKgAVUAFTON7vIqcRGBOKsxJXZjqMxYxOz7P33xJyZdsrBmRDi6T7MC47cd
	 ZChpMeGxpJvlJj+HWzIas0aeP6nyQdpfSzKhzuxxPBGBKw+sYMAZkoGy79dWxSlh/y
	 aycRhur2ANt6kYYXvwOSeoUWd5NQQQmr11mtPhl7jXEXhqfV31lfrCOLCidVznU3Gu
	 uj20JvYWWNTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99163C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172145855362.16839.11968108058256623519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957be66d4aa76d6c66bb45bc879dcb806d7d7d2b6e48ca948404d1756165d67d
Date: Sat, 20 Jul 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721458553
