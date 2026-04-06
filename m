Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB6F2F690F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775510134; cv=none; b=OnAKHK7LJCnbDnsZriQeIOnTzK9tLcJnvX8XeU++xyGj5v9UheWV9uc6o87+kxSUguRmdDU5PdijU+Qz6LG+CPn2kFZ9UXsiAOtIxFDMFsPS/iOL58XGaC/rfOwwnNXQZPS2bnnKZH55e2eTYcuGf7tZlPfrITuK/FrrikTZYFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775510134; c=relaxed/simple;
	bh=OlpnRh9WX/MXNU7zPH5sl4uTKbqk6rTWHb2yecteAqs=;
	h=To:Subject:From:Message-Id:Date; b=JgDIGscYhLhT/3LIK6t5wUwQuAT8yme4mnezZwQ6hGp1rq+jzODxU1zhLLU5hbakWw4OsFbHkl1YBXSFrACPy1OFCaQgrtH5csnCY+JTpvZNX6oBZFLXWLJoi25Re3hIFYsxGdy5hKjAbsoFfaK90uzlVuuLD/gm/m4kqWJYoPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExndflyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExndflyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C067CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775510133;
	bh=OlpnRh9WX/MXNU7zPH5sl4uTKbqk6rTWHb2yecteAqs=;
	h=To:Subject:From:Date:From;
	b=ExndflyITPiF+QNZI2Mamvw2tr3yNlKPPt7muwpEIRXNO4SouE/03uTuFiA5KYa3A
	 3GWQaAnBZYA7vIkwMsoBA0h8Y0oCTNjgsgLmjQLypmFOQXQ2alb3zRYMSRYI0UdnKs
	 /k2R3CgiO0ER0y2TyAPCyZC/OinFyAvNqvzRwiU/9wVGpM5wHjjnds6BH94FGBiI0p
	 sntThW3jvMHJABRZm4LGjVE6dY1O65/W0nkSVJ+MwA28CWCdsiFscUticispAFzKXh
	 Vz9p2sOMIhdMLiWZlBejHQMelQrE1isnwKlie7Iy+HM+7AUORGBUpShoK30WJe8IqR
	 eb6lwaPkw2atg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCE4FB5168
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551013369.22492.803298473998067315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f85399b77b2f654dcb06d8565fbf85d8dd5dc72caf2f5cc4dad01e844966cbb
Date: Mon, 06 Apr 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775510133
