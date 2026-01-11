Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FE434B66F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768145034; cv=none; b=lLyMdDxLoNAPJkaOsqz/VORiCXU/+wbsq+NU0qPItttnK0Mw68JyUwISZCRHQH4IcAASHflbdFK2RWPMGbObhy54o47J8btvxF1t0Q2zrIeeSvKPFcooF6QEjlj8j4Q6qs6X4hbEcQ3v/nx1Gyf6wdDMxJG+ZPucJhfDtxWbuaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768145034; c=relaxed/simple;
	bh=BWBElZKq/AsFt3CB5iK1VLPDpYJ9r3rCAn0zEV0XqGA=;
	h=To:Subject:From:Message-Id:Date; b=Q7bGi2GXQWxCLuP1h1EzMNi6yOTkJqnR9sOjLVznkxsDfAoh/8TRxdVHcecPyDsRYzx+NkYSUQgCwpJG+vdLhA5kA85lLnWXsEWvY7aAZ5NmMWOTLSFFcQ2O1hQQkYctIyiKMgsiwG/Pg2IbQs5v8n5LwajwK5RACGvaf3alq8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuqRR0T/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuqRR0T/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768145033;
	bh=BWBElZKq/AsFt3CB5iK1VLPDpYJ9r3rCAn0zEV0XqGA=;
	h=To:Subject:From:Date:From;
	b=DuqRR0T/LRNXWWWUGGjBifvbFBu7ApqpzYeQR/upZTIqcoTPewEx8yuCimI7d9pgR
	 2KdI/RE/bnzJ0YM+MUtO3x2KC5rqg/DacIxRKnwA9NJnXMC8M9/FV5wBhX+g/F+iYQ
	 pe/En/4UImLH8FclYP54b2HyBCqUvNZMwj2QO6k3nhL8GAG44n1jmrhI20vay6SbV1
	 +1nlaMhfB2I2Mcf1nIAUJVZHmQIGV00OgzDWds8RYKxJwWgL6dIV4fTbxofsnhIz8K
	 SYg4st1NgL0FasnHjsJHSvj5zxsqbA7PLE5BdrtTkUKDOMx/L6g3QVvOire0AzD6W1
	 hYliD9SncPs/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91201D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814503358.1457.10576285273818047702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d63d7f89df268f6f0be6649a80405c87f90e321f2f0db4b1bbc0175e4388432
Date: Sun, 11 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768145033
