Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B79381AF
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766690634; cv=none; b=WFKRFwvNvKg3ouDxy0f0g/HC7eAXnQa3MzC1ChTdhhG9XFVUk+Ng+Eq0o7HmBAg474iiMxYryPlIxxULjXvFx5FoBqfUnotdq8gerdE21LIYHvWj3qhrXc0QaZdzEZo1YhOLR9R/ZiH6JDaiLLyJVgrBomXGO3Ymg9VxN/OgPB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766690634; c=relaxed/simple;
	bh=M5nP3cjl7diu201zd8etcb0gJXdQPlvupj0mgOieqC4=;
	h=To:Subject:From:Message-Id:Date; b=R3BPZZhNEDbqV3BW+KgkqOCJv56G7KVww5HOWELd08mz+ZaiTaGLBUkmZp8P8rFgbagYjcEDGuV86E46fcN6KHF4z3J+123NzbjWEP5wlp6Inupf4GuzpqKnwBn7bMn1Ekp+dcYI22mRGPPNgJFfFlZM37wqaYAp3/ompsBtufI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DljA/zKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DljA/zKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C1EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766690633;
	bh=M5nP3cjl7diu201zd8etcb0gJXdQPlvupj0mgOieqC4=;
	h=To:Subject:From:Date:From;
	b=DljA/zKV/sRvLnxTQAkubzL7UkC9hvKiR++JnPogmCX0+7fHlE8wN5iifqf3Gdmy2
	 2cyqOeMwDd3/nsKJMiJ+3Ex3vBvaC4GDXmoZK/3+TLp0sRA/1YOr/ZsqXK6d3jgDRJ
	 MpKGzT0GT4PgMaKTiz5L4XH5ifhBSYwKuYl67IVmuZvfyY8CwDXbLScIYWusZzacw+
	 enIjKEnh3oTcw0c6Tov6mftHgfBr5NvaSYMVL7bvg6Bl6l5i32iCxXgdmHsajWJFEn
	 Ex8a9Pac73JBRxyj+GAZHft7r8W82jTncXa/WKPpmgBB37ckXpC9RCznbKBjd2pCp+
	 TkqVfLWqxL+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393DE7AD4B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669063358.19328.12408985696196346469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce84138f8307f587913eb6529e3aa20d1943ce964ae6057bf29b7e381c645347
Date: Thu, 25 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766690633
