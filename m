Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4398460
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753061995; cv=none; b=o+017UgU+lH9tIZqtC5BDEHF3Y8SlbULS6JHFQGFWB1YWMqdFXQITcSC19DU9/ymmO2aZ4kekr3ZSpb8wL3YzawaozwL74fkhGHewTrNrPOqB8X98azcdNryTS2AohoPbXLgAh6jo7TJJCGGBohcHoA0LXms5BRoO0+7bxp6ATk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753061995; c=relaxed/simple;
	bh=FStYpQbY/fS0QHBXHiKCT1OZZFV/JVjOvltciYQk/LE=;
	h=To:Subject:From:Message-Id:Date; b=rD5QYi0IkWbm4dKZXWuUTFWH8t4hBhVcjGL7Uvzl1WQ7FBzIA/rFfXKNOzflwFbl1ur9mGhaNEW4ir/TNIFSRAIOw6Zu7GaVqu9uEfZzJADIMAx/4gqcbnhfc68vn93NFgEXxdZKN0KeXMiAeOxZTuRrnyuNZQYrHtlR1v+2DR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFJCkEN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFJCkEN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA02AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753061993;
	bh=FStYpQbY/fS0QHBXHiKCT1OZZFV/JVjOvltciYQk/LE=;
	h=To:Subject:From:Date:From;
	b=WFJCkEN0tr5OS1BhPuAAoV9BSjuYSF+yfm4fY4OvkOGr6VMYjJy1dfZhXtwz9TwDN
	 2VM4mKB68sbJ4uw+sCG9q1cPRPsuP4NtS+UnFnUToGizoRnoBhh7C2OBkzHSwDziWg
	 vZMfNKX+jff3pnCJ0+7EyiLt5tuUnyKo4tWv9lDPB4a94KPhHwRgQNm9WCSui7b+aK
	 12ouDvfDaIUNAm0WCAHrol04gmeylTqhdOcpNMX7PFWnfEd5o4998LnVDMcgHlbRxU
	 Fsw1ICrJzkjI4ul8kCXgiOUPvK3WhrSkVXXpq2s288M8k37cRF4IsISLIzKfPy/zqb
	 gbJyjlS/jCZ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F10C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306199358.32309.10506285372505768321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19636677a2b9238892db50f0ced82800f4f9d78dd28a0efdc1236a0c2e664b16
Date: Mon, 21 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753061993
