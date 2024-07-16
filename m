Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AB11CD0C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721109323; cv=none; b=U/eS0fy5GV5Hgg7ICYUx7S8Nlev/GHHYnomBdcwstBfdZZWQrAWQPxuv0eKuTsriWTP32KEWICbQLOmaK+C5nB4j6sZlRPJUUy8YJNxLTFBg999bj45er/uzgF9HIGgWObNSnKmNdygmEmUzGATSupWHw7J7FyzwjLaYfohCqYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721109323; c=relaxed/simple;
	bh=g6vRjS/vqVGY7z7tdC+nOl39WQFt3fhm9xuZovS0+cs=;
	h=To:Subject:From:Message-Id:Date; b=Q4uD20a38l4eeszhgGEJ9kKOqKJrEXE321HwTygdHBBRxQsAFneX8HXwItIawIFMWX2aZ6cBCwxvRa0ip7TkOkoumom/5IKDbkNQKeR5G+LrNU6icQlNEVRLTQ4tufN0mI9gW6qKkDqDYXqMJagLwUf1Um3SGd+4PmtGG6rceOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITfvEVVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITfvEVVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E51B5C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721109322;
	bh=g6vRjS/vqVGY7z7tdC+nOl39WQFt3fhm9xuZovS0+cs=;
	h=To:Subject:From:Date:From;
	b=ITfvEVVu6elAFP3KEjQQgt4A1FCiXDAth/k+7PJLbdUh1qWG0g/8EdlAZSfwIgCfF
	 l/wdlwcsqcSe4gtnE66sCzr0rDqwl/sXfeW3zVsRC4uYFBtfM1vzVkFz4FauKNK9h6
	 ffimbJNHC6LDLB57z7KeFkZG0lBa3m2/ct3xYF5AeGBQ93BPbQIjTrHf8ViPJcugxR
	 eRf9W2dGHR5aZo2og7Wayq8duZeprVbXwaWQjZXp8/uGyos5eW0LCteQi5UT446/2Z
	 VwhG6jY9D3YiqIEoOMymjtS9UxLFt+8hkzOYsOQNjtKxZjirB1448+BWIcpKO4o5tu
	 Dt4kudM/0yMpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B76C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110932279.9781.3958158532978864986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ce9e206356d2709fd4bd5d4698de7a171273ee676dce9a4b1d0c6d1c0b0263
Date: Tue, 16 Jul 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721109322
