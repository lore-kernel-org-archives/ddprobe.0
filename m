Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2D2DDBE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735772154; cv=none; b=DLY7YhBOASbBQ/R+fTvcl5Yr7TdarHG4ye2fmSf927vaDDn7uBCxAaqcTTKeXCB4d+Dz4ioo3M6QpMIK7Wsj6Huk8QIbnhqCSaENDRLcxpcjGFnBIUqwOgUNBY9Hn8AbBUdPeVU3Yc6bTznbaMKZWlqmNxlQYogKbgohKibUm1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735772154; c=relaxed/simple;
	bh=JyCJZ/IIy3m+kNqtqt5m8xbk+0ACQX1Odz3iGGBXjlg=;
	h=To:Subject:From:Message-Id:Date; b=PSr11de/+S5Cz6LESE9pKKy6/QAl4WyhdDCCRrgwvLLwzh3Y1LF5SwzgnsJ3hOK/Z1X0ZzSd8kwDxgfe6likphoM8Zaih64Uobm27qWZ7FfMrspasvEjkjyA5gPILZp2sDtjMwAnrOOkHnvP9N/qTPHb22cQE8I45jqrPUfPh70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ar+4TRk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ar+4TRk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2434C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735772153;
	bh=JyCJZ/IIy3m+kNqtqt5m8xbk+0ACQX1Odz3iGGBXjlg=;
	h=To:Subject:From:Date:From;
	b=Ar+4TRk3uAW36r+49VMM0uXSLnz5oJBVd2nbXAMuuy92yI9T48Mwnv5AIKZ/KXEoA
	 UeUxq7wJiBLPDiu71jsVxJjsaXMHiTSDv5Nf7nnQNs9jyGNxzR2EIRbhS5e5Z2n+qI
	 Nn9Mn9LLmh6Bcqak3y+OtWZ3ExmZeeDuX5hIlacXiK2xzA7WIi51KJlgpRtm04ffAh
	 zjjo2UFnSWruFoWcc3cxQi0ufWI+JUOBwuFmz8UMXMRUcBIfBANlTmtmABffbVfIYS
	 53wp4seuI8v3MIAYIFTcU+XaI8b1o62S8JKoo9GR0UzS1KBP6+Ug9PeXfm9Q5q1lUp
	 MxaZIl/aGbpGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4BAE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577215359.17664.9994257896619273395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef796371930d1a933287fa7537c5f45b1b24c2bbda5b391ef25c4801ccadba7
Date: Wed, 01 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735772153
