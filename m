Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA231804F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723506954; cv=none; b=oAEGvWTZe/9UdnaBeNUPJXRkqpSyOFZcmeLvOH2PgyJIdmeIH4wRHFR3Y5AQwOM0KO4DiqnsQ/eBuj6NMYYc0R3mVNRLAEOpBwf6x4crKl0QNX0PGXr2Asj/80djoyGq+3T52rgPZRb5s7rSJbHk8TUwPAIzh9c5+yfCIkT45Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723506954; c=relaxed/simple;
	bh=6Yk3g8GjjMxMwTsy2cNGTYdUGRYjFrS1QIp0lXtvcj8=;
	h=To:Subject:From:Message-Id:Date; b=f5LECy3bbvTUK5zVdi3RrMeQ13sAWFFTlQGniSIR3pFXQqiu9kaKqknorKXVv8+HfF6GYrGDa2owkFZDt22YngBqlZvhUG5Ey6FYW3MwEKYB7joDbJ0RbbIMPFTKoEZoO+2iQnGvwpQnWOaoN1nF8DZ1yGEgqqJSjFFoMPwAaTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdzqFeZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdzqFeZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E92C4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723506953;
	bh=6Yk3g8GjjMxMwTsy2cNGTYdUGRYjFrS1QIp0lXtvcj8=;
	h=To:Subject:From:Date:From;
	b=pdzqFeZfKdXhVbsPpep/C3RWTvSVcbbTCMaxbIUwGItLSU/FxIQcaPEE5sz75dzrv
	 Gsd2AszFpihOu+5srtIbXkMqDH8uLhz3EP6GL/m+86vbLNTkjpvRfEJCsJs47YcFli
	 AwVJ/q8yadib/j4mv+oMVUzd8NK0gnOln4YQxlgdch1vzcb1P5pWRaaeiD7FdwWMNb
	 Wgcpm2/+G8HnVUaPgNEexhjHdvf0pSW+pz9BhTf4aVIHJNGjEHY8atQPElXlj7JVW6
	 C0Od1GNUQ+5u7cDnuqZqKQAzLhgTeMxy2R71K7ZF8KSDzxX80Am51zFbtcT+IgLWgN
	 7q9750BB3r33g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E44C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172350695359.17332.7921332388768288110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a95bbe472444aab1102a97b0c92451b6d85be57f8e26a07469ddd31cd612eb
Date: Mon, 12 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723506953
