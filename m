Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1AF2DC790
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757728194; cv=none; b=JZdDfaETbHmUYA7vxvIB6MbLLUzOenr2u4P3N+6UqkVUsE7JiAp9V336DjWPcXs3A8ZlzGMJfmCSushR5sg9GXPTYf2efDXA3Pdm+QxjOVuWfaOmneAyDYFdoii3VRS76xL3xDr7dJnIZEugKZ/PTI30zW1tEvHPk/gE26ahXqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757728194; c=relaxed/simple;
	bh=1sDH/2/lo5UO9xtno4sGKPSqS8VYNGPAV9fXgu+JCaE=;
	h=To:Subject:From:Message-Id:Date; b=toPVJeJR5oQGXkrp5HeGcXHsJ2jHgy83mLZnCGqTgAjo5OTS29OXDvTQ2sbxlyEoF16gTAEZf98e4SdVGHX7Mzv42LdMDgOcZB11a18Q1k0AAk8LkyQcXRcZ3KZUgedIwELZMzx+oL7mXlqCmTlaL7eAQDYQJdQlpxlK3iOGz5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nrq1Onbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nrq1Onbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1414C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757728193;
	bh=1sDH/2/lo5UO9xtno4sGKPSqS8VYNGPAV9fXgu+JCaE=;
	h=To:Subject:From:Date:From;
	b=Nrq1OnbtvIFxTtYkiQLOsRmzS78UNo0E+yJkctd93jVW+dIHjnjfLpY5Rdzowuxpl
	 wBMHysOB++Sxl+6slCHobQ7v7s1SvCXDbLWEFdQT2CVueN/vvgGDhR4GKvuu7Cxa4Q
	 eiT2RrWUihdnxRlp/855ob6SqYLso0sgVwD7X0hHXkFSQraIjCXeQzAwgQfUGVgq3d
	 z593df9/MG5d2wC0cZLrUPp1QxHYXqlc0zM3JNWFRrLk3gIovuE7wuxjAF9WZp6wso
	 wg8NHujrVJ7L0dZnkxRnyMbJXanYH3OyHlstt1h02ZuE3ZijGMjblsY3KBZKzcQsrI
	 URgNKRxgPmBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6BCAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772819357.15324.10749160371691979143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678c952ef1c55019d4f35b91d9a7401db0c5a459741fc094d331dfa25ff63c3a
Date: Sat, 13 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757728193
