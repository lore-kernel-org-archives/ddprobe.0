Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6914BDF4D
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717847843; cv=none; b=FOMUwlYtOzwV6AdKgMzQMgQTHQhnxCUFpStwNmSD2/Br+6uRd8XTw0CifyXfPn4h3M6qI3PqP8rrpb4yipb1x/wvJxPyFKLOQ6xzQASM33UhtRkktOSEgfmKqn99uQGTuKaGNQHus2l+TB2iG0hRYGY4XHSQwHq4ENYE6ohAedM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717847843; c=relaxed/simple;
	bh=3bRuHJdPfHqYhE5JKT4eZJtcBvTIFJhAZhrkv0A+7Mw=;
	h=To:Subject:From:Message-Id:Date; b=PiO/Nnu6s0PG5gLPdI6M7b3Ugh0lRL3O6Ons28zHi3onm96HfIibL5dKZMHUVA4uJWnbTRUcxkwpPfMoNStfBx7/26LGKjBnSgyIUH8IlRFClUDddgKsTM6fPFmVk7RsWhazkpns9IQ4HYFgrGGDc5FBUmfhqfHMBJAF78G72JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwG5iA1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwG5iA1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA22C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717847842;
	bh=3bRuHJdPfHqYhE5JKT4eZJtcBvTIFJhAZhrkv0A+7Mw=;
	h=To:Subject:From:Date:From;
	b=gwG5iA1wbOi3+zjB5AzjrOX8PwMwk1w64wwF7rixRDPBYOEBkFH+5n1/4gKllvnx+
	 m2qMKh4RqUYmPi/5jO2LUW6QHPlkLuHeYIAi7/0/bXjRYV1SkFg1V2EJCxJVj1l6l5
	 nZwDHBv8DhxwRe3+9tnG9dFuXnk4U78BVvEIiHTFNEjNJPxaUjQZPWXqSHvBRQUVtz
	 Jqysi7jJBGCydGVasip8JzKKk7OPeNrmp6lqzEjpd9BthPDNAsTP7Ti8qZa1Opx5Bq
	 Tr+fE2bMjZinfyO1kwnhXZD9qEIcpBUw6HRm+VgWyoWSTjSHPmXH+9FQjxu/NX0ICU
	 fIVLSzcX8iV2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44A6C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784784278.9395.4011499661851892846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908d8005f38bda930391a2efcb54135ae8a65b6e94c81732df71bbddeada9ea7
Date: Sat, 08 Jun 2024 11:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717847842
