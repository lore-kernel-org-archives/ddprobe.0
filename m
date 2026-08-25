Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984443438B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787689234; cv=none; b=dNZRRHfhIeO+m1avO7c78HuJqWjvIk7pkhjoMTdlS+kD3BW7VnjvEyuoXGQRQAXBYHcECV0D0W5Uh36XYfDQWQWpMZPcHnbyc3GdGGkVaTDu8XwPIOBvvZMRdH/EfU4LgryJnbNeS8H4+Fw1f4a1oLw7vyGJOTqogqACNz/U92Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787689234; c=relaxed/simple;
	bh=UbHujCuqxdVjGemGLSCY3lUxxHHaWACgW6QVh9e+lRc=;
	h=To:Subject:From:Message-Id:Date; b=MtzJ5vS9+sPJ9ICvQ8N19Qn/L1KdnMTtGsJX3MB/XTCQyg6fcbxcv05bMFNRDh3AsOXAEzgCF5zD94lHoX8vWWW7ZVHHE8yAwMO4EJv8skEB1DnqT9yy8unR7xjlcV2NH3JW+u1SW6tMkFmG1DGewLN89zLXET8gNx4zUuPLj4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+P4jC7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+P4jC7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D097BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787689233;
	bh=UbHujCuqxdVjGemGLSCY3lUxxHHaWACgW6QVh9e+lRc=;
	h=To:Subject:From:Date:From;
	b=u+P4jC7e5ovbXPUmV6s3KpnQxWwWtNgPLBTwvYmYH7UGnC3bL1o7NdytjuD1C0CUH
	 oxO1IlD3wG1X25gHd7BMCsDLgoJy0Kp6rkyYodITKeKnkNsMZ0esk0mhrFZR6EgE61
	 n+Kq/5tBcklA2MnYIXCVN5Te4Q7wCInMMwMqhtQFPYs8Nu/5cu6Pe9lxWfKkdVxoKf
	 Hj0w6jBKqt4JVk9Lt94ZrHqMohyy6YevQ112nEytzucD0bFwf9kghJtY6pMkdVGnhb
	 P4G45TY7bMTRNsGSZO3S/aYvD3NmhUW7rvMRhwCJA+iw7wGDZCoXAGR7T+IsV2ygXx
	 Go8ovk5bfrBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB45C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768923368.10584.14044619572907232868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7380d5e5e19b599f34531176b11e151257a9639380c5c0d22b89e32e25566ad3
Date: Tue, 25 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787689233
