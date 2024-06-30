Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6437612FB34
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719768863; cv=none; b=RexnqV6WI4lOdJ2kpT9L5m3IMjPE5hdzpyHLSLzPCAbZDib4rL8gCtWmx8/iRO93l+L9kx8KwLveKm42kiZi9eV0/4a33rYIDHyCp48ZuzOpl20sPWrVN0QK0cFR2zeOr0VzUFVw/EQdu2TXp6ELGxNlRkInU18dptsDQD9ugJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719768863; c=relaxed/simple;
	bh=xoeWLeYNBBP/NP7Lov92SQ8xuoCbiz1KnVmSWh7YdXQ=;
	h=To:Subject:From:Message-Id:Date; b=CrcCY9JtpDaWrAPwfU56Plr49H7wV7kiGAKR3KWbo1s22SDrKiEXBLfFvXId3wvUAHKX1K3KbR9uX8yetmqiYvIgY8dR9qs90N+kZscZw+RXMu/WX8NZKsAUJY4gvPkmnb7vybJE38vL/Y8ujKrGY/zmxye+ZggU4bqXX4uy64M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mC62+CMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mC62+CMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38B4C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719768862;
	bh=xoeWLeYNBBP/NP7Lov92SQ8xuoCbiz1KnVmSWh7YdXQ=;
	h=To:Subject:From:Date:From;
	b=mC62+CMdYERSGj4kPZX5nkkeEFCSi8E+VMJAPGHkmVSDQdTCaeJu7LhHO+W6CsWNh
	 XMPxudIJq8EUoc6QGCxBe/jdD+XKS5HOAWMopWCuxeCiUlJpR47L0S6jXw4IM0ciJc
	 wtChfAjEa+olMXucH2s424bejWWQWB9VUh31WHzzt9UFlS1Insxf8yloFPq8mr93w9
	 ASnIbagWlWxbLWxDphFZAPA1lO7SrzsQnNgRE1Ae5kwJJLSfoh6pDTvRYvfNTvhfYT
	 +pRGXxY9SV9YveXUThWCdoExQh1F4vtCWthpYSEHyJM5TgjQjssZD3Fe1BIbwx9G04
	 u7bxnZm4GYE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2516C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976886278.31591.14334543590479140299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963a6c5a2e49ee7c875fecd91cff6f6c19d7468c4c1d86f2d88a6afdca2ebba8
Date: Sun, 30 Jun 2024 17:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719768862
