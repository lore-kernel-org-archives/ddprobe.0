Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40392245008
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749770994; cv=none; b=ViRdfzsoPVsj6fmQ5tgjhwDGAy1eJrXJ63JZFNWB+qwhZOgribG9EeasYe90cjDQWALs6t8ERb7aEsFABXSOf30m3ZpLq8DsMSDsed8p2IvA02TiJgyD4glhXjl0elMOAnnGbd+nmpwGw7UUoRf9OkO5A64Jtn7ivT1MLQohBkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749770994; c=relaxed/simple;
	bh=TCBJs0yyxi25RDJNgE4126zLuXr3f3c3/QROpWivw/M=;
	h=To:Subject:From:Message-Id:Date; b=uNRMP8pTL21mMqCa6mc6aS3hu4mAorD6ApAHMTUWdNw8xMdmYH+gaAY463+Wg4hmL4WeZitDkKPYbQgng5JQMznj1RnNJeE5mznrmdqQzkTIVyMUsifROQuu5kzIygIwSmS8TLg7AR0xQqh3jyQs/qRisyU1tyIneSrUo/7fLAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PC/PzDrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PC/PzDrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A26C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749770993;
	bh=TCBJs0yyxi25RDJNgE4126zLuXr3f3c3/QROpWivw/M=;
	h=To:Subject:From:Date:From;
	b=PC/PzDrGCKaRtKI+r/aqhezAPHpOn6LBJdSXMSG5VYsU0vh8EtxffX2RRcCEpzM5r
	 1Z0xMB19OdMn2+jvgK78BWGIFRFiGZuN1QA/FQB0KCL86peKdK/ONZ3dha7nPQbxbg
	 EC5FI5ZJZyHUc+1J0Kr4mMOjr7gLCWsSBK12YlY80PIT+6pSwZaUYuQEKkY/5drTpl
	 6xEPjCQnR28lVFnAjP4c5nV+doD1MYPEFafh4XM6ZmSw9alMszFNyV9GTZut3g2XA0
	 reI2j7VvmMJL94ozH1PIi6QPeFa75cpvTn2QkC7ohVNDkwQyq9zC4L2+0FLrrgFvgu
	 /+OTPL7MuChKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90269C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977099358.16557.1657341501595525911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a6beeb9746a84a4102289765b2a8665b3201b5ed83af161a27d24573ce8182
Date: Thu, 12 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749770993
