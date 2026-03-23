Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC8F36EA90
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774253693; cv=none; b=Ea/GfMJzrxzOugqZ4efIChTCSi8yfI6caKxDgPWXzHNR8VSOi9lqk0fLFA+vnRGxlqwpZ3iO5TJkf6H3pneFjUmBS/rhV/5ps6//HXHndYd2QYVFEqh8xJoFqwL/wScv9ik96bYnJQ+NWobOvrVTBPkytLRUC5qDs00ZIsJILKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774253693; c=relaxed/simple;
	bh=ncVDql0+1u0Td2iybtzc0EcwzFzEWNIFFw8uGW6YsSQ=;
	h=To:Subject:From:Message-Id:Date; b=P9pmTQ/X3v1XsEkEjtWE4aMZa8/8WF2ZTWlvFk7bogJMpEsIJoGYYzJeCDaSUr6QLTrbSs9KWzsXwlTl1ZvDIZ1H9s60jk/4+Huqr2MPDgFlwwQunEeyDS3906EqBiOu/XU97SbujY+lYA+dbQnNKoNX7WMTfqn3n3dKrZCmTZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ae9ffBxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ae9ffBxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A3C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774253693;
	bh=ncVDql0+1u0Td2iybtzc0EcwzFzEWNIFFw8uGW6YsSQ=;
	h=To:Subject:From:Date:From;
	b=Ae9ffBxJ73WFTXu8j0RdkM2EbFPEBGoVZB46H7InDs4rFBwm+/2bPE4iGaE/mWhAf
	 60LA8sTXksVb+Ki2Lz2Npoe7/eolKHG81nhyK0YHDYJJPL3wP2YkE+QyyINwtUmriC
	 vx+SF8Mn8cO+3LR9YIc6VVm6uzUIvcuMY6Ud2xMt/1SktXJyr8iPrBb9FgM2mdZjEF
	 3YrU4/n6goEY3Zu62ti/uEYnaG24AIv3CsIVUYTxdqe70BkHQoXEd91Q15lFy2cSb2
	 3Sor0pvE6woqlCWcwE0CyGXQnWz6aa3ECTehspu2ziRJLnzQRhKgkBeXeendpkEz2y
	 dksjfNphb+djQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91371EC01A2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425369358.7349.16165763296874648189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6e8b059bb1b71ad3382d34498d1df822990c7f8cac66b4599a72bf2f0cfe4a
Date: Mon, 23 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774253693
