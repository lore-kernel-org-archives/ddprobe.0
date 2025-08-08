Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F70D264F9F
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754642994; cv=none; b=uEIJebXHucm3fBudkVRtXqlBCroJSNA2c54JU8dY9jMkGYX0/D8ry6qnEMdWH7fv6i4pHaOVMEi/Khdi6V5ygM0yNZrepanniRO3jDWqL49bL2O5/mP0rN1z5y8kzRx0V5dc1M00D5Qvvc7MObWHY8D1a0LPWKJgzpayo9Vop58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754642994; c=relaxed/simple;
	bh=GCgRfT4mdNHcDRMWCOlor/0vAiRwEK2FYrtVSvXla9s=;
	h=To:Subject:From:Message-Id:Date; b=kd/O388NWBXroMlOW2poykr9qyQIdxpNZ3wXOmMu7X2zda2IPlnfWum/nxsXTscAUB2A/01F+FrxOONGef52UcIO01Q8SOC2bChgbyos11hpmJXLayH1HTfRdqeDLhl7OEnKk0JNKgjajMMJiOkCI8CPTuaazo/x2fsMI7I4elg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ylf9H4WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ylf9H4WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3F0C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754642993;
	bh=GCgRfT4mdNHcDRMWCOlor/0vAiRwEK2FYrtVSvXla9s=;
	h=To:Subject:From:Date:From;
	b=Ylf9H4WZSz4WJXCZlTLFSLhCz2Q7KbNWhTouK0RqW1xwxBKMNsB3ETG22mD6f+3TD
	 1AdTb9ZmR5iQQYeHTHgse11DIJESBqxryalEjZ5it12DX4Z2IFUB/x5VSa1TtmcKRg
	 0WAcExLyMkZP4u/EUF9FNyJQlgwKAv0Ir7v856ui1orPKXQyOChzc8d5kni1LETair
	 wBmSpVxBNm0DMrUn5BkJzbvw3XZUyJSjH1ZqXYFGhRoK5+eRd38TUkx/UlilkZzKkN
	 VbNgECD5Ot2qXnx6HaJVZsK7ohVJ75HP3Tz/wo+s1ncQWaebqhNAA/jthxLMNd2ijo
	 k/FObsKmJhWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91636C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464299358.6976.11354283878191397856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dedefd891c14898baaf3800daaf2e1ebb336ac49d50b7c7965912d720f9a0b
Date: Fri, 08 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754642993
