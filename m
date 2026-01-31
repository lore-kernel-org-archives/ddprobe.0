Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA66368272
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769885633; cv=none; b=CqKuIPPre70rqWgFB0whufuJ0m8kZOSZCvnv5Qh0G+0AuVcdM+xqUgTtg7CZNgmNiTOZW6vkjI9HHtcv7/l+VTGSg+gOl3GLF3VS9+0Eg8Rtspw+xg+f07Y8I84CTdkWAPXHME7pCArJBZLiflF15oMyonvME7sKxB6GPq/h3kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769885633; c=relaxed/simple;
	bh=EaAX7M5fiArOqfwMhTnVl4HdWo3o9zy/T/ZWddhyWUk=;
	h=To:Subject:From:Message-Id:Date; b=J92LMGdQI6tLsnPoKk5RWrHh6uKWNuSayr/7+Wp+VajGlLiJ7fNfFgrnGjpJTA5DV+f6/2XMv++/GdEzt6jxiIxikSUILRRCv0rYDCIj31RCAVi4jJnhsvJNAMnlk2VNnAUFxhmErtjpy3Fo5Ti4i182V9+M+YWJtEJrQ6HclqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj5ouWPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj5ouWPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4763C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769885633;
	bh=EaAX7M5fiArOqfwMhTnVl4HdWo3o9zy/T/ZWddhyWUk=;
	h=To:Subject:From:Date:From;
	b=gj5ouWPeLbDblQJDnr7TPArockgQwfYCKyDw8BXiKdbUNcnvA1zvkWIAjxRzxhxdp
	 3ryOjW8WqVw4bDknRLNwNCpmcihupkH1QBY1X+NGb9Upf1RgQWmWl5ZHsfx/tlSGsq
	 JbEjMnh3mRFGc8BxTNmJXKOVwacIECAemIusPbn8SU46epQfQt4QKlSLq7lFCZcbMa
	 q9TLSFMJaXQV7cv0nLZBad5on2nuBFiMQBpcp342crDJaMywSNlC5UihTcPhiKCaW3
	 vXLg01mMA8ban3T3wG0cSAUDDJgtGPqLiFMzEEZs4YLfF9GsK6hF7rWBG2yIx+PZln
	 9n/AhXbNc3w5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F44D73EBB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988563358.23247.2542128859350960029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4f89bdf756007af634c8c45bda13523e66ada33def0e83480b0e86eb63a30e
Date: Sat, 31 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769885633
