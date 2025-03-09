Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50503EAC7
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741515534; cv=none; b=SXcnrdiNChd+sB7gPWcp3JNP8pyva2ajDoGBZ2CwcC4iHj88XbVvzyA8x0UeOFwmBWqIWl4/OWnqlv2QdrQDIXJAmmv2c4SmxVKJD2c/W4sh+hrWaEno/KjOSgwrEpffyvyCWueFSBlGAwiTVPOgVP+6UP72AeOd6xNwnKqX8zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741515534; c=relaxed/simple;
	bh=bcA1NuPg4w2UK3NQ0qGIJqlJ2aw6dPXEXkwrzDf9/1c=;
	h=To:Subject:From:Message-Id:Date; b=mdjxdZSb6kVKQiq2bw7TAdT6tTt+pCS5u+Z4BFOpSnu/YlFkT4KEulxE0OP689DTrBovRyDLPxLCJqUmVE/ILJLbrPVbjDtDnzZSIqh8xA9/EqgiU5tgS4zIdgCTxaVB8EIM3BzOF+MUld6/8jU0b2j+o/Ab2zbJJ2kwQVSD9gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiDjOuzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiDjOuzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3804C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741515533;
	bh=bcA1NuPg4w2UK3NQ0qGIJqlJ2aw6dPXEXkwrzDf9/1c=;
	h=To:Subject:From:Date:From;
	b=SiDjOuzLpeoMaJzImPRh+On9W+quVN3ZfZWjmRjDVSQigxKJ32PIDU297A6t9/zUo
	 JiAQv2ma/3hAwYnD/0LowQrvnI5gDLYNuwA/xzSFa2QdmFyJipevHbM8SaCvHY2VAz
	 oYLpzH50J3PEsYsRoUImQLtZnW/ofntr5mHdjYy3WCWfGYoG7j28Xfol3dDpwGfw8N
	 vjarBn1FZUTIcgWMujk11Dqorj0zWpDGkzSvDpUTwnyJhsaBTrXHuThrazB4FfVuzS
	 nPWB5HeUz8tghMUy0na4A82KIKTzVVQS1OglHXBlTowGU83ZSwrY5QttKLPCjx+gpb
	 nZhTyIvYT7Bqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CC6C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151553362.23958.9764993219684247926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ef1d562e21224a642614eb3c571c6b14dc5e30bfae8ba3338ed396785ba569
Date: Sun, 09 Mar 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741515533
