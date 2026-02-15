Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159362C21EB
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771145694; cv=none; b=NqjCqBxknKLevY+UnkxVEgnc7MAaV98PvmbDT4GzCVxMysmncSVWQOMr/qPTaRGu4xGLhnssFVtcnZvKgYCmBrrP8Dq+UlwVf40Eb3vx8rVaajvzCwmi5ncBfN+3CuYbiU8UqW86lPQgPzmibifpfLdwyu2tshPT8sVWMrTGNGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771145694; c=relaxed/simple;
	bh=i0pBCrySTagqu7ojCY9KiMElXsq+aeeZ/tZAHMhyHWs=;
	h=To:Subject:From:Message-Id:Date; b=nCqqOQK9b4KRxPagfvsOSJ236OUHVL0+0lE4gLmwZNxxVCzNWH1s56TVSpxABY6VrNErPerTZYCUprbcm+fEkIPz1qCbkKDHAOwBly0xIE1Z29NqopcIaWmGDjpLM/tEKNpoHnvgB6R69rnJniRIwxyg7Og9aUSbInUeNlAbpIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0nq0kja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0nq0kja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6B8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771145693;
	bh=i0pBCrySTagqu7ojCY9KiMElXsq+aeeZ/tZAHMhyHWs=;
	h=To:Subject:From:Date:From;
	b=D0nq0kja37kxNBy5yyFvsLyeSxKoz23LXtu8oDo+Nb9Q16Bb3QxY2OlZ6Hm3VI2aW
	 ULn+39RH8e/T5zXQXOaf08kIR2bxhVakAqD81wAZe5igUynMqyj7zWPgegINhv6RUp
	 E3NSOWnz3erw7UuK8I14VRMabovAC408yrMna/NyOHdiCf7yY+U+VStihCObrrtXKl
	 Ur2+eRoNt/oes6b5z5AMcdrjHJQNbbrvsu9FC//jidRMpVOknBLtPHRsIFwOCGIlOZ
	 a4ZvBl/+H2jw+Nn5LGTk9W1DcXi4lSWKPB5UUKx6qRVeQsA5CM6V9On9WjEAunh4py
	 zXwinAxbbRQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93888EF586D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114569359.22443.14063613477721353515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bf84fc025f0bc0151ce27d59ab5e917461fe5d760d2c54bfff479700f434ca
Date: Sun, 15 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771145693
