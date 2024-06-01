Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6211C14F9D4
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717251263; cv=none; b=UWCQh9wXfJmYqThx4Cme7OX0x6gdBBZFUGqi2LMMwVqVpJuldoKrpdsD9QcphHIaRvxGh04A6GCwr43AEAaamtwWFyE7tXRzRC+W7iCxx1f10eMe4JTbEUSEQrM/ADZlNcsU2mBMuNnOWjId6jOf2YJybHo/T3MTo5ipJmCO8TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717251263; c=relaxed/simple;
	bh=+GyY+KqaGJESlTBjE1rYQ1jeixtnSTpw5ymkIS/iR60=;
	h=To:Subject:From:Message-Id:Date; b=ZCc0quTQuxeLJ3f/MWZ20hrtpCdPsYDXXWJN3KL6yWWBhKLu9h5yPS8NHoClC+4cE1JN4vQ1M9XFiyf9zQ/wvq2PkfjWHiFqt/eA6K+SJMrOpH6zelW2Z3k2TnprI+DBCcFL0aVPvgVIkmmE7SJN5/XWVyWi+2a6FH0qm4G3uxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQiAaet2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQiAaet2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFB2C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717251262;
	bh=+GyY+KqaGJESlTBjE1rYQ1jeixtnSTpw5ymkIS/iR60=;
	h=To:Subject:From:Date:From;
	b=GQiAaet2g1KavpW+G/TViKjwF2guFHGegA4KGDnJoDrmL8M0LR8ansthqsAZGMhHu
	 pT5vxSXmZWbDrmmop+uSA20ou+1+U1UIl+dBrm9OtwT21yPxhM4vdNU1M6C/ThaPKN
	 zb8UE2wz4Lyj5xOdvFy6tvpKIu8qtV4PY292oUhLdsopgqrwdjw5tW1alemShB2/uv
	 SUjHfd62P5gtJyHPO5bxCn5sIxV9/WWR2lG1c5g+81xDOvmHMiFG9WeEAzPaehBhvO
	 SZmvI6AKwnFIa6CPbf2BTIVlwyQPpAsssO/r1GmBVs/DAdDvGab3aowHWDA5TWKRik
	 z5sZkxb1rakgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26CFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725126277.3350.6770540705561861554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6fe41f3fd53a45366a647680a73867d5e9afc931c3b374e677abd589656c5d
Date: Sat, 01 Jun 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717251262
