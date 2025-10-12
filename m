Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0172F29
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760300394; cv=none; b=N4RsTbXG6c5A6hcUnEmfIPB5Rbla9ili7KyCcaBe2oB0cntlTz3JMhSuv+4PYInZqj62NLvlcKUs8hweJ9GtLhGZrlY1Z1L9gDk2Jfa3PcEB0xDggYHaoNXcK13P5fAHL29ZQ2oEdUjUAJlEe7rXDnSeccVGNQrh5YHvg+2A1Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760300394; c=relaxed/simple;
	bh=FPjkErDDMF8DriJK11W6HRuX6yFbsgHpoSR3fIqFMz4=;
	h=To:Subject:From:Message-Id:Date; b=A4m8yg9sY1IhPNuAE0CX9pqfbG6LRmYEtC+crn7U8mdKCQni5d81d6A4JIf0ZtfqWmZsgPBK2SA3ruvaQwKBKwcrYbimP3bcHtYUU8RUe2yxApe7l5FdIkRvcO5nPdUnrNfnLn5uDg9TVNAoKAfmq2tuMH06wVpm6R3GP2fZ5Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxZ9y/VF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxZ9y/VF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760300393;
	bh=FPjkErDDMF8DriJK11W6HRuX6yFbsgHpoSR3fIqFMz4=;
	h=To:Subject:From:Date:From;
	b=kxZ9y/VFeXDMhR/+B0KwuxUIeQQk1/+AG6iWHl4+o/iBxqpNw+Im8nBRc5ax4nrcL
	 iPRn/8BUPF03oog5oCS4gtPxxxzwd9WuouW/6qY9LuVvG9VeZtFCsYJYwPIYq3Onfn
	 jpsCiL9afXnv7jfo2TkZ8h/9qgnKslz0/oh3jZiMMNzJgY0rEeTvAYODO5u19jOFm+
	 2j1X44o5zJOVLtm0CyX52ztCcdnyts29Mvb3eWOEBRg6Nlt0NIIcrUkXH5zSTJmSLO
	 iMi4uB9jX2+o20VJfs/VlfWDSGoaRXAE5ZNdRQvvjeUApkqvW4OSMd+6X/v9icga+o
	 PNYwKPREO9VGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F91CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030039358.13867.4030281106112172344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e96f13be83d50dfa6b977d96007f7770cb10cb8771d982b9c768df33d04383
Date: Sun, 12 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760300393
