Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6C927CB04
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767687834; cv=none; b=nh4z3VirenZYXhE7y5s6ogTN2mC/+ReYlCThQukGkO76vXwxqZ+zIv43p/zCAgZ9Ae2YtnwWBfJd2QxMilVywxJmz70TMazTek6dNPc8r0N49WqNE2RNjnNe1EF/QhXxX+mSZO5T49hD8NA5YZ5ToqBHLm8E7juAAOb0g+m8H98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767687834; c=relaxed/simple;
	bh=d7C1/5itrglzarKl5HBtXjdDB2OqrklcocZMZku16zI=;
	h=To:Subject:From:Message-Id:Date; b=bDmmEDmibZCf5tnZep9kH3cHJrj1KNRjKlU1TqfNUS5bANYKDA8eukkU1P69IHBnV/UIfNWSF5Z1Si7PKvEuyzQoMNzoyY6DUW5FtZDuQ7NMGL0zA+C6MjpBXElHP4Mdl/UIyFxG+t65iyzdI0+B89jk/fG6Q06HXM1Nvx1F4y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTB6ObIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTB6ObIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3CAC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767687833;
	bh=d7C1/5itrglzarKl5HBtXjdDB2OqrklcocZMZku16zI=;
	h=To:Subject:From:Date:From;
	b=pTB6ObIBlRdtS7LyT2hHHRE7v6Fmjmi1ToqesuvA7K1gc5L82l8TGf0EBu7ABHHdG
	 70a4EK67CrK15QuFTPCtP4Q/YzkuQf/hEnN52SkfEYwNMxMI+LGVLevAQ9xFUXAiqw
	 h76ZoURFLQyMVXkZElsrRlqkGkTwk4pWVKPAqlrNiI56rRsL7jAqqyEalI93Bwetvz
	 smh9FjaM0lZlchWmgzD1yWCKxJX83BA2S+c0sLXiKkqBEcSrMtAWh8AQK2m24JYf2o
	 CQne7M0pKXP1FYaKndD6vyMhRjt8lfkBMcIjYZDEt0YCw/g/g9nPcPTiN5/3sY9809
	 Tw8v8HcX+sKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3CC47BC4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768783357.19157.12610472699858498831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba39d5267057f5b2d9cc5212e343a184d112b5b34541e271dda50c4515ee7013
Date: Tue, 06 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767687833
