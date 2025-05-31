Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFCE3FB0E
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748658594; cv=none; b=PRNaesftEtFk6jQW//7VlvoHoHV6ULobRyTx1zfGYEAzjGH+V1AEWf5g3k+38sGdqldahwI5llXapCjPhxvZJl4ebXlOvpUO6gjsw4D+GzvQ52ZGno+LK164Xg2h9mKSI2+zwcAcs3Lpn+A7e+d6H1XMdVzDx2TC6a0btYEv9FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748658594; c=relaxed/simple;
	bh=AXE3qOZ/86VD0qeZOxlxb9fY/cn/vCqdIHLYnCyASKY=;
	h=To:Subject:From:Message-Id:Date; b=Dx7RavigPzQ2sfMd6U3LWxVcI/cT5GpMxMDCU+QW975qImbe3q5LPDlaielr9JFkFWhe/NPdnyTAoaDmboTj9vJKl5ajGizsQQtMZnI5UT7FrdVAagAfOPhWOI86EfC01DPDPNesYY6k/3ziFTAqJTkAdMI9qblRbktukIZtOA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJXVGYED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJXVGYED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB451C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748658593;
	bh=AXE3qOZ/86VD0qeZOxlxb9fY/cn/vCqdIHLYnCyASKY=;
	h=To:Subject:From:Date:From;
	b=cJXVGYED8Oh2vP1qG8gP08sQ+EkDKTf8N2Qtso+NMPIfqnqU2xAKjuj8zf6j7bMIj
	 4oolVv8mYH9dMnV43QIydSqoI1852RbbNIHfqqQ7alKXOa2ES1MKZDGB5znvdiqa25
	 wwfN82FZHzxUU2ZDS/iLj1dcln0IHIRY3gLiqEYOOXkV4C35XLW9UNB8f1CjVR4UQI
	 Mhes43GMEDt2K/j+UNwUbS/EMSqVEBTSxMZ4AaG7F2W2N5zSjLd2JUkrNrOaDoHyON
	 n1J0lhRMhuj9aTw+UkpaxaKcZKO1quq/VZ3kHMh6wil7D10opDgLHp+BJBqjyGMc5L
	 LMna97U3AwGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DEC5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865859357.27396.9176539086613479587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b27ca06124c83c65ca8bb3e9d4728d5d63e4a2a4a6a3db4802f0f66cdd75acb
Date: Sat, 31 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748658593
