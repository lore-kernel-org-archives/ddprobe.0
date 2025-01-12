Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D48F14D2B7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736664354; cv=none; b=XSb33wVrRGsaj/0w4hUgYYfdwdi4cTZY2kZFLJm89aSLCIEoluuuS6d0jLBKdymQjFrCbvC0CSXctg15c0CxbD3Zow7+wdqY8oN7JX5w/OPhJ7cQhHDdb92v8c1mnujPrlVM3n7xW5DDqAk/GMdvyFhKciulRFnGT7ewoQtbHBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736664354; c=relaxed/simple;
	bh=O/nFgZmioLJ2I6z+3saI8bcnXBwxS51OH79xmcvgk+o=;
	h=To:Subject:From:Message-Id:Date; b=SIPTkQrfp+4dTji4RstVHymy+bB+YvJua8RiqGcHJcAndnE0i67ayNkoNw0LO4Lt0Op870SpxJpFEcdP4Tb0aQSYF7Ec0d7YqA/WpfiEcLkC6OI3rL6rvpptbCjqHwpXWgKGuHplHq493Z9tCeYxGBZ52GGN+ffkEP0w+fMfHrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNkqH9jk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNkqH9jk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE728C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736664353;
	bh=O/nFgZmioLJ2I6z+3saI8bcnXBwxS51OH79xmcvgk+o=;
	h=To:Subject:From:Date:From;
	b=UNkqH9jkqFxj8Zu5bp0ROB8dWhZYob2UmT9nzy70aHMo9W4NfKTXtnJgsjVplqATT
	 /kDoVMW0JkiBoaFcopoMEaB1D6GAxplVLnqgOuRcxgfGb9arpUgBEQAXxrLqhQweWd
	 diE8zicaijg1vbrawT4pjCvnhWnaO1WGjMKYc5+1fKmnFM1v2qxOpVV//PeL5cMxM0
	 gl7+AXZBtNlkIjGwefHJIIWR98DClR+rxH0PvlcGUtxMafoyy9sEOd4sLN7IwBJCIj
	 rm+voz/2GMybzynkALpTJN/IQah+aNW9mTdScQy2KFNHYeddmQaS5gwvr1uNl1N8Bb
	 5SQwsq1IgBaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA6AE7719C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666435367.16965.16877493405380710019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ad70d7788942ae17914bd5e80bb2985a231ebfe371a40763a4e5bd77805907
Date: Sun, 12 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736664353
