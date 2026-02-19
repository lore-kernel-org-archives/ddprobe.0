Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2974E3271F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771502694; cv=none; b=lXbhOOPKhlMWoQkn9LAc85IAXw7hSpYPS+EhK8Srq1SH0+NURx3USTaX8mjCLob9YRK7pzJIN5u/0BlwHX9cEUwvx/qhMPGBv7CP+FlPACrI/8f1CMg9GWrVCHg5XlDqFLEOYxCZBSUXnrM8SbJ5vPaM7ukq69o6mydh+22QPRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771502694; c=relaxed/simple;
	bh=DIA9uZ2KSkaXblpeNfcArBiDY8h2Y/Pu8oaTWl1JUuQ=;
	h=To:Subject:From:Message-Id:Date; b=d2ZbEtI86+6qAhTLr41iQFMInGoeLEHt9F8Al6clogBxELqL44avNQAVDtBKTPglQJnmQpveknH8YVQ7vDwvXRJzUMrHCbV1DEsKSHQVVC/4LLlYfZYO24rS+COMY97iJ7IAlP6XeeDfd7W4vMQONlM9wUX9q5K1f/8hwAhc5UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WutQPO/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WutQPO/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DB0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771502693;
	bh=DIA9uZ2KSkaXblpeNfcArBiDY8h2Y/Pu8oaTWl1JUuQ=;
	h=To:Subject:From:Date:From;
	b=WutQPO/88DjaVg8my2xKceWWeO05BtkVNwcP9EIuGks84rc+8ca+ZmvK+n1rauSG8
	 425knWjXASmL7ey01mp2tRyznjEgHUwF6zBmf6GhZiQM9nh8sClI+7H+75LczxRH3N
	 yKfsTCnqS/pu9woNnUkxeTeFLrZHg3YdfB+UPiQq9u3aQ1AkRqXBZGBM0IviBlQa3z
	 8sbw+DojvUhs9z4dBTkkw1QEJ0QB2GDTwFsntuAsEWNPXcG1v89kOT0ZqodLZoAQIQ
	 Y5NIFzCrp3erW6jiBzxd740Ez8SwW8+g6fjCFn4S7oQrEQSkGh/RDhj8yCjObPUMVS
	 N5FOxiubNnC6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6D7E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150269361.4953.9268420799129206421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a7d0b1402192e926107ac00c07dde1daede7db8307c04405b0b37db47291c8
Date: Thu, 19 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771502693
