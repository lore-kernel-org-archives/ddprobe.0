Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB311CEEB2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743280794; cv=none; b=LABZhnSxSes9vATShLXBLoMTiELqDPkqXFnz5xQ7BDvQ0Uu/BtkGxE/LHatGD51GN5B/9v3SNv72jcLj+JAoTfTjids8w5UNQfot7rd/CHymD/rd6Xz1WsFcQCJUbWEBYhBeFkTeSovC64dMhu6DgSOdEsu3kB5luQH8hxCVJLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743280794; c=relaxed/simple;
	bh=K4HM9KcztCzEKD6DBMYla41rN/4HxunGQDKUMC1LGZo=;
	h=To:Subject:From:Message-Id:Date; b=T45ahfh5biseJXJ4nyBCI6uA/GCOej8E5DHj/clnwSngXieM8mTCrM6Y3h28HuU1LYmMsaFaCM58lyY+3GafVbJr8kzQC6As90YR91xAP2UUHgIZBbIC+Ej21H5jXrEHi0gnlqb0XnYRHLYfg26ZhBVUNjUa8XDcqe5bvXzy1Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=II3YvQfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="II3YvQfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC70C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743280793;
	bh=K4HM9KcztCzEKD6DBMYla41rN/4HxunGQDKUMC1LGZo=;
	h=To:Subject:From:Date:From;
	b=II3YvQfS4hY6WWigVLTPo40lRplouBE/CaIb0e5msJN96mwZPTFfnmW0prPuPUyvf
	 7Z6uDzS4cZe0Yg5r+q0OjrUJNPCSzmYr0EYyfYWtnQ3B/GHp8EQBSLDAZ6A5GPykrm
	 cwISshB6MYEWeJO8kZBfJg1trpI6FIccjsaCoVASwXrGGxZiWZiy4E2gQ9soGygj0/
	 xOyeBAbagT/ZI+SJ0DDF2I8mG+qTiI4ovL+fIFYshOpEzbOEPyVmE1iRcvBqpS8VBk
	 /FguQBOCqTRURts//h4EqJp6ytworbcAORVzaHNcvV20otLyqyLiC6Nj80k5HaWZKe
	 lprDsQcxVtJ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2304C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328079361.12795.13047097096881886955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724896b48d762e92c53b2c3277112347f67f8b74c6d1aa37bc4f6a21bf93919a
Date: Sat, 29 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743280793
