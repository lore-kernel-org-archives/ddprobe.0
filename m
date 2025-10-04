Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176851DE2A5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759561194; cv=none; b=rVMtrRlfecXdPsY2NxJ1MKskpP3LbuHL8f/JW+LKzJ4G67BU9dtO5cLjhiqvE6h3p4Zo6IYnbRNbVfUhbzQ2rMvPelTbp8a7R1rJ7lHTDQ3N3nIqjhuuHMnqbGP++f/YKAH+xhRKOoW6uHTRzZ0iIJKaunccW0n8SqwnNrH1k8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759561194; c=relaxed/simple;
	bh=aScUBIScyIXeLFi7nbcJvePtCmFApAy+OSxshMMm80w=;
	h=To:Subject:From:Message-Id:Date; b=CoJLcAAgDqaTYV+TjDCthF21k7tUrfFVM+5ccp5dy6YW80jfTBH8C1vw7grNm17BihEQr9oy+wFxF8Q3uWQdZ6iXqf8b0diRTmcY+Ie6yoENJl2zzDx6ZnXhds2LhHAF7Y02SCj1FNRNoFOhwZO9eGjfzJFSDe41LMD9qEqm0H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYAukYxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYAukYxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E42C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759561193;
	bh=aScUBIScyIXeLFi7nbcJvePtCmFApAy+OSxshMMm80w=;
	h=To:Subject:From:Date:From;
	b=eYAukYxMnLmRT0tW1Fe2Az2uup0xu0tN0Kh+nnIaImmvzfCAhza5W2XNHipFSQWZm
	 ozbqgTYwULoeaHR40RLykghv2snVlBeNXZqM6u1dz3uk1a7jeoVFtr+czCHXAE3yQb
	 pDuJhUf7YBrqB7Pp9nHY+2EM8ziP5F05eVr2Ki1JdOHKW6XJU/ubKoceUooOxQH7Yx
	 4L0YDOOBZtkvXXnT4cEL1pAKayXQjQMkxV+Npmozzi6RA8QIHLEAtfmFPdm/6AT5fS
	 NSL7kysrTTSMPHi7i/rJisNIvyu+MbJ4dlTqtAYTT7D6VWbSuHWUeheXreVvK6zkAx
	 lS+ObleXRAAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9554FCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956119358.7496.12398940090956813737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78492f77abcf573863d57fa67c6b7d9fe560b184dea033f064a990b080ccd510
Date: Sat, 04 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759561193
