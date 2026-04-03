Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2111326738D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775193334; cv=none; b=OxEK2YbWRlDPSHvHhreWNVIzcADC47cXQnXGqsx9LzAjzLWmaoZVHh4wUUxflH1oIf1Y7IAdgiA+Ctb792DD/SR8pEPmWmNHrCfvdZ2K3Cv5oIIT/ksykBgiIrCUo33Cw9bp9t0D5tYE4T7KvN1BS9gCIAdOvIBnfrJ7a62rHOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775193334; c=relaxed/simple;
	bh=qnzJNZQNsv/mMMpuV0oOZ4vZujGFjaitq/o6+iazsy8=;
	h=To:Subject:From:Message-Id:Date; b=tQ62A6xhnaSz9xiQl7XY1X5TCtmtrFBVKoRExTJK/IjiSI0R28Mo9N3TieVCGogoIAjFeZE1OE4zJVYrVa9gqrrzMqtEVU4KqT6vqWYpoY0QHZ88UystcWWoMznsnOKY1fFWUF6yX8K9n9wKlw/ogHbbJd7IY01JW7j6CklUqxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5kTDOF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5kTDOF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4FEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775193333;
	bh=qnzJNZQNsv/mMMpuV0oOZ4vZujGFjaitq/o6+iazsy8=;
	h=To:Subject:From:Date:From;
	b=l5kTDOF8DMQeBrFgpbTsvCcZIUBPOimPyUIVbV8Cv6CPkyTWUDPHCDVh/t0c/uAr0
	 E3BG4PGT10ToHhJfR7rBFnTCAXyc7jt0C4hzVAOkeG/4FP22dNTwovsUAFPNOxNzf8
	 /ejzvuU74v8Ys+thxJ9RD+j0+0ieQjNMRSoP+R99058NS40X4t7D9o3cQUE9IiDr4A
	 piwmYb7erakxNn0nFoxh5oVorjjg6xfmHqfx2dpsKqmZUUTq4TxfU1tXAUT83ZjGhZ
	 blC+d3Pb4DNJSgHkmEZKUYPluMyVB/Cwpez0HAvTzg/+dDPX37BTglOCqq9pMIhtEL
	 CRDySjk5hFqXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB3BD7309E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519333369.20371.6416888709447775274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae9d5d4a723b344a0f4d52be0fd2a72eb72b7747ba1a58bbfb3a48d7b685f1e
Date: Fri, 03 Apr 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775193333
