Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457FE13FEE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780710274; cv=none; b=Fy83MIbj1Fbss0EZKjA59CzQbfRe0/ZVwIE9QZgKoej3Ish44HHS8wr/hfycW7/lq3fj/bMy2+ceWMh4gaNOB1G/WfoUXLfUmXg7UC6oXIqf+ZfT7Ii3aoAOaHoYHTJUvy5P4dm2S394HnkaDpBZwBjlcd+zsTax0k5FOB9X2A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780710274; c=relaxed/simple;
	bh=3HbmqkThmWUt6lXPZMHfxxzcK0IqBiNLF2OWmTYqBz4=;
	h=To:Subject:From:Message-Id:Date; b=dt2PcoT9XKb+BR1HDCbhQ6r58jxD1Eg19l2Y1SS/0ukb2oXyWXvwVGih0+m/zRFMfTqqLWQYF+g8jJNkg5uXiR2s7vNlfW7Nkzp2UWT2kIVy9d8bp5omGf385uOvS4l4DBokNdVIh/xDy0HU8MPJUu1Fp3il65ggwPU6jvdwe08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1IwxLC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1IwxLC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1221C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780710273;
	bh=3HbmqkThmWUt6lXPZMHfxxzcK0IqBiNLF2OWmTYqBz4=;
	h=To:Subject:From:Date:From;
	b=r1IwxLC4hMKIKqjxHlE25l+E+w0wx+mD5RHWjMdP2lRzVodLWPriJPz+aE+gBj2LZ
	 GusYRbakgRy/VERRRhPdPjSWajiukffAn8QB6Ee17sRdfBOygSw6ZJqLKUw8FwgRD7
	 IoHjxOrMbhA/A/RfFhWXnd313TuCbG41szTvMtBcT8+Bp8wx8U4gJG3/ebv7qB9/iC
	 qI3a7BvNkEx+PexxZpHtO9HtdxJpFLHWcCR0YfiIET7auXthqyE1AHTrPO1bnatZd2
	 5QXfNOzoZP0GFHlB+KAwpRzhSvYwYa/iFKICo6pQy4g3tewCiiCacyLUfq1UxP6oNs
	 7uob1W1IzJBPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA98CD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071027369.14779.9791400837859946517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed5a5b52930855596d84df49bd0a38daf42b6b499b799560a7417b090c85b32
Date: Sat, 06 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780710273
