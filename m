Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AE91D416E
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761870594; cv=none; b=jHbLOp4zNC1DSJDzdJUhjATDYcDgh/JSdQM65PJ02AgzlA6OBQRqeTJlV/kf5/H6iyJ8UEnakqwqMEUuhoDJQHD5ScJAsAWwvdcvwyNa2J11zzkGW1TwH+XGtFwXXa1drxReUc3dk1Ws8mypkHadTFugPe/AffULRZi+3+mvODQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761870594; c=relaxed/simple;
	bh=keULj7iseXqvFm4wIpxAPK044ZzO65MEr8IxQDUjZ6U=;
	h=To:Subject:From:Message-Id:Date; b=RjWsDUoVV43CoXtpbwS6j+Z79N7YE1n4pDOc48+TLgnW36uBlD3I695hvrcRznhzNePM7zPucpmlntbNx85ymdY0jZyvrJ3klGUcRFuDXe5E6Wm75B9TGNH0DDeHcsctbv2wxXYN1hYxGPR9fv4E8sToeE0lcuCM1iByN4+L7Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPgEkCn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPgEkCn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7577C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761870593;
	bh=keULj7iseXqvFm4wIpxAPK044ZzO65MEr8IxQDUjZ6U=;
	h=To:Subject:From:Date:From;
	b=MPgEkCn3IQwrcrcefCHJGvzkj8LKDinfFWnRDcAbr/T+/eydDu2ItPnLoPrY0nlhJ
	 NCY6bpV2L8SBPjgROHT1//hwHAdPJ5UsltkfPlwkYQukSR4bkZEOWX3y5lEzeMJ5pD
	 buHrjydlg3N8yzBBs7KzY1e6p86rM/lQ/1nyg2Y7uNnjJNxFiTuODR4pmE/cJeeq3M
	 6NGl7vw+m0l9MNUqEJiVjRlzi4rh1uxqNFVVXx8T0j8IGMGJIr6eWTOr5uUJgUHi2R
	 KI5PBpNkyskPIW9hHg4rG3JnAeNntRsQdsJ9NmYEx11HR5OnRyrtlu1IyxO0zrGJ7o
	 9Cx/H50PYGLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AD9CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187059361.14866.10897759443299570375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6a07991d09e3aede2b75c31d8504b63c246511dcc33ac696745bd1a41111ea
Date: Fri, 31 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761870593
