Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA9D266581
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746168594; cv=none; b=rLAZi8YzHwr3hrB3866iZdsTYjiwqVPyOaxtdmmS+0uBuZEFDSBrVgL9WL7h3tM88sAqTzMtu20FnU7wuzgdhotCgNLivp+VsQqSJg2HOlwtucuMqE0DTCJ7UoK4x9dE8Tv9i1CI4O4QhCvUBzQWKsBtPBSdi6EqEdQxusz2SiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746168594; c=relaxed/simple;
	bh=u1stHD08+nCgYRtSzLwJGh6I8xuDG83NMTEI9drzKIc=;
	h=To:Subject:From:Message-Id:Date; b=Qv3AQseMtyCxzjgn2ocE8kNQEpd3l3b0Dwqf/om48cwDFQqLi4/828fetUOSplHDsp58GPuT1vHvOn1jwc1YHmJN1XmRGpfl8qXspDqwuIZVy6VBWRc+2+ltMwMGzX0t7aJo6H8zm/8aF0wPPya45/7LIcU3YJFBwk7vSIDZQdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG5SDn8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG5SDn8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5668C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746168593;
	bh=u1stHD08+nCgYRtSzLwJGh6I8xuDG83NMTEI9drzKIc=;
	h=To:Subject:From:Date:From;
	b=sG5SDn8XH7kjXWyWbZhZWS+tCLx0zzSEGNF616/mKdUZs7S7kh8EXMunUukViqmTM
	 R3Nd8SYOVWq8+ve9E+pfgpKrpV512cxI+dd3GqO65yjF4sau8vSvTMgy/SzTiAWwzV
	 DwIs1lWaA4WVGT5FOvhPF9TqY3EFinKMd/Sog6nA6ZL4L698I4sypJCra6RrmvOLhM
	 3BVFIRouVxuO7etN0OYJUd51KzpeaGEeQ07SwrsTIpF/nNWk/ofz/T1CntKZAkelUR
	 LRd8EZYh7ePcSTNGt4SvZ9oLBwH+mKtK73CdYgV5h3HHCtBmbeyZQ2XFh5iMcJbhax
	 tzpx3Hs136oEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9561BC3ABB0
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616859359.30222.15075126938976886952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25e96b7c56a7f1acaef21db4489a44f4390d11ec202b300be1a7dc8f1e5fad7
Date: Fri, 02 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746168593
