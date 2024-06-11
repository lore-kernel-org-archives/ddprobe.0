Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721911509AE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718105903; cv=none; b=iUKg7lw5p/ITat7d2LRJ5PiBYq7vg5z5w3APDRNiC4vfgJCzfBNLcBWvBZgYp4jptmfdgN79NDMakJvOT1hWPfRck3P3KnySvbPpBdfzoulCDjNhgCPcbW3w1xqMEUCmBiFVQctFBBaDHJWXQdIP/T0Y3j6IJTQoZGhnCJO/rZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718105903; c=relaxed/simple;
	bh=TXwXpU5fQGiwlUYhRoJefIj+Cddun76yDtUQ/CK0r4Q=;
	h=To:Subject:From:Message-Id:Date; b=JN6yqF+ihJ0HDANINR4Qp3JH8N6kwXm3lcs9s3tqOYMjW6bJs5RH6QvBdlpSrNvFqMYvVhSoUsgZQR9po0VsO+PKjHbjT6TgpEDr7u4paCtVHovzFMhomXjIsv7UJ6fzqXwZZOw2iBp6CSQZ1JdoN3C3wnYBdilf7+DSah+FiLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs0mFPNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs0mFPNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A9CC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718105902;
	bh=TXwXpU5fQGiwlUYhRoJefIj+Cddun76yDtUQ/CK0r4Q=;
	h=To:Subject:From:Date:From;
	b=Vs0mFPNCzTLLqX3vu9B/R0/QPqO2uNMMG/CGQu3gloWV+DBwrfF9PNubXZpTOicsm
	 QGqkWjSQBWt/wnOhE5j13uBY7HjbT8zot9zPd5ikqsPlJesWDvm5vj7sJdbrM6MPgK
	 jdBRimYzIF8p0rATzqMq3iQnSlcadAhDdE2FSoBsl5ZBhFKVHslM0KSLbjUBnRqaxx
	 ex1/hfYr0ws3bAV5ILPyUKdHCdZKbwQJ2jU896Q6EZSXhhuVykRMIsgXQcmlTeKiuf
	 /06uEys7UPPg/VUmZcm39QlHB6hGzfOVIA4FbMfqCsjHqmtc62Ac7WxPlSX2LnK4Ks
	 oKRtFozQ9zIcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB649C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810590282.13863.964092306196877392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690b2d47660276be526e16a02c9202eab82df868162b7fb1d94ab680b2c83c2a
Date: Tue, 11 Jun 2024 11:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718105902
