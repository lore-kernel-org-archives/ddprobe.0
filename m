Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D01E4A1E0E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788783034; cv=none; b=TniK4P0XeKcaDEwgXKF8WOoUZrqp7ROiuwFoOuNcq9RCHHITYtpYOa1qS/YnkqP/NVuJTHiyQYPAgV4n4RQsX1dBWkiJWDeIzNDuI83uF4nFmmkXpHjWdbxUn01FJNHfAVtTxTN24f43TJY+3C9fan8tBciBytvnQWdBbwxBdHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788783034; c=relaxed/simple;
	bh=foHkaN4mJxyQ7o7iAhOTtvPZbyUVuzbNm0hVO1Ip8fs=;
	h=To:Subject:From:Message-Id:Date; b=GblsD+lOZICezALJomkKwWhcI+b8vvtBYbYRucIdjpa8IdGdAfQCAdCI1M1azA0LRLmZWlFJy0QzrO8s7tGqGJ0pByVv3sCd1TVbvLMBdDmiRgZwlkFSuNkftGGTvgnlsNDRdDrouozN3p2EWw7pm/NzzIB0QMhy2Y2Cv7+A7OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMnI81Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMnI81Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF206C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788783033;
	bh=foHkaN4mJxyQ7o7iAhOTtvPZbyUVuzbNm0hVO1Ip8fs=;
	h=To:Subject:From:Date:From;
	b=XMnI81UqVKh8//eNvKJuHivYEx+zUTXQtMQfX5YGEfUm7CBCOD5xFwpd9geEwkBY8
	 +sNQ0SqGWzNVJubxOjpFFXPFqWyBhttl70rHrYEO9dfEZi7zTOmmJKDsgr5g01L2Nj
	 86OA0d/R7SOUP1IrqysctP5V8tSD/+mkrU75cTcVwcOsLiceeY3nYISOwK8x+HeDIv
	 ELqcippccUnR9RrJu56oDniR11dDSElnEjk2SNLNNPJWw40X9HM75/6X9WzBO/s8QN
	 UGioACHEXK9lbVWPXiE+i1wVEBX9tqh+RoYY/APlhJ6naTyY67em3tlT3WS6PhA3mZ
	 31pWu1uCaq/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE908C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878303370.11056.9527753341734280492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeacea17820475979b22a7e6e89ea0b27f33c019bbdaf9f03b2e46c04192207b
Date: Mon, 07 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788783033
