Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAF41BDA91
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735940754; cv=none; b=uAiDvg7hUYqZvCdYJx2Ww+MgbYIG091mIZ5nuTLN8bxW/Fz1ECJXwhNFr6bJEqBefFUjnipY/JOtEZEEavJtodlyy8Q8CMCZmO9Ej3DVAF/neubxhjWhEgG/uBi3l0d6L5xTOV0AovkVWVH2jQOopCWFuvZLxB2F28oL8f/NHYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735940754; c=relaxed/simple;
	bh=fVY0r9zMkMLbCcBt7N8GKHYDt4l7dFCKzp8B4tCv+5U=;
	h=To:Subject:From:Message-Id:Date; b=GgDGzGylzlMChiaI4QX77Awsm4FHcVuvGZ/YR0jLUgfDByNXUlu7Pu0pcsztXIWC7czMGxP7UU8XxNIX9PH8pif2U1DDpsc4wt88i/QTAW4yzDGGKeqbL6J/p8Y9QvqwQBpelUHWveIrJSqpeh4RX/ojDGsOAM9TNpq9WnBVhaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLQsEq4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLQsEq4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A214BC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735940753;
	bh=fVY0r9zMkMLbCcBt7N8GKHYDt4l7dFCKzp8B4tCv+5U=;
	h=To:Subject:From:Date:From;
	b=MLQsEq4zS6PA/2bXVPfNP6LZ6E1aOBjgxTc6Rytqfx+2pINVW4yU0B1IhVNlfyPZh
	 QVN0oVJ96kwWbkact+5iSInoXT4rJxlmn8GjI27PR3lH6RWR4boi+zAtHNCRANhQt2
	 luuRxY/WlNXOUl9O0abg8YJY/L6X/oTU7GZntsJM+74i9aaHxJdhPDFtaAMbj25Q4p
	 3M8MqMzhuiqWtzCmmr9WHXEvPOKgEfd/121B2yrd4G79EZO3DSdzGrwbcPGF8v4U2v
	 QWA0JlrZBDmWCn+HUBKtb4jZAx7+7lZ9bOErCZfWGNPUSnKygV5LEDa1jUEFGdY4VJ
	 DxVqhBcTPt+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2BEE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594075357.9788.13190275000851132422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1816fc2519d9e3875dfe959546c482511d1fe64e5dd1da38b897d306ebd370
Date: Fri, 03 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735940753
