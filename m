Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3766918A6DF
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751755194; cv=none; b=V5pqo7eyu5Q+sWHniOTZCXBvSoXvm0xCL3bGRO08qojUmlY9cVlxrlYDM9EU8ZZZ8Cr9jSb3c4MusvKEFE7vYhuX0sFvnsUkjTbhf50xj/6KGRDcnPQIi6ssVXZ72nOANAxKvdvU+RSGQ5grBTrsc4jBhWFvtkDyDcaXTMRj/ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751755194; c=relaxed/simple;
	bh=qPtYPwlB86gMdLm/Z3ISChPI0cklrsdQ8C1IiFZFnD8=;
	h=To:Subject:From:Message-Id:Date; b=hIRort5tIVcfkpBCjVK+O/+siuBNdOtKrRhO8nEgMTrGUSjKtHmx+yIz0NWSHNgXgz9HLbRnx7HrPoZNVeI2VutxqAryQibzuGKe3lRoMgKp/gY4w1nfNRQ1YUIA0aYRu5osu5FiX+F7tiOAyU/Rn691ne2M+/iUYcm/lhMNgZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJSnkEGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJSnkEGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751755193;
	bh=qPtYPwlB86gMdLm/Z3ISChPI0cklrsdQ8C1IiFZFnD8=;
	h=To:Subject:From:Date:From;
	b=BJSnkEGG0aRTwiKSubuHtkVKepA9PUkj7twIWHGyJQR52K905y0/zbJ0rZbpgFbVe
	 LqpZA/baAlr+KrfaK1qTnUxYimpw/RnWs/5VzZOFpFB698qoj9guaD87CZHlwmu8Yf
	 G/6X0phWD56O/W2X7A6LntvTYF+ySwBe6CVM8QR+nVeJFjSYqEMUlAwncR9k5Gvawz
	 RrwT408yyt51RTCRrGCNmAoMfUCGRxY+T1oj4GFF/iE/hgd8Nj6fsIifKndDXwuTUB
	 t0JCXKEjnk2x0jy3Ki2w0UQ/GVOVAorenA++njqng4TQhABMQJrO+8sEZQidNIhLVP
	 VdJctj7F/53SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA17C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175519357.22033.5100203699287137644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af2b735fd47095a3a63f9450402b04523c52af994990e2166875c393ba1ad86
Date: Sat, 05 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751755193
