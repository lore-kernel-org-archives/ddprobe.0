Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387A21F5EA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761959994; cv=none; b=L3RYu6gBTcULl36XR737Pgs3VzqVSZgVBg4JCmY+pKTv2ejF3P8Xd6BXygokfAIklrBKkmNhsMZ0+LGG5ppreVzbe0QxgQAAOeR3LKvpa26plmvfW4IC9UhB3FSVi/6frX0x76IR0lbhq4vEWhmrtNhtJAHq735Ysg0zMF1h8qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761959994; c=relaxed/simple;
	bh=NNklTvOHigri5FBGnTxf1Rahng8roR9Zmyq379eO1Wg=;
	h=To:Subject:From:Message-Id:Date; b=NZKs3BJU/CzhEmEtQcHnE1VReSB7aWmz3RcUctkJ9lbAMxjSDGJA8GFoPMzDhevRFFIGceDaFsZhgrOc2Y5hviR6DEErocxmf5kQU9KM/WrtaSUBRD8KkUZz8G82uUZcN5jmwJNJ9NLMn+XVvRyuloQ7M3E8uY7PXHlV+IRzx/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LedZ4fuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LedZ4fuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A106DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761959993;
	bh=NNklTvOHigri5FBGnTxf1Rahng8roR9Zmyq379eO1Wg=;
	h=To:Subject:From:Date:From;
	b=LedZ4fuOoG96DZ32YWmDroDuZnK+e6NxNaXc0MnUWoZ8O20SVf3OjIZPklWwQ06kn
	 UzbWPTCFTzwUs96fRmMaZnDefVy63mkT1gulgZ9oTEu6hoLVU8FlYnakXoIGlLp4II
	 ppVducUCKamHEsi9CuInO4hueUxfBg8TokLGz4KQK1u+oGL8ATT/scOqCArziDyXvo
	 TcBKQazWUKTqfrrcy8i4LfsC9olGpxBZo9+FKF5CUkrZc5kkRAF+7B3qS1XfQsAt39
	 AvXgKaFyiD5GnkxxqWVV4g6QybUy10phLyWCIyN1ZqGA3CbpQuRgNgzvnAf96fz5JU
	 hIKEIO9AmgY0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D38CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195999358.21282.15402271802298209711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0a05a73fc63ca8c8dff4de67ec1f8d94448a9b5bcaa9354ec03b884d462733
Date: Sat, 01 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761959993
