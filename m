Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A31D1B95B
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749794994; cv=none; b=V/nR24VUrWtLFKvHuPqq0prURxLTA/VCH45DodI0XEEom9F4gjYXulgylUGhubXDL+jmuHvG7jkxF8BhuASLv5q2neEcJTaeR/OeSQCIAAiCercGs0q+4c4RDUfVcEgHV++xoK3kuIvS1LAOujxfTfASXdCCxh5FRsrsotgUoNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749794994; c=relaxed/simple;
	bh=zuTCSKMsa0ZugCTkZFXUZvJupaUsR9nAGU0PL4p9dSI=;
	h=To:Subject:From:Message-Id:Date; b=mqznrvettCOfZsAsNX9WatVdRkXFAy/muzCZ/Wv7j2XyefkdMhdgVdyzW5cf46QEaG6u/JEqMVQ8wquZZVi3EI5PzmEHBNTX2/wUP+hhln+cmX5JWNIS+B1dT22qgSNUJp+Ojj28ZM0YvumzToZ3KcWqQVXiXkxJHMqsATKiJBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyoK0U3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyoK0U3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A003CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749794993;
	bh=zuTCSKMsa0ZugCTkZFXUZvJupaUsR9nAGU0PL4p9dSI=;
	h=To:Subject:From:Date:From;
	b=GyoK0U3oXrGN1cREeoQYzh10sn4ZyXMk0ic1IufEhhMA3zVorUwtXU2umu4CRmy13
	 35jMNE6mJZzpboQMlF+Ez3SjdQZIYfiPx7tnTCJgn3znbP3zuXNiwEWbWNPj8kKqj5
	 DxmvDbx1885btSNhrvPhhJMwMdkH9WGbQsa0XW7TvO6VByTAaRb4pjaUIH7bOmJlhy
	 G9/kqMeFL4W/pX5G3cLsFEc/U1/zXwXTiNf2J7uu+PaeliMqOgWqMaDIDaO0e3EG8L
	 6ICABtE6ZOEEUJKMCn07sV5CBlExUWxMXUQ5ikSIfvg/sihkf4HC1JpFG00nqjC7uz
	 ahHJpkmwqJVsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90987C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979499358.15445.5908890357706325518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57f123ab6475e0fadbaeefb34f43854f92ac7cc7e3ad20d551d71668b93de6f
Date: Fri, 13 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749794993
