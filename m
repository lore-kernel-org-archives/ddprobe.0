Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248A12E36E7
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751661594; cv=none; b=N3ob0wBBRnveUUxRmQ1te9Kkda4fp78P0g7ty4CjqP7T0Khuhg7CVdkhkMCn2dkPNlT4xYIdp+zzNrd08W169s40UtO11X6a+NnEpvE62r6Hs0T6Ez1cbwcPvLujWVRx86yaIIv+k1iNEoCCjmJfhDGvhiUN2UEAeT8pSDB3aC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751661594; c=relaxed/simple;
	bh=ucLM6GpgtghivG/n/iLA9NTeCHEZJhXGWQJGho4Ic3U=;
	h=To:Subject:From:Message-Id:Date; b=LnYtV34sDmgJOzF/PdYDTIopMVz4THDcnaAMJSNIc+bMGYBsQD+XmlFRcG4OAmui5D8E9QtxIgd51/tHWv38Cn2lQcdFb74bXkOQGYwb1CgILVFVdVeC4oNCzo08y3I0hF3JjUVXXgfPkiP0mmURnG25A83qFhlFIoEH4wfyMvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nd6ELy04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nd6ELy04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751661593;
	bh=ucLM6GpgtghivG/n/iLA9NTeCHEZJhXGWQJGho4Ic3U=;
	h=To:Subject:From:Date:From;
	b=nd6ELy04oLfx7JBzeyJB0pFjbThaQ9mmUEmW3nlB5NH+6QZ9CBw5lXRstCNqJURft
	 Lq+jmHI5QP5L1KbZxIJPrAFWqV+Ibh/8vq3wwsYVOXI5ufX7gixf2r7SiylAZyA9TI
	 Zfy7h7jRZR/Zs+XcI0VFmIY3Iu9yUWfn0t/nzuSi2zrI+FQqqX5VzZFE05ocaID3Q5
	 dyhb/SFRjXi8VBQFkTM30RDYXSgFn23k/UDxsQg+3kK00X5Dz9TJwxtZJirTLDQkYz
	 rQpcScXYKVNU6mFdHb41ZdN33FPaqhMCczcbYPaDGA0UQRrSmngM1PW6nIvsdUCfaq
	 I1+brRynuYdVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E789C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166159357.16592.3920902101338389848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af67a7dafa8c8cfb1fd84205b214c2566d2cb51defc49d7db8988626ee175291
Date: Fri, 04 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751661593
