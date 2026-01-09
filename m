Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED3A33893D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767955434; cv=none; b=pvdx+5Hgrjr+prdHwI/qe2vZRuJqV2R2TCZ4OX5Kd8rdNwoTHMHAasju0XpKnhOdFAJarJn4uFdJr2dEj1+0UIbf5ptvg0Wx6UVoK1O45ANiMQFN1BMUrlwjKS5q4QOf6L9gXS6iuaQ/Df/YoLiogKpiyqU4hAk78+wcQjBWk28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767955434; c=relaxed/simple;
	bh=j2QGcX+jdQWRIuWBOKwQ5HhMDtvwfMAuquZT1honnfA=;
	h=To:Subject:From:Message-Id:Date; b=AIGGIxL2yVxvk0jarHK2O4TyGDybc1EJ02LgjoSOskHwbcXdhi049k9lME5QTCp7oqqo3V0sXtm6Pa2cN9qsgpEfOsZlO+k3ZQZ4asGThHH0P1cDHXzfjkEvZF9YYfC++uP0AZeydKojD+DcqYxtTe/hPhqk5LhjglrL6m2Zna4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmOxufqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmOxufqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF82C19421
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767955433;
	bh=j2QGcX+jdQWRIuWBOKwQ5HhMDtvwfMAuquZT1honnfA=;
	h=To:Subject:From:Date:From;
	b=SmOxufqulf1HnLJ3NZw4xyy4RJwRAPLFzh9anxKJnshXMaBNtqMmVuf1lFJ4mapyQ
	 IaFelhScbwz94jgiztFNC57vjpC2jRW+Cp5oq81YtLs3eIlesuNnMknT4uoYS72tQ+
	 +nQ0IUJYFgZxXa8lI9KZ+0OOGOaFHEfzG1SZntiZ4jmPhuDCGf8M6x3jO5ew/jCuLh
	 9DYzCHb1FQMy9WXDnfj9m/4WA5ukZkkLnG2CAtoWYMrJ2bq1lOTpRICUkFd7Q8v0Gs
	 jc6PJKfcDTe1Xssq13WIP5kDcLzmx3j1hV2L9TtKgZdtxNgPFJuyBtLWjeToHM8vdW
	 rGIvOWLVGggdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2CD16805
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795543358.26661.8836104690107949617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0051e0bbe0b385f3d97dd24af87adf487eab1f94cdaf3d7caf4cc8803af51a9
Date: Fri, 09 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767955433
