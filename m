Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3676B72614
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753615194; cv=none; b=BPr3Kg1XsF8eAUwvv7wJFthawDBqTUG25bWq0UeWmAcSRzSKmQ/mURq6awPtqtSxidG3xibaqWkoWNDMc8y8t92rSWUpdIfuxkTV1uDpU+a2//nlbSJBvZW/OyDf1cbR3BlCFk1/A59HCsk2h0Q/ntSMAo2Jy9KG/p25wP4ROho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753615194; c=relaxed/simple;
	bh=u9hqS2tRBf7N/shP6+VtHqDfiV5uRyq5gb5u9RyhMtI=;
	h=To:Subject:From:Message-Id:Date; b=ALK6v5cYFulPYL36fk5NjyPKbu4gYusVCRKCuQshcKb3scZ/jxUqr7WyhfJqxdHHWccI5k1HM3WGeFcbQgjWDce75ZzPGpJa6i87Pmo21eUep98N5y4WQXMhKbqREunWXm8nxBHxzDkgI8BYAlnej3WbDkIT/GwhW2oHnXmZI5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBFOXSll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBFOXSll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4580C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753615193;
	bh=u9hqS2tRBf7N/shP6+VtHqDfiV5uRyq5gb5u9RyhMtI=;
	h=To:Subject:From:Date:From;
	b=DBFOXSllAISLWhlu20P3MK+bwtntzRYws7w5vctrgEK1327GiPZ31bB/Tpo5MTRZ4
	 0v5HCCyqFKa+s+mOgywSdHtRALxYWf2qOSVXE4NWjR7oysqrXG3M+eLJZSFWxzhE6r
	 /0lEOQY3NJaVNgbOSQup/7ByXzW7MMOzSgYNsIT7NmcOxVeN7oDXM8VPAtMegO4pJ5
	 GLplHqMEAXPjpHpriRv4m+btfh1TLIcjCtpOnc80kRxoInL05W05kx5fDXLtBNU8sM
	 UPNwRfene76iRnwFi8GbP93wznYac2GrtAklsB7g92l0rlu22Cc0LhpwGPnqIXIPNu
	 K2ZKD94w49doA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914EAC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361519358.16402.5030581518528028967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65397b65b5c76a42808246733df0b6c329e3b47ce3ac1c433d88d6c74f367c1b
Date: Sun, 27 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753615193
