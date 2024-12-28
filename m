Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353543B1A2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735389954; cv=none; b=JbEesnv/EeKWkQfPhdemgZ/M/hMAtJ/u5CtvAwPI925Gn6I3GqAQF73giQQI5tA2tl4utorUsUYoV01eU5wZGoqcD6CUFBCJgtob80kO3QII8LeWM577izpJOHhlZVgMia4/FTz9KlLnYRE4Q2s7649FpWegp2ozh4fQ5CxwiCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735389954; c=relaxed/simple;
	bh=VBdvHorkM1tJpfxgxSnZRm8hsrpd5lbvdcSqfl8pD9w=;
	h=To:Subject:From:Message-Id:Date; b=QhBjThloOvGkpThp7Il4HxdmlHO1QjyTQWmK0JW8+w9h+OTYvmQhLkVUNdlpAtBO3VwYPONBmVKyd9XNmL7OlDicw9KzQVY8gvtdHC/i3vSw2btJFtHljC/c4xCN7TqRsbzrzOSorIlPMtdfV1I0k1hdMmOfye5r1FQmXt7105U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oopoZB/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oopoZB/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD5DC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735389953;
	bh=VBdvHorkM1tJpfxgxSnZRm8hsrpd5lbvdcSqfl8pD9w=;
	h=To:Subject:From:Date:From;
	b=oopoZB/tE8mZVeBT2au30AQcIKJtt5tEeG5ndyqbsh7X7pqD3BVUb4ZZ5o/ikhrOk
	 AAOYbTS4I6W0FWCR7tCJt2TOMuSSFfqh6ftelMmwYchSp8VVH2GxL1JlVZAC/e+9S+
	 0sGgNb1Rwb8yYtonByh/9+6edxMKjQRm8hJ3GdQnmGeiKdPyI3Yvq5/uaV4G/XEWwo
	 BjpRc7SVsVPXUA1JYpMkElMJpGCaYh+Zn+buttJmQMUs+ZO1OWp4OrQRKieGxyizEF
	 eqQXNLT46m1I/VnY53G9Gu9JV78B93E9241dh5lPv6ssXX9xFHjPRqhj4huYJdo8Ke
	 6nUieFvGQBEoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45BBE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538995364.19139.4764071586570096140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947eb5dec33665901d1088e2e4a06c02ac4dfa7a05c7d89b38de842ee751b233
Date: Sat, 28 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735389953
