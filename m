Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B5431197F
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761223194; cv=none; b=qpghhea57kIhGXrUBmUG/zG+vUANt6SSwcpOCEfcvEhtQI2ftf1CdQcgNWqttjaKBiMnP0Dfz69D/bMHV55sDVvbGJq7x7fzB0s8i2Ts4iNw8gkHnSSZnODHPJ4GETnowecEdeWgth1LcUkG151NBEwQbBtQIAfeMwUl7QWm+zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761223194; c=relaxed/simple;
	bh=+czLXRcYk0hiS0NHTxn6JYexI4Y9TYMgIEHhhVFPGCc=;
	h=To:Subject:From:Message-Id:Date; b=JakaW3SH5D5OJZ4BZLwQOUts/lcIc1nykT3VxduR7flICO+tTlNCan0oHT1nENJ3ewMbEJbMt16zLrIySUU0YAhHOv3qp8qQ912ak7Lz/7HQP9enZxXdftQKJ9vMkTkz487hhULqgYz8bNOfN/tWxxi3owcNsheLxQGzbJ3TYmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4U1fQUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4U1fQUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC878C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761223193;
	bh=+czLXRcYk0hiS0NHTxn6JYexI4Y9TYMgIEHhhVFPGCc=;
	h=To:Subject:From:Date:From;
	b=J4U1fQUyERIdDlmNjqZ+hNFDL6K/AfB8gGAwubMoWcVFZ7J5jy+v8K5Gd8ClvUF4n
	 CgRa4s3ADTu2HGeqUY32gGFG9FVXZn1+iS3KzGtRcOEvS+p4OdLa7yF1AR7FRu/88g
	 GQipfUgi6T5vSf9RUUs3B+QMmaVq1ETXo+oAHxZzWwcH9a71RSMH1HTisjMk0hNw7u
	 nwvIe2A6DJy26iSPA9xoR2yr9uewTdbvDaU8lAlHHCIbvuNplh/U/WrVZuKGAAhPTZ
	 BLsqEIJmLkR1Fai+E7dy87Em0v5hYnTQpGx6XL71+LfJwZbNrr1MXicGbwFQQYuKh/
	 oy2XwLxlfZaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF4CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122319360.4253.9777299657010189621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a942df3c247f8989cfcab62ab26e60515a81a0942a43f42e9ccf9c837b9e288
Date: Thu, 23 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761223193
