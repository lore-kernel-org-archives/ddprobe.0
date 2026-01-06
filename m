Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D3A2DF703
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767729234; cv=none; b=YLvAktPrYWjKNtPTmG0w9XifrlEp1kQs7h2MVspXNYP7j6fu0rIziXuVU43PZxPxF9kKpcYThoL2NW/nw0IOoxrM/HoXBodOT31f7afAy2Lv7PkqIv+qPcFMgPUwN+JYME1WOWF4zrhCp0uE5BM9T7Mzes15C07mlF9AJXNGJfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767729234; c=relaxed/simple;
	bh=yDOcZ4L/rHuoL8rYdhft7q92hGIMHLlt7zuIxcKKbCQ=;
	h=To:Subject:From:Message-Id:Date; b=P8DSF3OiGZjIKEIwMdhIQFr54BB9TLWbPyPWNG9AZaLKsItRpPl5cqKdNGrs1wzoGV7PRNfU9kXgk4M/uAxQC2qcBhs3MG/5/ovMPXPgNl8IDn09jaLMWs1Nzc5am01u2TRbszB7EY/xLzp7OLgX7ObqiDzvU3rjjyK+yLYmndc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9CushBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9CushBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD4DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767729233;
	bh=yDOcZ4L/rHuoL8rYdhft7q92hGIMHLlt7zuIxcKKbCQ=;
	h=To:Subject:From:Date:From;
	b=E9CushBkcJ2MBdF9Os7WJAxm5utaICQIoponWwA/eg8ZoGld0NBOmzhLt335lXYm+
	 /6YmFSDSAkZyGpxRMjDQc27NX92bl9oVd0RvbtMf6Ie45qAPZplf9eLo6izlv2TRuU
	 vuZWLUDwyrysiIfsaORyKXSkC6WoRQBmfFp6nlJ+ausixDXn2hLtA3afjqGdnbl+en
	 Q0fQg2a4bu/ttpAFSo2xrLaMxeQ+UcdmdI9tbw/UilAD9nqB6nijvdqMvWheFJHzSR
	 wOlT77wkWaSCoSPAlkjz/BkewJLHJVoN11gV4qLytTvi9h24NsliaL6VyG6TUsxvG5
	 H+cdRJ+GfT5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B9CEFD03
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772923357.11676.5293583872979457641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc5f5975182a7365d781413826e1af8817c1a05927e3f4c4e9042d2a52e7cb3
Date: Tue, 06 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767729233
