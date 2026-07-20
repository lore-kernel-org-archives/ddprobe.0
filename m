Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4323AC0FD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784530114; cv=none; b=pGs0GiXkIOjzwvZoyKLuZnWtJwHnuoPV9xSEbGx5+MPNNmNyeAI7CEYBzmGax0bsr6aeuV7xbQ1KOKtCH+z+ovvXdjogBrDZg4wYj+9nAWUAdyekPqsRbC5SkJ+WGxckPIkrDiTF6HspHO1wB4BBv1qGbwzNgs5Pw16UI4h3810=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784530114; c=relaxed/simple;
	bh=C2RpQt76e5QGmfYVQXlrVSzL8raaDou+deEo7Bb3n0g=;
	h=To:Subject:From:Message-Id:Date; b=ATKGrPDuaUy3lkmmuxNdRE2PdGcxJPusd7FrnO2yr9TXaeUM7LSkeX0O5tPRvtpQTlh+Tc0kR6CaGP0cYRU3UyuyRLdvIO760pBj9dmKqqok7NnVTQC5ryTYMd2vw5SrOPWcIyYZOhxfsfJfL9/W3ESekmtk70wdNOEjBab7FvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABPjUd31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABPjUd31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD223C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784530113;
	bh=C2RpQt76e5QGmfYVQXlrVSzL8raaDou+deEo7Bb3n0g=;
	h=To:Subject:From:Date:From;
	b=ABPjUd31H4AjB5bPNQpGwTnYw/62v3PJrMlEiQArYNKTYEntQ2tVqiQ/juPSr9/VQ
	 D3Qp3PKy1gYpc+f9KGkJpRqUYbWA8R3z3srcS8RsWm3Nevac3ge3Ubx5ecA255MCjw
	 9/HbuL4zn7d9uhCnjnrFRMKxi8kuOtoj00ueXzQuIqC2PY0M4FBivbxP7dZLpF8OqT
	 d7tw8y6llCmPyfpCa9xz5LzT/i1LC34pxgmK2RBIS3JWD/rM45yJxvmF+PIcRHRs76
	 6bi6KX4fxYPT4LajE4gGdQsJvlHQYGWv9prdDIVOApYiWrrbMWqVU6ZYylZ78M1qMY
	 yot/KMAO2q7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B637BC44524
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453011373.25032.9681855800892070752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c443eafc63f53fef14c743ffbabb2d2db0725452cc2ba5ce575b94ee736f40
Date: Mon, 20 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784530113
