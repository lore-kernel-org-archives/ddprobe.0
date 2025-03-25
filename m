Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CF51EE7B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742941194; cv=none; b=KAWsJXzkyi00RZwynUZeBXlHLfHvgtgTaDInFwp440mIbPZKkST7/mbu8ImBy4i/8h5NaAzBiOywg6ZgPSr7feeCjdRKduvqr3B1hgCY0mHwnhkdUxLkJFJ2scBvAB3lw1iRBjDbtpwdA2VWpiqJYGZg1pMZhV2Bol3uE075mic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742941194; c=relaxed/simple;
	bh=uMT+jWTN9UwInvAOuuJtZ657u08wt7HV9/KaGHCDJIE=;
	h=To:Subject:From:Message-Id:Date; b=ps82fiEemd0t8Ms3aarvrqWdZCq2XucaoUJTWkEyi5pERHEsqBfxBsuBKYtIpJ9hyBgjdsHMMnC0zSPVVtkzSFiRz8eZ69eT0iu+uRPXOGqApdcP0Zb/Jm9RNIdq+R89Nc/icwperdTyUtGbidiwFMF3o1cwCXYpE2dQLDoCio8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnXaH9Lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnXaH9Lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C212FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742941193;
	bh=uMT+jWTN9UwInvAOuuJtZ657u08wt7HV9/KaGHCDJIE=;
	h=To:Subject:From:Date:From;
	b=QnXaH9LkmCcKGZcNoKJzuzksZ5pVDhjqZrzJCvVyomMLsilbald05c5a3UuzC0CTO
	 xACbIO3zlmEGShuU31mIP2LEI3JGfHopu+z569bS/Dl7EzicIs+BRc72NvShdfvy+a
	 M0afrAwlulutlo0Ocol0PxiuBpACuRhiB+dQFdGScbpb846cQtuZV3KWixCkUUsLfP
	 bhzuXn6QKHZC5nJWdAWDQ7jMZe3rt9dk4fw3uSDfdY1Y2/jfcSytufthOtdxdshDT7
	 Y4QBOcWWCWPyMlT47z7vn6iL1CyWjc6mZaOHglUbwDx3jahblarudja5W6Y7Lu3iFN
	 veGdVGQGpv3aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A81C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294119368.15107.12366993871639382808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b32144058c761087b4496d1ef7dfc21f46adae2eb18020f346ea765f798044
Date: Tue, 25 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742941193
