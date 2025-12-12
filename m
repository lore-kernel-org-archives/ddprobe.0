Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE15219FC
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765502574; cv=none; b=hYXoNgkuWHFigod/5icLvs2k9vSb3iLr7DnfGqPZITBR+0/o0ofWKaNpjPZs5DcYsop03fLdj2liPIITjLUe2r9q+wHwPoIvEFkVDzJ8uzUAQ3uJZQHJ5KKavpr9FZ1V4DkyPm5pf7MDT2fuEpkp8MMhdeonDNODznoFt7fOa3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765502574; c=relaxed/simple;
	bh=wGuNbm+G4rqH+02bCptguHZOx7oXcAVQPftSfK2IpLA=;
	h=To:Subject:From:Message-Id:Date; b=F0vWJMoO/d5/UBRsi8vzh6rIAQWx7O+UeFhFGOh94O/GCz4dExL/5tHub06uT9zDEyzKRViJ8J8DKXLGURwxfuLJT+9W2FheDGT5BW7sFURXNJzwoozYBpJGYV4uzf6/v5tRZb3xPc+tDUPPRmJ2h0sbF46sU7ZNSPF5aD+dMSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZY+E2cT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZY+E2cT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03EFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765502573;
	bh=wGuNbm+G4rqH+02bCptguHZOx7oXcAVQPftSfK2IpLA=;
	h=To:Subject:From:Date:From;
	b=cZY+E2cT3SGeXWz6jmymvfPuGXV9j+o4psrFMVriVUSanjvzBMbrQ2kqDJOERMIe/
	 S1F9UCGkNL3IHLRsWQAUi6nfIfJgD4kh+VTXC0HyJOSIiZ9+DALoW+702O1n6Nf4Sh
	 lT5NoWyr3v6QTIgRzWj3nS4NSrZ4CVtuFNTRJkW2Lg0BEnFbNiLJY/1lnTuze0WpVf
	 XhVle51VBDiwheX/qOBZdbEuqB/f5V5tqZZjAXrbUgWR16TjfMJYfwqggCvvGTTZlY
	 12OvfX5BlwIW4cC/NbfWkcfhLeJcLGl6M1XzzmgQSxoD2Wiq+fxFt47W/Qm3H/Q51/
	 FhL5Vbjs9XfMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620BD41D74
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550257359.17326.6181619836291973498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999130be4c0563cb5e55dde37774a39f990dc0cf42185b3705eba7df52bfedd9
Date: Fri, 12 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765502573
