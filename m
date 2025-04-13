Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8191F92E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744529394; cv=none; b=m/w0sFLNmtRK7ZnULBeGxHnpNUwJLAs5D315AouThogvMpikvV+H8bTiTwQ9CFEWkmjv0oKRfRAJVaLpLiQDIltrYQOA9P7z0Lo1EqV/59I/SlrYBSn7ti8EIHfYtBTGhIBGlr3gvV/xIs6dSuFbCQNHIlTG97DHKBApntC6G7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744529394; c=relaxed/simple;
	bh=MA/pnUe9age5Aht1Gn+5Vrfonp5Q/jGuBZoXg+/zn5s=;
	h=To:Subject:From:Message-Id:Date; b=QCTtqWfg5NgM3EbauW3DHKggCDM58HYuiJnmsvxDavyVpH4eVPfPhWhdzV1cZx/I0zJnmQUVXTLomsWCWEDCUTQNduYaYSfoJvc6Q/cnJCJ7Jry+U0xHAEpxEAaj9/ho5Q4Z04VEBdaKo2tMUJ46iRNilcgbG2Wi+IVWJ0cnCaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfAg43eT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfAg43eT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF74CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744529393;
	bh=MA/pnUe9age5Aht1Gn+5Vrfonp5Q/jGuBZoXg+/zn5s=;
	h=To:Subject:From:Date:From;
	b=sfAg43eTh5gxB0ngokBfZ/Sr6OIez0LwU6SS5jmqh19h2d/pIJ8j31SOFwx8d+XdU
	 7/eEMx1ewcBTO/ogh08phVUcVBir0sNiR9ztLa9f7j85eg+Fl5kWLF4B22EHdJQ2qf
	 aSs5ys319getJfAyCSDsOrthQZT0R2SKyq6fh9PBnGCC1MgAa3cEjo5zDr5dLtUoNf
	 osdcA5TiVssQNtAJ3OEm47CeIoiZ3FPxFtthAiJL1kn3JDRyGQCBcMyCuvicl5Oo9k
	 WeRl6/mN5yUuR6pcRHmCA1aLCUcRVPutKC+yQt24YyJwjZTnuw+tjraJ7VXTXk7vM0
	 0Z+tr1tgCGjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94003C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452939359.22838.8250081498291594044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85aa1aa6a90bf5293a9862d8e211fecbca76fa9c4a00ac332358ecf54b6457f9
Date: Sun, 13 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744529393
