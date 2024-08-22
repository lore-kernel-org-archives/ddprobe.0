Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC9B171A1
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724290554; cv=none; b=F9oL7IM8c9AkCBa+ZHmDtG6zOZzOEilXDu5SJFRiK93BMPuVGodrf5gYWhdjSvyDBwgnShxgbcdgSIvIJCrwY0XxBMCZD2Hb+HbydM6ApG1qhi6L9zNwLNDb0Dff9XXlXc3peIp3sAFqY0rBH5qOUWMQSJVzvsFTcZcQxz/SMB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724290554; c=relaxed/simple;
	bh=PvButg8Dl+GUvuHBqJUdawts0pbuu3BAf13HLzqRHiE=;
	h=To:Subject:From:Message-Id:Date; b=kyMjo4//8/mCe0ec+ReowVGd87aKVgMxnUZ4mdGGBkB3CEn8hMD1T3VWpHGt2HbF9WQOUuxBFMg2blHE7jh2fmOMymN4uF+d7081Cj7fDNVx8CUcbF7P1QT7t1h2HNdpwnlqd7QT5dmC4WTYcEAtiCf/I75UcnjFGRA1oraClAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZaQ+hSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZaQ+hSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BB1C32781
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724290553;
	bh=PvButg8Dl+GUvuHBqJUdawts0pbuu3BAf13HLzqRHiE=;
	h=To:Subject:From:Date:From;
	b=cZaQ+hSJOHUoMFgwtLKygdDiqHiTzh3p3hhWs2Eb1khqdRh6/erFolaKC5cdUASAn
	 oNCVDZqfNB7+xZIVbLoEZSrgI9sHV3NGXigINbfTCa8TLk21sSxeNyhhSPl5koorqY
	 yWoe7oF/dcnTPdvC+wI77fiQHwi3EiliF67BUO82Eg7HiCInIzAo+2hOjxCh/ByDyu
	 XpThKK2SnSJLnjdFujDJ4gHWnqzAx+5TKlxzhgiw6IRHvqCpHxz5DgxtsBBo2Zu9GR
	 T5FPN/UJDfm6oRvPKzhPSOkAcTeobGhmUI4865HWSbFJsQyZbznFFf/yajcT3iywQU
	 69wIMY9tY0HnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943A2C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172429055359.20363.11530611338780306363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a1524eb04122c214278c39f0e7515e36e570588ee7058b0e9d7255f1476d3d
Date: Thu, 22 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724290553
