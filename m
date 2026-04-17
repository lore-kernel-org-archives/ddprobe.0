Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA7E1B4F0A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776406054; cv=none; b=UvpOzAD2OBOjtRw+B+9+lnHfMPwjFzzZgMjNnB+dEK9Bdsulp6lkVEVFXFdgVQlkM9EgFN/rKzSH8NdQCj5JhyCxiLSSRHiAUtICscCJZvJiCdHOmrYD2VQ7Pm1OYJUjhUWonAvW9gpY+d4do1L+yBAJYZtHG2h9j9QJWnQPVpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776406054; c=relaxed/simple;
	bh=VlYTLPFVHqkl9eMPA3GAYpK3o2h+QbgxYazb8ts2J1U=;
	h=To:Subject:From:Message-Id:Date; b=u2a/NS998AaZk9tXGcUIb9WpZZ743ZUm8vbUn3+W1BU/xCY+kcQRtwcPafsYEI2cRVmjW5E8GRVfx1s6Tg4ouZDh7nYe+89klBAQQKbS0op+gtPNeKj8xV1La4K1Xmxt6F0xW86qBIOQ9Ac3Xme67dX7m9XSsE1++Oa6KA2lD7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbt9NPWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbt9NPWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA86AC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776406053;
	bh=VlYTLPFVHqkl9eMPA3GAYpK3o2h+QbgxYazb8ts2J1U=;
	h=To:Subject:From:Date:From;
	b=fbt9NPWjguyHqFZfjwpxLqY61S2AJoRjjrBnLigUDGuh5ZD5DEbBZ/QmAk45aSdyq
	 S+w4IFtUep5mv4tMY+Ff7yEKElIuKGI04ZlWFx0s+u1zucxWmouHivk7EpQWWoISxE
	 th6ltwytiHkgtbjg532GfNAYYcOivjPI9MYH8OvcEaeQRO8lbexSZ/E9ZKtx50TIFH
	 AEhk4r+KtqWLdzXjVP9Wzer+0IEQIcSrwxJLbpG8zfo8F8+0JNsf/0xJKvhGCdJvIa
	 FlqIkibKcNnWih2fAK5le/eE4sXH+D6JIkTln0x7rCNh2zciF7x72qnptGzLGqPPBl
	 EcA4v9B0XOb2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B8AF8E4AB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640605368.6599.2543636045015517006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c471ea14aae17c25162e3868a3cdf52acdf9bcb123abb5eac4242db71a4a9c
Date: Fri, 17 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776406053
