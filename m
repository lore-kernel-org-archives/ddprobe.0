Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0761F2628D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770089634; cv=none; b=K3NZmQLVjEEWgJ+mDp2/UAfz5qu26D55TQFTCpdpoWFZ064Yyfmza8xlZ6Z86FWZb8968qJTxjC+El7cxWdyAnwnZCQKv1NFou18hOLo+OvzI9dfHmm7WIxG9vq82Fkdsekd6jvOoYEsIBzmleZLJixi7v5K46hg71CMmz53EOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770089634; c=relaxed/simple;
	bh=H9JcLwqmwk3aFhpNPGHbgsWitAbwKZ7QqVIn8Le5nSs=;
	h=To:Subject:From:Message-Id:Date; b=G2lsFhhom322SUTxF7Ynb2cpRAaOLIMbRZVrYRAce3PJb9e8AB/F2CC6XaCbG60yVMTJQ6eGnJbw6CY9MrgwLhcA2xvHado6Cab+DfkhKyFpiBleTjtImHUYw8mnF9QI1zuvuwC9aWqvHLI2/pveqnnqaAM06gMncPuYaC15Has=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6+BhN3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6+BhN3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D6C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770089633;
	bh=H9JcLwqmwk3aFhpNPGHbgsWitAbwKZ7QqVIn8Le5nSs=;
	h=To:Subject:From:Date:From;
	b=X6+BhN3hLpNF8Qx+PrvJj70Nkxv0Mfv3amJl5Fmnza5WBgVts5jep4EwVIN7DJeYR
	 314m7o9H4ABe8vRoX6iYy1ROg/W1LPA+wW9WdAv1cE89CToyEeL+pWZFuyBiURHR4D
	 uhlFVITjmOrKUkenCnCuGsXdWBciHaxEffqpAtmZLYObBHZhs+XijATVGmvlxWbjJ3
	 tnDxk1dVHy+CQML6imI9Cgvlz/FEKMrta1uyRwJMOCmwTw4jfOrBYFfX+JPIxOgwzG
	 9qQTYYtPQLjgmBnlahl7VAt8BlqI8OHiRvcdEARYs6BJOGHrTteUsbGY2Aagz5lcJS
	 YrkVH6xs+humw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C61E83040
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008963358.10765.14508429851509168925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb59c0f8315cbe06a239ea515199027da9bedd0a1a5dcbab577c7e5b40d323cd
Date: Tue, 03 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770089633
