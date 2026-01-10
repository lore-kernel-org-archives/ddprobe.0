Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0A518DB37
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768073034; cv=none; b=k0Tz6WVHo4i+gje5LMSvcCHMmQ0qV28oOeR3G8hrvDjfqoIpJUosIP569lRkK+i/lC0GJDLvWvZKCPN7BiSKxqjTYReCH2SkO9ZWszYeRYf+zJztHYdCG44cjLcbf0ohx4LEDf7FOaToCNAyNR6ZQ8e9PQ1LzgsbGodIom4V5Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768073034; c=relaxed/simple;
	bh=X5PmKhOOvQfNs3OT4dzVWAn7EH1FGG4iMOkqfI0DXvQ=;
	h=To:Subject:From:Message-Id:Date; b=KhCZv7NMM8Ky4otuieD9mmIj6mRdLwWActuY7p3cTQTHjBPQ3oEbO9O9a6IrumygiqwICCNElpWfLTqMOODpfAD89V/zWW0cJ1dYYURime2tN0uMgFM8yW7u1u8JEGJAPyfTXz89H+2bsFekl5guY862M+y9gWA++H3Z+20EQlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUyb8K6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUyb8K6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5F7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768073033;
	bh=X5PmKhOOvQfNs3OT4dzVWAn7EH1FGG4iMOkqfI0DXvQ=;
	h=To:Subject:From:Date:From;
	b=KUyb8K6Me83thtYLu4N3yYsGYTpoq3imqYSjbv/Hi/OtPZsgn1vx06W4buNuBwiHx
	 vUU0fZzXn6hchLBIISj5+pgMeXcXShBtMIFsviRKopsegpy1SM9Na1fsoWovVpGxRo
	 beoMln6p+jxnwxZjR4JUmlF2hw7htfGaaDTH6DARLUa5voOl6eXVlqpgc8rlz37G3/
	 UGhNTOTZqAC8J88IODMFpX3OOAIUFE9SLfHzDnyihEEgyHdDueoITwAT1zlbvWWBfD
	 3MfgtD9Jr7akzoOL4/5i0F3buSGsff5t78CSoqJFRYtOTQPE3LtH1jwAgYuLd8Gl2m
	 +0B/xyusLbqSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE4D232D3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807303357.31857.2945444092304150660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6ff091fcc919ee9de297af7dc57dc6eb6d4875693fbc3e43dac72adfca8f92
Date: Sat, 10 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768073033
