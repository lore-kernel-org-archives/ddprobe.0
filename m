Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B571C14
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715044943; cv=none; b=HJ1cvmQtEvRTceGyATCwjQ3E2sr7BZ+JAZ2Pv/Sq6xgS39RAdc+UGUAj8c6jdy4PKz9cq7P9//UAxQOcicoqsPrvKyJt3WqKuXREuQ8VhHvL9Qjr8WbR9IFFblUuk5YbdHs27MZ2lScIv8R/jUfIBeMdTjRRk2aA3Hctk81lqLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715044943; c=relaxed/simple;
	bh=SW0eJ5LKrBFzRZrafimF0qfFw+qDKiSn1clcajuieiI=;
	h=To:Subject:From:Message-Id:Date; b=U4Moowh7LNA1BA3lSALPSBjSoyYbmLjKD6d2aLT/HaXMTUAsy2ddvVtaSxM9bkpQmXzsLp9bRY9ixMiw9fOTwqGyNpItDps5oVqn327ZoxXh8t5j7qnZVSpFMtqTZbf/7EdrYIGJ0Ei9Zru43P4J1ZyT7femMVsKDjn1zGnncvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIs7t1Bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIs7t1Bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D707DC116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715044942;
	bh=SW0eJ5LKrBFzRZrafimF0qfFw+qDKiSn1clcajuieiI=;
	h=To:Subject:From:Date:From;
	b=YIs7t1BsArk1bokims67V/Octzn4J2/9SdYpWgUOwyIUxLLkkRDPX3eDugwH5KZMb
	 4TQR0z3OqsBqSDHQebBuC5o78GFqc8JBh/sLOPME6/aRwOp7ZYuXW9miexAp1tMPXy
	 /gm1YqWRBHipRv08tGe+7m4GpkZEuF+343zCjJ/Y2Tyb2fynTswfpxugtpR3j/j6N1
	 J/9oj83kk/vz/D+WdtvXRWzFvRbAl8CQvi+d9d5PxFoOsqUD58hqaAaxtOeJKA2tJc
	 KDb1CUltm4xFXwB0UFOYAwUx0LQ0UMlQvpOFOdyBuxScs4oM1hZ9kVEzbyN1LL5qKE
	 N3x2XVHBup93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8F8C25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504494276.27830.7476533234305692826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c99caf5ca83de70bab0252729d4b1d5cb77c17fcb7a1d66d70c2e456a0b3a3b
Date: Tue, 07 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715044942
