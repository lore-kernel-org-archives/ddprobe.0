Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AD31E4AB
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 14:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716387203; cv=none; b=m7ibGqawMukwJ3MWIL3E2xjcBMhsHk/Rotg3cvzUfM8ZYmU2Nlzeyxzh0epNecaeDianu1ddQfsKjux43Jav8YOwxuVOOV++nJq171tKWZ2J8C0IzUIjSfj0RiEs51fnm9u8rHvwsHYh6SMj9kZ9QcAdxse2/J5ak6TL6U9Oezc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716387203; c=relaxed/simple;
	bh=VlDO2Y0YY3oXW8Ws0pjmlDMsUcfjHWd7zNw1h7jxzs4=;
	h=To:Subject:From:Message-Id:Date; b=CRT58eYoin+SFDFI+svivQ/C9IAWzRVw5+sdRlOKgWy5J2zUh2UHXeja5DKB0vnkRgl2hvU5JXjkmQlr07syYE427wi46PpUkWqXs2Ja5KAONyLsEHTHUwHBsEJt5lNdkAnDgfhwBTHZWEYjjtLF7pLRN0pLxQOf9fD/ekRICvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPJ4fEVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPJ4fEVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB00AC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 14:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716387203;
	bh=VlDO2Y0YY3oXW8Ws0pjmlDMsUcfjHWd7zNw1h7jxzs4=;
	h=To:Subject:From:Date:From;
	b=UPJ4fEVBQ5oizspDCwVQ3YrG6TTBN2PFfShoxdgXOye/6BoLANj6SZKqP6jaTblDW
	 rbNBa+9czFcvLq1MIN9sdM7X3DWBLnZ1Af6btlc7hZZeimD0wKEUZUdFzioPzzX8Tu
	 6aAUDNwnCUrULzhp9Div2wqhrTE76r7YNVLnGA6Ndwl+eesp1nb/pQYXx1jOHQFANb
	 LdN/WCwD1WTdoFtQwY1Ra8SL9z2Yw8y/am6OCWDAnYVNLi/DsOjhqhUDvKTEEGz654
	 r5okym/YVMFIz9yhKrgTWifv1hJPrPB8Wfy9jULBLQoTK+vmTiwn7kxy6Yitchu8OV
	 h0KPmS/TA3jLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B1BC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 14:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171638720284.22747.4538609254024636367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cdf47c868c78d1b74cb529d9a4ee43d818a3bdb17c67ba9bbfad557ecc54d8
Date: Wed, 22 May 2024 14:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716387202
