Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED0C3D6475
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785181234; cv=none; b=Cj5Y0YtzJpRAazZD/DUfLX1KwfWW2v1IFzkGmsRRgCoTve2FwwASmQj4XnZ5cqJ02j2TM0X+9BQVzw7lK2TOMowe6N7OoWqjcjHEcjtXcz5jhhtDdzXKPFiHr6mf1M1hFYg+pbcMLbGUACxBgwg/A9eIqsV7O1I27zZWUD896mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785181234; c=relaxed/simple;
	bh=8VWTKgRfVTPpMNKBHGBxAdgF36/45nQaj/Da/HNPRWc=;
	h=To:Subject:From:Message-Id:Date; b=Io1Oqgz5b/xQ6ffmRsg8U8tU8F9DAYhc+VTmUchBcBET9I7I4Kg8G/VZkpwtIQx6lNA2pgAZsynHxMUoTsZaUNAtAnMq2hbvEQUicaP8by/eMj3KkUBrvGJw49Mwl0CsibvMkurqiQP9VOl1pi2cX+VhKxUQI/quXvBOqSkZtk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4hg7ZEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4hg7ZEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA30DC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785181233;
	bh=8VWTKgRfVTPpMNKBHGBxAdgF36/45nQaj/Da/HNPRWc=;
	h=To:Subject:From:Date:From;
	b=u4hg7ZEoBgHbD3HP+3A7ra4K30vxdysqnxhJUYHovSmwephJCfKTVeCOpTyxBb55X
	 X3MbQqs4pwSLImsm/com5Ub0c5Iraq28lW4yyNsatWSENuq12fVc3VgkP+W5x3YdD1
	 lXwUdhaKxP7eCBjU+4h9MAUec/0rKj5v0HrZuytpbvNf6zIUjwNMWbt3O6b8JDmoKl
	 OU07orHhedJniP9jTA/7swvFk7Zg3KqMhlUXiEM7wKAeO6YPPixUmTU3jFvqWnDzWb
	 N7D8UIPhvTUbE3+iU6IL5LaBUV/LBbxKuJOxC6ElQtuaR+D44pA/tNpc3v9O3wAEJW
	 V6Ug+lGcO/I9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E66C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518123368.30819.9180847163349263210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be83b7af3297475d88511fff9b53dae3897b25e6acc7ed6a906c64ea12cea675
Date: Mon, 27 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785181233
