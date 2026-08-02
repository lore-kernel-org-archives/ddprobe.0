Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571D923504B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785695434; cv=none; b=HMp3zhcdlN4m11bf42ZUDXFIZIe54MeQcqAuOCEH6yL26nwzTRqFqcJi+pJj8bKX1O3eTGxD+D/gmmzj4+KYO3EG2MxxEtXFstJZiV1vaE6iAH5B2rdqJMMYZEsqkfPp3pQtX1WvRjg2XnTRE34CTRrfHhqsDOMIxaBqhPGOVT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785695434; c=relaxed/simple;
	bh=poYwMKkAphmS92MW/Vhx7TVCZ7oecYD2f4HmzRE6/Aw=;
	h=To:Subject:From:Message-Id:Date; b=EFKhz71WGMGter+tMQwQwxgJ44LiUtaZUa5wTcFsva2tT4HwkBQFF7G2kc9Kx5eko9oIuNWwOBsciQDT0DQBOa33zBlfEG+1jQMAVjFlgAxjrXZet9L4RjNZyjwh0rYafvBj8VZFg1xBJVkh+IHIn5E0jjs7QTbmQZUJpRwMyRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZHf7d0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZHf7d0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A2AC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785695433;
	bh=poYwMKkAphmS92MW/Vhx7TVCZ7oecYD2f4HmzRE6/Aw=;
	h=To:Subject:From:Date:From;
	b=cZHf7d0pbDSF7RQlPacc/lRiHWk1WzBQMX2qF6oRzyu+APyYym2byYWTnPwllwui7
	 LbvPB2fkYZK2ZfQNqF/yIo95UJjhXSdQEVutS8LFJgdgoVygclm3jhcE6cXX6OB/J9
	 Zc44POxahJ6wToExXhbo5Drk4bvgoJJtVOVOPyx8qi22Juv5oH+fFoPpS4cf47tuBa
	 YHs85AAjqDH+2Oj3BQSQo7xIv7sSjV1gmRqU3LqHv2vT4n2NXHlXjMhlHfteTQ9piI
	 seRQMLyfWFqvjR5F1h7+mEFNFAvmvhHL6FMcZticdkaoF97XNjIU/T8/0u+73qnTOM
	 gjsrBJA6VAk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0430C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569543368.23564.2184776894253452132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3e1182e1694868227d1f1a17ee141c5227f0f468eef5180e3e02a4387f91c9
Date: Sun, 02 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785695433
