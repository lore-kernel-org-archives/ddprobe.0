Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCD82E9ECB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761488394; cv=none; b=p/XkGnmvBc7LE5QUGm799rYr1Q4btrt/2aRazsEWbkfvtgo0aGxBeNaoWDZGdvNGun5PeWvbxQ5UzbzIo6csSt2Z9dFbANocW+uZeMC7mQ6bTEBvg/fLYACEiDuo2FlMMdFG+2eVIPZR/O9cbyZPvFIwoBd4wWqgMbeVcpZH1ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761488394; c=relaxed/simple;
	bh=u1u4V9j4IsD9PVmxSrX8RAn/DiQefsifcuih9iR6Iz0=;
	h=To:Subject:From:Message-Id:Date; b=DxXl9EBgCxATuSoY3CzpQNW2GxeRpfw6SmYo+ZGIy2gGod654RjgJczjgzRCr5QHH55ha26VjaO1QDGbeIcyg1/HlRNpQTJCD8jvU3OifmHWcdhNUOJI2pwH401tF8v4+CunHQa4q4We9CwC1xEGjYhKd3xMbPJHPCyrBDxlnHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXSd1ypK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXSd1ypK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7ADC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761488393;
	bh=u1u4V9j4IsD9PVmxSrX8RAn/DiQefsifcuih9iR6Iz0=;
	h=To:Subject:From:Date:From;
	b=UXSd1ypKUxD/1g9Y3SimHI8owY7Grt6cKz2B8+Rbi5hx07OHIOAz4/qkPpt7nV/U1
	 UE133soJtLwB1tiAj73pFFSoZ+ScZB8zVvL0ltx5MlgOLUAurODVBDxHoKmRvet4tu
	 aaxO75+VPWZsrx35lS7UZ8LuGLRX6NRuNyDhJax5DCyRNu5QWN9jhchRuOBDM+wimX
	 /OriPJgUq5fgdslNugAI1aLnuVrVp/2VKhRkrwWScE+/jfKs4Ck9gLCKgphfOOaklG
	 UFqn3H+T01QeLwlsLJEHNIigGCSy2Y3+wXYOswyzveIuz4pPHetsp+vIr8fehwCsj5
	 Yg1k5krn0rx8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10BCCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148839364.22406.2821456004890879780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e0c678636efbcbd0991eaf20e4a018631810fee9f8ce3139c4f608dcf726cb
Date: Sun, 26 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761488393
