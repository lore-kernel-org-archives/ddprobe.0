Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585BE2EFD8A
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756807195; cv=none; b=B7os5nQix5r41zFJzZ6dh61hwhPS3/W+QqF+/K8VkjGd6bX9vMP4b7uP0/E9a22N9oFrhyy0sPlZiKlCvbWX0T9itp03ULmbK5+JVfmApXgd5nUIM3o5eBt5B89MJUC/OWFgUNPzSs7ySgL3Fr+A+653imxaBzawT33F9xn5XA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756807195; c=relaxed/simple;
	bh=4MM7NVn3zfu4z/AKeOe0QNSOSnEP48z9CgiBaWg5TO0=;
	h=To:Subject:From:Message-Id:Date; b=c0oSiBFo3EllHu+zbCbCA0eEXqzSCHFx/D5OYAd9QdllrVizY3HD+565Ilaf956EHTLE/kXK57EyR9WTgMRkUOQR0BbVUw1U7LHoi8p3Mr/x1djvAe0vaxDKtmKoIvgggjAUkx2I43Y9gihpvd5v9ZN5e6A7V85UYKUxcyHWQ40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8p8ErgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8p8ErgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5441C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756807193;
	bh=4MM7NVn3zfu4z/AKeOe0QNSOSnEP48z9CgiBaWg5TO0=;
	h=To:Subject:From:Date:From;
	b=U8p8ErgGKHh/is0A1MMTNBhDCm1Iml3SLX7Hrr/oZBDNcI0IVGDEaD6hqd8gwvIOW
	 iABpIf9+JGV/dJdWYmzbSW/+fB46KA+arWa1JNzPRIYIKH6bUmIwVy8Js0XuovgNrP
	 7BLh44kYthNrfNArNCsosDNqZ/Ix4jcyEneNgp3Jlxxr+YwJQYfqw4X5xJgavK0gw5
	 ONR0nRWRwCRKk+M3rUFQycFnLRjf/bvxso4lS6xd3gGwc3wa/2zZtErMd2eDapkBqk
	 01NfoVHdUSODMWnJQ98oD1X+knoZW5RsI0A5VmUAqrIMJ50UYMxIPBCXdBtAH4Tv6f
	 aUDhr+wPVCEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A6CCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680719357.27643.16093771703920341362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cbb37f72ad8bd25f44093067d905b386247078033f45bdad73345d254cd558
Date: Tue, 02 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756807193
