Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06022836C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767165834; cv=none; b=srcUy+g53X17wgHasc4rWY08ijYRGamxCTSx5hkx2hvw5fGfFShAl5OIqfPmkqJrtf1/IlXHn7f3mPSrEoqpxT8ucqPPA5qr/w/9XtQ8D+sMyEFLdcen1/7Aj5jxq6vNe97G8/E4F84XeD8IG6rjR8tgiHLNHIOrcX4YsnJJQkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767165834; c=relaxed/simple;
	bh=90bKwS51UxNENC0t3uvleYC3+bGEzzQ7QEAXgt7l2Zw=;
	h=To:Subject:From:Message-Id:Date; b=FmIsF8SQlWssYUTuR81MhAsuOicwxZIThHQBt887oNqrnm4MAgpQ5k+SlyfoD0hVigBBCqg3RM9TfNPh3M6snXMzJOKMHXnV8IvGaX8KguGNdFpiU5jlKra/nmGobA+IRXEnqj5fQIPNOAW6JBN4DDddAnxvpZzCXcVD/a7/XVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/xqh7yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/xqh7yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7085C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767165833;
	bh=90bKwS51UxNENC0t3uvleYC3+bGEzzQ7QEAXgt7l2Zw=;
	h=To:Subject:From:Date:From;
	b=V/xqh7ynW5kSxMHMviQlE+jIl4ki6qLR6sgi8xpS1mkuxnBFnUKWgJ1fn15mqwizw
	 sb+TleTHs6/DiJD5BntNaau46BNjJvvPsYubLnGBGQuIkaskIxK1TbfgcxCRwh38Kq
	 Uw4L0qezR9PYN8N3l409Qi03bWPtOCl8Ryi4TJYok8QvCUKXUQVZgGDLpkZXY61cSb
	 2TdJrQg+rxfavmI/p+jxYwjtYGD0ROvnXUcsV8Aiz5BpvOJfp+C1TtqSKCUWFQqlsz
	 oglDGQ56U5XSzgW+03d4ymPvyXN6nvcV4aqj3RpX7ftYyBaFM4hgX0zfLD1HuKbdPl
	 HOE0513LBW3qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9330FEE57D3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716583358.14677.11057837613052325129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5963dc257d482d190a020a5caf041631327d2689854eb0fe7f5f94303439e3
Date: Wed, 31 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767165833
