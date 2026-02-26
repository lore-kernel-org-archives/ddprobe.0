Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B40F376BCC
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772081694; cv=none; b=K53DNzzsn4dY6QngIczcE75IMsjnZ0aoNQ9vmEBeX4h67ANSysORYJLwfUcoI9VaDqg4MrOejKo2+FJOFT8Rm/Y5J6FNHUh2W6JDbzkZlohdsP9mWp8AqDQ/3Ghe1n7tcAzIw+SkQGUbVZmbLMaI1moJUVNmnHnmnpJVFz/PBew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772081694; c=relaxed/simple;
	bh=vd7f97Oqjqmjw4phfKBczYIu3BLStLz6phFzmEF3+yU=;
	h=To:Subject:From:Message-Id:Date; b=taldr0B7SOc0Bzcwl92Xr+rs2lthWoDYQebE3BBbN5ECba4YP+2rwatLusDEqzXjEU9Ddn0k59as1iN6WYllByiVRgJlsO7PwZCP6erZWEAtCugspgfbBuGK90Al90wTu56gfBvjsHMBswZeQBf+jhhx/obVSpxVUXyhV0HG7VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E50avcHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E50avcHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A896AC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772081693;
	bh=vd7f97Oqjqmjw4phfKBczYIu3BLStLz6phFzmEF3+yU=;
	h=To:Subject:From:Date:From;
	b=E50avcHhRy0FHTevORIXBrpFGV9DRdO7AsHX2OaRWAzGyjK7EKqXJR8YUbIPs7DXK
	 /no2yWuOrhEhPbo6OO05ZDn5g/TYPRcsWdbQQA4yxTO42DitvwcEEcvdFFlVM0OlTz
	 6zVgIXZAEn2rQLbxJVim1pAPej/4wj8TWLO4WAuzxC/ApgeNP+1KIrFhtxemCy6nIK
	 0GeyfypkE+y4bjq49UQRcLVFnCt2QktWrM9x/OetyKPd0jiiacFCJOeTd3S3nOZ3N1
	 FPN7TOJHghWj95MVeohBXI9QngJu+lPaJypSn8NPZM9bWWlsWvsvMaRZ8Wqs6zBrQ4
	 ofW4KE1qbVhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933FAFD461C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208169359.851.16867534263718515551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a593ba3c157d28d45a97c343e239bb74964914487e5d2b1139514f3621f9b10
Date: Thu, 26 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772081693
