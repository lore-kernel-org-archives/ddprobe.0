Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD9F23E340
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761830994; cv=none; b=Tfsr3PHgk36is+qb7fNUThOkxXVj9wX3sGJAS/+aVqJ6ap6ybetPNc+0zEpt96X+qnilVnPRU6DlZki4EaEZ9rJeSgYOO1yZMqliMFDCBmQrAiANjt8J4AxobkghQIo2pN7iwXlS39DIsu39VTjOZdjj764a6gW+uBJRNvJbzvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761830994; c=relaxed/simple;
	bh=wshBOJpleCA882HxZaPBYxUkygXFmnycVc0vVnxL8Uk=;
	h=To:Subject:From:Message-Id:Date; b=oLSdPlu7rUYubWlEtR/jBVQSLP5dSn2GopAqrQS4i8TU2bIbjNErxQYWRYvFctonilWjf6CuK3dis1+f5STMCTd0oEqZ+ORSZf06p+pkEMdkzjcN78FsWXIq33H9Y+73YGNSS+GUA0xID769aTt56goZgMz5K/OD1Dmc7J++gmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKrvttow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKrvttow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A008AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761830993;
	bh=wshBOJpleCA882HxZaPBYxUkygXFmnycVc0vVnxL8Uk=;
	h=To:Subject:From:Date:From;
	b=jKrvttowETzOVinB3+wgAThW40YViiI9rLS0vCjXsrNV58tp8NOTTViYr1d6SAhxC
	 mfA/1YlDDnPMQpFrNu/5HvelHHeradoPP5jWs6XISlWsWb6WKMUY1Yr5Z7PNA+nuv9
	 1xQh5isadGucXDnl99+esuQI0vxrz6ac44e6Fn+QGTWre9qduXskAo6kf1ltzBeDJh
	 HY53TzD+nfJg2KMslkAs9kyLXJjF/elelFbd2X1CS1fNchy+G6ljncL1BnRRNJ+dnO
	 uFckz+hKWg77bC1JPo7wCMpkbNWiYsG7Tn0D7UEcWuq72joC5dWmnl9kza2BDjBqnk
	 Z1ME+9q6SBjlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F5CCF9FC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183099358.28140.1198452744113271556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71243b98931db0d826bc1427cb50ab839d7921520df5d67791df6f06da987ad7
Date: Thu, 30 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761830993
