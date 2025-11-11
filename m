Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF7A3E47B
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762851594; cv=none; b=Tz6TQIfjlQ9+SvxL0ydJKqwP5dCZDfDSKr4Zv7ATfWkU0nTYYlhSpDwwpgwuQ+8MIZw7CiF+/GY6qgQn1G/roKYrJCCRt9IGA9W19QDmB+GFzF7VlMycLJLOJHV3LsD+6Bzr0p7mJgLXCPAecwpCZyzwWp0QKC8geZRqsmFF/9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762851594; c=relaxed/simple;
	bh=tIS22pmON87CNcubZYXUM2yJH9YRiaZjcdP8d3x1Pwg=;
	h=To:Subject:From:Message-Id:Date; b=DH8yfB0lOfC2J25C+u4JsL77yjPrrNG1N5CocLaOqqUsyOHxV5rML6gOXfzyHhwAezQHIfJ66/HRXv6XfpeZFlNfTnFwKY2O/sbinNu+RdWDPOZ7YDiKyPXKUm9csl3jH5HtpMFPvIszc7ON29Y+DvSHB+oMlaQ8zdzD0JAdqkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhJTyme7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhJTyme7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D98AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762851593;
	bh=tIS22pmON87CNcubZYXUM2yJH9YRiaZjcdP8d3x1Pwg=;
	h=To:Subject:From:Date:From;
	b=RhJTyme7GvG1e3d2z+nKBsMUSpqP4lJHjSn6Z3FbiTm4CbNCpTCEkUZ046KsVTW1Q
	 wOLH0mtspSti8qhirdjzxiWTMZEHNQ0oU6Upa36Y2zEZyCzR1x5eB1nmn0y9PAfHed
	 Iy9IlTUDMMTRStYuTyps7tZX9KY4sVoxrsoq326zO7cxqOBv4gEdn39mU5CsDP9cBo
	 6Rg/qzOynsLJ6jeJ6HJG9dEXaGednIbcSOl4dKpwpZtQnJwIxwpwLdL7Id949qBYkw
	 MahrD5gsJW74sTfNnHX8lWDYegS1YEMJgCR2448SzI4yVCBYBIbw204QpCN/ryYK7a
	 lMGFCAzjrB5Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F874CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285159358.8190.12181887611375002846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9729e8a00207de97b5626b8eb5478a85217632f5f0b3ea9769993acc7a1eee7f
Date: Tue, 11 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762851593
