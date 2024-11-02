Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587776AB8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730527554; cv=none; b=Hjp714Iv/WiMkWlGtxwIcICOLMLuEV+cAYuroFvDS9S4bwK+9JjYtkgRDlkEHOaFryBOZYDHe/NgQg4YODuS4q64P+vwofxRWT0cg4xdsWUEJg154qmCXBZtyC2PpoeFK5hrsUJOso6bdl5n2OZPIg9GEi11qg1hFSZZZKd3x2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730527554; c=relaxed/simple;
	bh=HIcBHzDwVw+L7HwlROtwdvlIlLbr9QviQvEZXjNoUuU=;
	h=To:Subject:From:Message-Id:Date; b=prKtiZzDpAxFjFSqkX+S4XqTB2fr2+wiXnMvrFfgZaotfm6ebsT8QfMQmVDk614XPJIAC9rcTchsn8Xc8znrGoPsjdCpyaJJaiZyX/ZMcg8MsARhVwW2ydhtlvhcET94PKW+P0RuNWjVZNpZy+vEu25wvEiLVxzPWyYfVvMWi1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhtkWJOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhtkWJOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C3EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730527553;
	bh=HIcBHzDwVw+L7HwlROtwdvlIlLbr9QviQvEZXjNoUuU=;
	h=To:Subject:From:Date:From;
	b=AhtkWJOu35oa+0Ps9Jv/l84h2tfjUylQwTxBBLp+ZeWLURMQZzbq5NTqKeIJbHbq9
	 unc9ne4xl/C7BD+tPA6QlIezaF0Ht9NMh67rEwb+3k1Lli1DP2VoVQmlkbB9AMEyOP
	 GveWj2whQByo1axCk5v/q+lrfdymUZy5i6cI/UmrKW/YpD1XqTqdE/s2BorHDYrAtT
	 J2byWAx2Pm+B05s/8dHq1eUoDuYkENNd8MlgMTtLYLRUZipOA7ek2z+Qy6HKR7IFMG
	 C9RjAIwavXnTOkV2KhZmAJtHkBnMcHXKZMRLQqJ4jXF1bHHNLTMLXg+6WB/g6DxZCD
	 XeEumOJVHnW1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD7FE677EC
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173052755360.30561.10810462591906186741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5fb00588e10e2db269b7dac7801ec613b20137cfb68e24e8903492f145dc22
Date: Sat, 02 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730527553
