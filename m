Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE9833260C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776742054; cv=none; b=JeBPqLX+AFaX0C/jen4ad+20lZcwV62+IkTOCe1vhZQI8MzkbbHE8VVmpJifkkhSEgmKaMER2g6Lhn5qKodJsN9qoRGIQk/88OXUwrtM+1ABtNGsSVLmylwt95S+D5NASgKEbThFvi++KMPYhc71hkJdmQ2MaK/AjbXJUPxBQgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776742054; c=relaxed/simple;
	bh=2U+0lD267Cf5SsGXNxwv33WdRu93niYhHew4icWfpP0=;
	h=To:Subject:From:Message-Id:Date; b=d+I6nWa7ics4ZIA8SRrh7PixqPRqTcfcPKvzWi215DrgyqZLUBRFKb5aQUTeold0QPLeQ7K48skzwCeLnYJ7CY3icZMQ3UZbNxsFFQklLwnLCyVuYOH4QIUzaP8VXkTFVVC75EavcIvdCY5D/fscWJ9hlunnL9I/Oe9051INX/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ID5R1Kpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ID5R1Kpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07C7C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776742053;
	bh=2U+0lD267Cf5SsGXNxwv33WdRu93niYhHew4icWfpP0=;
	h=To:Subject:From:Date:From;
	b=ID5R1KpbFqRHy8+HpXwG9J23yATxGV7O9sufwvmz91+yrBImSsHMT7I/ZL77rorGu
	 zQ+7nDbLcj6OQ6Z0+e5l9TPcKJomgFgoyhc3FKUDoqCGQhAygZkfmS2H991kmAEAZM
	 ZQV99EiBmY3WtaP/ZKG3nzVCHEY2L9r9ysmhevIZwhXRPt5NvDLciL4q3T9hOWgaXY
	 0ALM8001AjKH37qBXfVqtroKi76YDBlWfNGu6MFCgUyPcUyNbF7Pi6NXKRx7HoV2EC
	 lNc0bWQB1F83IO13INynsMdAiaWOpVKiJjd9JADkQfAZgqquwelcc4V8plD01nC4aL
	 Rv/sNYmgJQ1bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF47F5A8DA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674205368.6024.18023850848191802998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b6b7332e4cd0570a0a111de114ba1b7055b91f9a3f784c8007ef231e2a0e7b
Date: Tue, 21 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776742053
