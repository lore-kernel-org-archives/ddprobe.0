Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5DF3E9F6D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772037294; cv=none; b=fvtXeYDG3MS+zQRU8T0eeeHpyQaWUoW6WUSd3YrEbg4suqsD43JrhIIjza4+P6V3d5IpUcT0Y+fzh83WI579sk8l9adUt4iJsvPvtpf0Fyz5bP9j404X49ms7ru2OXRn43YjgRfowmjC96///TGZYgozSGQ8kKjrDDiCmwhktzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772037294; c=relaxed/simple;
	bh=i57gn2ARJB0H62EXgdjc+aQsAum5cYuAvIqtvPEmvgg=;
	h=To:Subject:From:Message-Id:Date; b=khQrGYBROl4jO6gL0X8LGNf4Gug7sevzSytj9E8FR2W3E29yZJ/4qN5E6MWitZen4dsOo85/O7meHGl8Tg97ZeV57RvwJ/65zmLXDisgIpPIUVR8DEzBXu1FRBYDpOFOn/FtGcbWo+8RVQbDr49PqL94Bfc7PG7yICp6+6bplUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ0Vb1S6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ0Vb1S6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B21C4AF18
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772037293;
	bh=i57gn2ARJB0H62EXgdjc+aQsAum5cYuAvIqtvPEmvgg=;
	h=To:Subject:From:Date:From;
	b=HQ0Vb1S6hnW0r+isgqOuTgohud8Ccvq7ibFAuEp/xvt3LWl+fmOKylH2l63OIRUXl
	 3cofb1J3cFdWQtamq8DM7bpDYzfnwpFN+S7g6r6XbHB0hheceODh1/fw8TCMwwGnGN
	 +W6BtKHHpgFiCTXvP6HQ10yKvdgYBQ71i0CTHHMT0ye2c3e30rMJWuoBGqH5M+d5rZ
	 71VBfadkWLwl1yGnuZyxziSuYnVv9wKqbNKD08aEjfAxc/9DzGjMF8sOOQwpIUp7FA
	 E6QbyCIFe+uLjuqTYsbWhsCBtcRBJfG9hCRLrz0r0ZIeNWq0u7wSxXNtTFYhkiyADy
	 sZnatA5B73PtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8CBFD3775
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203729361.23307.16195172437564924816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280c2bcbaa2f1bd3a8e9f08225eb5f2b780c662afe3542dfb5ba5fb9972637f1
Date: Wed, 25 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772037293
