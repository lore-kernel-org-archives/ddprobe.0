Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D551274B44
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753719594; cv=none; b=jx+azFLn/+GJLzDf7wtfqFXuWk5TefUc3fQQVbmEcKLcyaCc8JFSHlYcsscJ1Y3Jhuv/OV7vin5c4D18BC8q5Nw2zhLPomxF9IZ3jbsURrQ1gNlbFcGpkPt4M2LxQviG/rBHx3KzBT88kBmcr4MZwKxW8bpXBHLzYTzoOtkGgTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753719594; c=relaxed/simple;
	bh=i4HM1HJG43chgBA7q0wliu57hNKmxcIseAMGyf9ypyo=;
	h=To:Subject:From:Message-Id:Date; b=upZF3sADoEbdHs5eqJTr/AopYBATt7azFvFAqom3ygBSFqsryL+nl7b3IiH2msFLZYqhP/qV5il1r685H4Mrpk299DzkhG40xm0sq1xfhYEcTAtKttuBfyi57ahMKmivPwiIzGc/G+bD52oCjJK9jz+W1aTyXmiJ+62x4H7cADM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbePyn5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbePyn5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1227C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753719593;
	bh=i4HM1HJG43chgBA7q0wliu57hNKmxcIseAMGyf9ypyo=;
	h=To:Subject:From:Date:From;
	b=hbePyn5aa2R+10Q7zm9w8m87wd/Ohte52vu7mWD2WhgvtFluPVsneDqiqsgWlBoy4
	 H6VSP9B/aNO8+Z+MsDjwViwbCXyxYnueu4zStDqZcX1ycgro0WoZN14kEIEk49fAkg
	 IXEHNm66+aTSS+5OOMglVPd5jDkPnOfTJnX7NrWDErJ0lGz1kbHEazriOdgcZctz05
	 G7ypd6//AgUXQ+UcNskA5Gp33Hgn4wLnrHNCh6d67CI0XP+JWpcMGDJ8A8EFM5Q/C/
	 SWSpUArBR5jrGOppnzHb3DbH+eMWGMRCpwgvyiAD2+WIPjSbefW+4IA2NvUnsPbfVj
	 5SlzKV5wkH5Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BEC83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371959358.29456.17823107427481914724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd03606d263f0a4e4c73267d59fbdc656e775c42a4d79f2ce8ace94df8a2eb8b
Date: Mon, 28 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753719593
