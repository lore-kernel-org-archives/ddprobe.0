Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542D935E1AD
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789161634; cv=none; b=aLYSjzY8wio6Ozjgu6xR0Ngm9qkgtGKeN/eLBSAFgxYVLYtsR67MWxvqWtoT5gExsM6DMfbTRexuNlS4I+UlaAKtOxpmb9dHqzflc2+u/KrC2L+gWvulfW2o4WnP2n6TeDy9bmVAJZcLarq0Yj+VwBj8IOvBirHI+RkhWR+765c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789161634; c=relaxed/simple;
	bh=fsHcHJW9380+3q9WyFrXKQOEt0YNwgMUoEf742a8tPg=;
	h=To:Subject:From:Message-Id:Date; b=tnO0lC7aBSn4Ie64nFF7cp+1CanM4lBvWV9C+oTRPJ8wHOArmooM3FpCnl4URXGV4DYqQStedkbNEiqEHDuwayJHpWwQ5F2V98dS62xambH13bG0bsd4DghszyYTzv86tN3PjRDb7vATxIdgw28q8s+MqYearn5SGGM6QKnzEp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlXb2kty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlXb2kty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CC0C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789161633;
	bh=fsHcHJW9380+3q9WyFrXKQOEt0YNwgMUoEf742a8tPg=;
	h=To:Subject:From:Date:From;
	b=RlXb2ktyC9IdOmpUm/vz2IA6V2NY8TqHpGmZR3h2Icep2a4V12gPHticY3rfXx983
	 EELtHdWkgGZ8OjJ1kCccT/+8j3Zvcc13K12bRHhyFaG2UNYLJMd0Vtv37e5l8T4UlT
	 nZhHLPt4nHuzIizVFqAHiqcjmoPbQvooPC91j0hh7pKFSQJ9VURcSmqMNIKUgCJOc2
	 1GsNGtkPohB9RuIHiFcxNpi2eDrq8Ski2PxI/pFOOevZLkg4SGqr4YQ6WFoBDaq01F
	 gqsZ/8uUnCySU6Ifq5HM1PPR2wmCFaO6eVcFJ6zK4JFL9v/MzDGnS0lUD8wXps9s5Q
	 iSmiyYRCNPCRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B149AC88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916163368.15104.12397729618524331324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8bc424c2fdea85fa019a1049c099d5b915db9feaf4125b01a96ce81a6c5748
Date: Fri, 11 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789161633
