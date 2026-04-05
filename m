Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214C62DB79C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775405734; cv=none; b=D7X0wRcQ6//pA0LZA+I9LnsBGWQ0VwOH0H9OxZ3AmkNO3U0drurMlxN+k77/cW6xsDqTwVU5kIwq1nKfYPeA9oZ3dFBOLIunrLbAvhbuzuecPkBVGPmsGrz6lZfO+o5caG6A9vogL0GR0awxdLIfn2/nFjizKBOKyL7JM8nBcqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775405734; c=relaxed/simple;
	bh=qfoJzg0FIslYj4sSythcOVvt88Z+mQ05CyEp/JZBHbw=;
	h=To:Subject:From:Message-Id:Date; b=fg1rJlpzz8p27objr2PGX+amkWFWgnWlD1X3RsbmhRwVLZEmnThQ6V0MqZNJkckXnjY9xAvQEyre98g2uwizUWQhvfuhNz8YGqURA1tUYLlMshcbfvwSLhroIUOeKXVdI6qqyX5Qpg/2SI7zXMynbkKbHaBO75Swefb07o7Vp4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiLE6lbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiLE6lbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE702C2BC9E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775405733;
	bh=qfoJzg0FIslYj4sSythcOVvt88Z+mQ05CyEp/JZBHbw=;
	h=To:Subject:From:Date:From;
	b=tiLE6lbeeub6J33I8UL/loA8CcX/T3ZGQ37EMz89flEjmab8ttOPYoZLf0raERxnb
	 Or9Fp3A9i/QbFXDv7JQW3NDnzo223c9iSWWRscphxE3i9JXbhQzjlKtoueJerzyuml
	 njv2/Rwz+PHzGhKWua0qCizTONW+4j+eBljnLR5R2glYghF3mi3qjF0/TyeRoWpxoU
	 n0EQmfcd9J0ZGEBxA3bbEz/hrINqarYHOxGpvQ0VJp9SZtyw2WjScM4xtvYTVbA/nZ
	 /2PqWJjVH9ZfXFRCRZX14eMaJXP4IXDnzI9Q70iG8I5XZ9E0Na4AU0pc14AAJdMU9l
	 eOqeh90tJJvyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC1DE9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540573369.12172.6860548393135832627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b69c25c47c1661bc5a3c690f46266ea284dc313ae16654f5c5702a11578ef81
Date: Sun, 05 Apr 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775405733
