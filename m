Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F832940B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735748154; cv=none; b=E8YKYq0ysApqBx68xT712v9/t/feCQQHd98PWvZg0NJRLj+VrOucgHZZ+QrAvJ2e0MLhmtdmzw5WdiKPk+1mH/8X86t/et3BRz0Ddb5j1bc7UzWzQSpqmlQzKZZD2zQqXXMfuvqTAih8OJnZ4Pj/PbMzzgAailixXoYVuXWo5NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735748154; c=relaxed/simple;
	bh=3HHYgBK/fm/XPysvSPH8xQyYpKckK6B/i6AuLVWw1dw=;
	h=To:Subject:From:Message-Id:Date; b=qUdwKVjAkdiSKSEAAkK8qk8A8HEzoDXk1YVGsZnkoRofThyLAUPat8pIdsWoknCc7LWj7MbtXK9Bbe+X8FQ21EsEYQR8+Uy4c1ftRgQNSJFPwJD2rkfp2dwGkdNH6n3ilguMAnnBC1D6ZI6snRnUo3bdDYzbLkVQgdiDJaZZ7fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBUGG0pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBUGG0pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBCBC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735748153;
	bh=3HHYgBK/fm/XPysvSPH8xQyYpKckK6B/i6AuLVWw1dw=;
	h=To:Subject:From:Date:From;
	b=eBUGG0pm8gcICFze/j3MenoRZ6HEKBzRByOqyJ3BFOLirBJZ6vUzW2xWKAvjMHxPF
	 GAF6Q55M6MP5fEqQ3h+qPVnwGzblbV27rM5KZ/pOnV0/tZCOCn9XKCR2F7gNHgkgZ0
	 IyDbwfszgJsWVGnUn1IAyE64LIAlTvgAfA37U76wQQ7U05Gp1VSsBeJc6L14VhEIy6
	 8xzoaPYJyAZAKQ3RupwSFhqwUB5QpBf5mffYsS171r0N+piByVoteiT2afBv4nTCmK
	 MvChY3ZdAPUF8vC75OeoK8VNYMjBqeqexkTNxxTTKvhF8kZejTeXQ7+sgagp3IXY/B
	 u+5pB4O9ymPzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BECE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574815358.1005.17206368997525146949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98dfc8dc9455c9eaa5b35ded658694532b45c91e929225b3436f87e25c4bda89
Date: Wed, 01 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735748153
