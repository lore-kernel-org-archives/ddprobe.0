Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113422D7818
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761311994; cv=none; b=hHP7QvB9UpGduoZBFy4jBryUTsrQkZqtzQ0BOjmq6NHi/PL6X0H2qNzGybt5Pu2JUTn8nWkZ1KNoNGq7zFFlsV2YN2FpFgYIh+pb94v/Ag/xUYMjO47rW33iJSEhaUDtbwqRZ2icaNVzXjt8g9HR1HEyUvYlvEloLeXKv0dDn9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761311994; c=relaxed/simple;
	bh=hSsMnB0BVRFm2Ys+gOzIO0cDyI+g8Xl4cM5XKPFZzaA=;
	h=To:Subject:From:Message-Id:Date; b=HgSlnYkDZb9U654gv09JoEWPjFe6liCq/uV4ziKTIIF0kFTpo6B8nKJEJ3hk/w5eISAHz/YAc3rkMKMGAgoxPKue9uWsSREuWcLseZnnX0nY9L9KsbzEVw3TTqkQp6rp91GDJYfRoZYoeRB1bw2tnyAyX8RpCUioo357Dp056f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH1mTkrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH1mTkrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A8FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761311993;
	bh=hSsMnB0BVRFm2Ys+gOzIO0cDyI+g8Xl4cM5XKPFZzaA=;
	h=To:Subject:From:Date:From;
	b=WH1mTkrIuhrZJbJtFMoM7C9CQe95q2k0hgvXbwlWnC08lVrxlXF/wm8G6pNrRS5CN
	 5V3gauULAHAe16KBbs5puQNbdPG01/BlpwDYOOMnGEOs8zUfE5DUZXyTGcwFnZD1zt
	 J3fUthOYupIVNlBI3pPlfiuNFroBY1/q5+tAELTM1JJwIxa+25N5s7srD4pJ+YOUTA
	 AR8WHKe6l/+lsIRX9Z0bS7r9o4hbxr0F3IkGCmkrHaymOnT0tmxcayxDJ3xYJVmLdL
	 AV7wOxWvWseDa30RK5cAPo8pasJPOEP0wXjbhj7P1b3UtCVzFcdoBLubWL2uI3d8Dp
	 PIqmHSkAcOy2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D84CCF9E9
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131199358.20237.17974752931731221431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07be95271017f379c8f33ada83b382b7043d60f6976244d0e20f2a36dbd82bff
Date: Fri, 24 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761311993
