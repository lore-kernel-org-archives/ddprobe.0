Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2B0367B63
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780072954; cv=none; b=lFg7xIi6pSKHVu5wTcaNJpxDPM8NijuJgwpQ6tYtOhCjf8nKqycPTFYXcafyEflb+rA16Y9Aplql1MQhJhYFESkSEK/ypIIIo0jlbFQrjfMx6RYushbOSu0nVUSCEZ5K9QEHnoGictY1uki7cS/1Iva5keQknUENxq0ywXfS2vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780072954; c=relaxed/simple;
	bh=i9Xp68LNkmvJ/wATpk9cqZqet1hz+4l9HRUTeVLXOsw=;
	h=To:Subject:From:Message-Id:Date; b=PbJrhgP4ladWfRPkyi7djRSAb58OSr9pDPwpOGmC8K1yUrLCVoAXIqPqPAJxHfNNTfRuUeHPHMlgOiXkjgO8aV+uBZJu202jtMes04V5i0LHHk4tLgIvfV87HzT4JFRaMVBoldH3Zey/6/JQAYWzf8WpzUs9B8EYkb3krJrgbLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojpfXu0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojpfXu0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2317C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780072953;
	bh=i9Xp68LNkmvJ/wATpk9cqZqet1hz+4l9HRUTeVLXOsw=;
	h=To:Subject:From:Date:From;
	b=ojpfXu0JyLmvIGHAXeP+J/5l62NYHcq+ce3xKAMl/rZVqqAld1lxaPCqs2IGKs6oz
	 VcCTV3UXBoPWA3h41I6BjRJzttHDKyI9L4D/a+Bb70OX+6GDQa80rvy6+diP6UolnN
	 /EOXMfy/SgFW6BKVUBNWM19Yh2g2C1ygCsa+QqoLeIyninwHgFMYoxl51sUVtlvDDa
	 QTpDP2MvZyjDGAWq/s5RLCAwe6Z4MRAD2GvO+Jy64/DZq3DHN5uNA8oUAIgdJv2hX+
	 fXuiwXpCd2EmDSr83zmenVtsObvghQ87YLvbFUe6IyFMUjZZiKnLtEjCQZAofVq/bg
	 s+SuM8nsgrfVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1841CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007295371.15891.11977064073087939377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266f0b14b2564ec1e1e1b4138f4b486cb04c37859e74e65fb00d0dfda76a77dd
Date: Fri, 29 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780072953
