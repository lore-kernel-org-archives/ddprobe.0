Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4562728DB7E
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752184794; cv=none; b=Fhayj0hl/bdLIvFi5h1mKRf/3xTCrIslAxbhXVIMUAWNhHpoOL/96VQ4u1+bxwwJWbwJqHuPz7ukymFwScvabG7KWvS/0wHAWeRpeUigoNe6UGl+wUAmbQ8voCVnbOi77PTj/Ra+/ziWOwIH6XC1h8jw3Ljn+x8JAgbYM/fuwxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752184794; c=relaxed/simple;
	bh=mwfNXpfQjCxcHZ6MBiOrFq7dUXl9FdKFJgEmSFkmWKE=;
	h=To:Subject:From:Message-Id:Date; b=BlwNEvS7zkCTidEBed90i8yQGbKxDDotVDt1oE04P8LV2/BJTNAgYqhULTTyaouOvGQrZkyadt4w/2h4pNPxpSU01QmGvss9EhnotuVFnVC6cSVtfy0VjqkSpeApBybfbDzqNJZpqz8pBptqNkN3RA0sIWgMy5hvnP5+5MyDWnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpwC0onz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpwC0onz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD68C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752184793;
	bh=mwfNXpfQjCxcHZ6MBiOrFq7dUXl9FdKFJgEmSFkmWKE=;
	h=To:Subject:From:Date:From;
	b=KpwC0onzQc4aCveFZmRrYgH8TQ3yV+ZCAI80rXIAaUDJPZ7gpaGx6Jk0lD3ycvxIq
	 BqkgBwAk8Mc+6zI2B7zT9IR73qUR03dYiyNK0eowT6WEgtizpHYQ+kCoVstFFWLYl8
	 lIgDt3d+fv7rMH0UdAZMZ1Z66xc4gV+0/E15WgUs3N40PKthUhBYji5JDFfG3co23j
	 engX8eSVrKFUfvi9q3Y1x+IikQBwAOJVdW94gANQ2I0m3ALdkQ9CqvHfN0ufYwcNt0
	 p7ikzY+QlYFrMcydP+Cy9q2mCabZswMQeMUmjPjCuOv9IEBjIX4yKhEkN1+e0/ULvI
	 jxAUDtXt1tqIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6EC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218479357.5466.12328284159028340567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7707e500bdd68774cbc1c6cf5e2d0b6ef8e9486d0471e3756811dada36a024
Date: Thu, 10 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752184793
