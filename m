Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5183BB5A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771734294; cv=none; b=Qcq+1qBOLS/LbtiTyD/uJLNebnK/uXgFeKMvS2iq7iasAHLS4ousj4IUpi88UVGbONQDe89ZlRgAoBvzXAzUV9KQUtfMKSWh8C8FA8Khx77dGoijPPYijpdfX0MezdEJpdkyluug/hj6yhn/a78dr27RueBStj0RQ2UH0gRsL1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771734294; c=relaxed/simple;
	bh=cPcQh8SvuEl01DbEE66TP42zXNHhdmCWN7cUb83ENEI=;
	h=To:Subject:From:Message-Id:Date; b=udbgy8RLs33jmzMTZt6BvNioSoRhalfYhN/D1IE8IdzrevRQ9M2hiewAn24roxs6ewLncxs40a1/Z79tOsCJM5O8CH6O1foL4ynEP0x6jfkNv11mfj7l4UyEm1VgGPfZpWXJr+P1SEAFYS7YfUi8n+iZGvoPItl+5ohvrhqcBPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqXpU+Mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqXpU+Mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21F2C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771734293;
	bh=cPcQh8SvuEl01DbEE66TP42zXNHhdmCWN7cUb83ENEI=;
	h=To:Subject:From:Date:From;
	b=jqXpU+Mbseye2h4w9UNQUc9RRwtOTvmYDSKMbFSS6HAG+q4jWkU2XN5ftUcj3eT6p
	 he9dFCh4Skd9zc704BvaMLhfRAhCPHZ/3EGcLjjALnVNhl9DO6/tBNuCHITTr4KBGn
	 0Kk0iiDKbdBIxohFVrIvUwxzEexIvjNAtuE3rUFVAtXRjs3t4W+DTszrDwZTu+Wx/u
	 YH1ANsAN382aCsmKF82ydD8YwrFHPKHQjWJtBCfMK4vTSaWLUGNxq0lY+hWj1XqIID
	 7YuexMs4DYCeO0pC1ak/EpxLmWPn+F6NypPahljSujE4h4uKNHsGDfMN62IIpusZYp
	 baHAvqaWYWfbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC25E9A02C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173429365.17240.11378539334319321827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c1d1ad3c67724216c29f77d206d9b259d4ad8604a2a34410d0b36f6abcb5f7
Date: Sun, 22 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771734293
