Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B241D5AD4
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783736914; cv=none; b=NffeitWU9DXwCzbBnmeLXhQjKiFetLVKD4Fd7eJOLj0C7PJOXBTfUNBpPenQDdcqg5mkQuO3siCr9/sqXNy/bJQUpfTSjJ4hTMZUsnWnD5QvA+PrlVvc6GtHszwqCdgeWzqDvbNY7CPLz2syN4IEywxC48CJ7wDvsnKyIcXR6Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783736914; c=relaxed/simple;
	bh=FzfJd6qLAYc8++m3IzwaQear0Jcmdr9pv7JoSVF0qL8=;
	h=To:Subject:From:Message-Id:Date; b=JGeMdtL3jnb+ab33qw12+eg41FwiyY1+s7RqLUVeIR2Ns2GF4m+VbZOb9DaVdJb6zxv4Ip5DnxyfmEPnUdunTV8x5cwpNU0Rlz7AsPErwTr8JtYvl2Xzw9HYDOUqVqdNrEqhfrjd8wk+e5SmxokNNRF7Djsxl6AVS8SGxeyUojc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PB0nq5JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PB0nq5JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D381EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783736913;
	bh=FzfJd6qLAYc8++m3IzwaQear0Jcmdr9pv7JoSVF0qL8=;
	h=To:Subject:From:Date:From;
	b=PB0nq5JFK6N9Og35TKSuCon4t6H4FCBp9jiUubZGmyZ8kID3VYnLnUizgbSWKsI+P
	 bmr/ZDyknnq1uF1fMH/oDBiX2elCS7XCalHnvPK94/kNyZHBDqM4F9gKkNXgMr8kUe
	 ZLzPfgkrq6FIaLsOhFE1itWh5gck5GXLFLbuyaYULK+WAedKxbk9bT6vN+hzS6nCPa
	 eWdzeJ1uGJ0JLrMT976NLexNaIiDvlXNv6BtQX+YPQiFUGeUW90VvpJI1BlVdb0ZZP
	 t0CX/XHyoal1oh/9tg23invl2fus/dGwOgOkzEpe4E59hCDIX5RF4y6a72g5lXaSor
	 3CIS0tQ//1cWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD1AC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373691368.30985.5968486620535175353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c84a5dbf4fb3f64f446bd347779991cf79da63094a1ba1b2ee7c27c79a41de
Date: Sat, 11 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783736913
