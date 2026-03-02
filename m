Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A3E332916
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452494; cv=none; b=PYYxmuo9qq+iRYLSzSSqAsjUKvlSaxEbs4xGqkJJbW5a3MhlVJBYjgSYDXteXeJw2zHptOrFXESllB1yF7qTt8kql97R5RSynocp1hU/Vl3c89QPJAn5MvO+9tfX44sf/BgP/gDlPxfdGH+Mx9AcqF6PPNspLv9kUlYQA7Erw3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452494; c=relaxed/simple;
	bh=DtfTa8MQxqBcRUdX9S74bOG/YtXlnOTBUHIeeYGxfyI=;
	h=To:Subject:From:Message-Id:Date; b=G1/Hcd3bCqJ7rT6Wv7aa7MVqJTIYqOIS8iB5eYHmEzptxOpaFKatlJDVodnKCD+vQT4CW+vikrjwiQzru7aCN8WN3Uwvld9sodMJfKzUdsWvBAkH3Lo8V/0cGz+NJ2asIE6aW2kXv6LuCzdtscnZLNUvwe5IE0oZ8bXh4MM8q+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIMBuBF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIMBuBF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC58BC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772452493;
	bh=DtfTa8MQxqBcRUdX9S74bOG/YtXlnOTBUHIeeYGxfyI=;
	h=To:Subject:From:Date:From;
	b=fIMBuBF1hbyaM/GB9uZz0dxoRf1I7XpTIdH/231MjZVumAPw9NgGi2ZqBSbp10xjA
	 Kkf3actE2I1a7mj56QZ5BIoT2I7DylISxmQ8zCj5CxCmwHv/HkjXZHfzWiRMYEBvX1
	 HQ6oPNb8NJRjOk3fgYJMqKGCrATuQrzgPM15YL6W3Ui8YaCyHJHera2gtMiE6cCxHT
	 SdyCylhDWQj6gCrCITEkZFDAdaHaGSC7u9vH2tKGQ14u5IKpc0X0LRWTyIFOwNCMV2
	 oExHNOdni+roCkvF8lB6EDNqyZrfw0s86u311TIjbAQFXa/7x0qtTiKT5XGy99f+pw
	 pTDqzrmMEoK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F88E9B365
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245249360.4102.15672623209982855852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318d274f5c9c10bafad7fa2f7d43136e7a201af41d58e0866f87a8c6ac4d9807
Date: Mon, 02 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772452493
