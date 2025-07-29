Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F8F1F6667
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753757994; cv=none; b=dXN5QHWvyQ57vEy1GqINQy1O/SXmGlpMTA8s4DXmHtyMUbJ/Q5B5wL68RSuXYT/XVvwhvqCd+FA92B11eW9CwLGVnf3wZVw+MFTsvgE8NTysEpt2FxfNLAmSUIXggYGcyBIatf0a1rhPRSp8bzW0viHxTOuYUgVCESWRl6poErw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753757994; c=relaxed/simple;
	bh=GKHV0vrDz8eYnpih5TYR6gJ+i0X9t84SZCC4if511hc=;
	h=To:Subject:From:Message-Id:Date; b=dBS7yNg3En4vWfp9PZ1XiaKWw6iCOEpiJobiiv1LW+PYKAxIRmGP5kZPDcj02dzjiqG8iYznX7hN/+gesUVKB50xaRC3NBybzz2YBSUW5g+GQBsYC7yYJV3vFRV+0XYFdlD3qQ9MdEjRemxUK8RvY+0Vt1VQZLaVBC6XVUUTf8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWC84v/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWC84v/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F0C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753757993;
	bh=GKHV0vrDz8eYnpih5TYR6gJ+i0X9t84SZCC4if511hc=;
	h=To:Subject:From:Date:From;
	b=CWC84v/FrVHNwP1HauAHXOHWlEHm6vHFxIK3c6Dsz4sISPMGQa8ylU5EKQP0uX0pH
	 Q05xa0cGnbr8X/5qn7gZk+S4ACh1BO4PFBjcWlV4Q09BklPyY4AyXlBqLSGeVPxEOG
	 xpMBMHigl5HKZ9YBOAAHYnPykOXlIiAmmJYKEYLD/hECsTKEh9az34urvCcypiDDhh
	 FcKEPVbWrGO0MtwPQe06Ex6A2NLMLxeNK+KBtQg6aHOWZJk0LhcMLzXQzW+VdbLB+n
	 fJWi0Jd1GRoBPzcecq03fLr5olaRGB7hrm0+K6ytS7UVq0FubdenZWqRkYcC9uj4n1
	 HnJew4Tw1345w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91577C83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375799357.25791.2880015756286829653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ef3037502e2ad891133facaebff83c34ce23c3f51db55f94afbea49c452f9a
Date: Tue, 29 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753757993
