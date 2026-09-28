Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83FF4E50D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790606436; cv=none; b=UUIFJK3QmLmCg/bk5rmDxfEwjiDoDTOoelmYahubyUoWKxbEC8NMRrgljUK6VniBq5mX1cx6cidp1DNtspmGNV1Z1jAMN1Rm4dtgRtLCPrI1N4f78jmkLADqPZw0fJmMj9+RDGys0QSMQSVQXhMk1DAMxX8EVWKhDDVRshk/dHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790606436; c=relaxed/simple;
	bh=Aumxs4eko1yoAEaPGoR6Okv45mbwqSRCylU5WvXplYk=;
	h=To:Subject:From:Message-Id:Date; b=pd8Azt1lUqYz8w86aWsz0Xl0UxLAbJ/IWatvKhLujuvVcJMhQc+SQGxheifAqtqnC+mwtlQyjHEJm9CRfVTOX7WgfmaACzQvJkuiwWl4HeCN9YY9x0kNGNXXbY4ch3C6/1bPrDZq/+v31BtKxGNB3hFq7SHDGy2dopTSvsUHXFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mo0h5/R1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mo0h5/R1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD80CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790606433;
	bh=Aumxs4eko1yoAEaPGoR6Okv45mbwqSRCylU5WvXplYk=;
	h=To:Subject:From:Date:From;
	b=Mo0h5/R1i89gOguuYFBHvKffBWC6K32rkvzgrj/U02V05jlquT+Fb3mjrwM8CAKQ0
	 hDdoUszRoZkoxEuiar8PQVT8j0NTmZ10j5dJcLUqDIxLFooQft/PTok0T0lXIQ2+Rs
	 oHSpTd2/jY59YesCDQKTeQ5i1gi1iaz5/vsKu+O6DscJ2IQDeyG6Jumi1WO+u1/5wq
	 X4irf1AOiIWsYxzMFbb6iMlgaMG5xFjYvToJTICV3Zpbr+6bNRNhO6KKwwtP/dcVCU
	 iCcRR8U12rGOaviIhclwnPGCFEWprrlczJumlLERfxftOE1O4YW7idqslfoognV13p
	 8ICC/E8uSmp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07C3CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060643371.27275.6863714824030678359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babb6c9ffd67be2528cf3f78afe29cf01b0b3546ecf0ae50c17af4a43fd0b2ff
Date: Mon, 28 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790606433
