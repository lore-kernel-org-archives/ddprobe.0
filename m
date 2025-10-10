Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218D3261B78
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760066994; cv=none; b=hq4Q7cmR1u2Yia3MhX15bNePvhUYtAUs35zTeLPKfGqO2d8EFdtNhhvUzu9y9IzrxRoGRr+f2ZBs1vJcNvzM7jwPS0sbicvdLvAslG14Uu7rZFJA9HeLAEZ8w9U14uZz0f2zOaWxPOhDTAI8RnK2hPDBA5MjsrGJXpJauSF+mxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760066994; c=relaxed/simple;
	bh=+8NhZmTplSUe28WpyC1w/GQhy+8/ZLkeS1TxJQ6EKpk=;
	h=To:Subject:From:Message-Id:Date; b=l5yAYW3LBP+Cf1HUVtp44XgSVGKFSoyX2Rq8vvgmWnX6zmBR0Ji5H5CaCZIHr7SivaAohNT9yM9qQr4RBoHZzKx4nWp2NcaaxKwVk82gsQjq6Yn5WXndHQHzt6+3m5LeHCoOi82efgtNDAEp9QqYzDFXoTs60OeKNavEmBfjQP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xhsa0hcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xhsa0hcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A717BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760066993;
	bh=+8NhZmTplSUe28WpyC1w/GQhy+8/ZLkeS1TxJQ6EKpk=;
	h=To:Subject:From:Date:From;
	b=Xhsa0hcb45rCjl8Bh9C1IO4wreo5S/CrUZ6m0eNxe1jbxPZQ6dfA2r/+aPTrJBWRx
	 h2n4U7temVFi2QJrb1fkNwe1pnShcYhCQh4W2iDu2fVdQxecmjIUubCXFVd1WjYGPV
	 /ha3hFev2YQ0hxwf/VQV7cl4lfHowkoG4FEG57l2mvekM31kxndgUXr8PIomvbl/3b
	 M+BeoU51NNf17H45L/ja4PYSll4oskzgFY/y/qM5hW+R+h802Xx/MwQvOFyqz22Jvl
	 9P7wRtIgiHcprZVO7HHuFeQ4Ycc7Bym3mVozBhPHHWfQ9qv4epiPxMlurcx75QY/Y8
	 QGGXbZG0CSQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACBCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006699358.4834.8670313313572070761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1346c7ecae3d868ffe0ad59f8e40d934e2d71e4800cdc562d05fcab2bccbb298
Date: Fri, 10 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760066993
