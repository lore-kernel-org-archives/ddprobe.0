Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EABA199A2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721036063; cv=none; b=SiI0RTn57JHenmcVN9pXlLmV3J/R1GYXwmB6Bk+lCatAbmNJmHhH8cWSata8HRy/USeW+qhIk8AArPoxkHgdBT7nH8Jj5WVchm3480HlytNAmExwMHXcIPPStMOoCL6f7ZhT8oJvayOG5/NOKoCL8uhwHr6hQEdATq6kTNq9hl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721036063; c=relaxed/simple;
	bh=Sb4+f1mdMdpsM97SboXx5bCmbkRwCrPs/8Dq41/Wh20=;
	h=To:Subject:From:Message-Id:Date; b=fuz6/GYPAN2M0kat4shlJUJWRn6Sfk1d4/DRC9HeCcoDcsdp0bmKaww6m+k8icRobc2XcrKegUgDZjE24ieT9H38MKW60+EWhY69esOdZUOnmqTd1z0rVDASnVcSx2heBNJBoWiq5tG43Yu2ET9NNrWifKYuXD+Ad4F+2BGdFSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rgkoav8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rgkoav8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD698C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721036062;
	bh=Sb4+f1mdMdpsM97SboXx5bCmbkRwCrPs/8Dq41/Wh20=;
	h=To:Subject:From:Date:From;
	b=Rgkoav8zk1xFOn9zvcqE2loyK0QaEIZ+VZdwupFnl6zQqp9f/C740pFzX+Bd9EZXv
	 V/Ne1Mxz1Mibglq9qzGF58XchXrdI08MIlHahp9R5fk4LzX0dnBt5st0/e6bUj0QxM
	 hfWnfAuC5pSMilt3xZjBmZftZG1avMw2E4PIUowk39vlU4mjCKBQkNYsxjSQlbfhD5
	 4Ais2izKSBFaHAA0aKVoHk9JPCRMzlmsgKhD097iDIRwgzTqSZRIkQeKIZ9drMeHaR
	 CdwFfMe+Ll3mslTt1HvuhmmswzD9HlaaR00SWWFVCKvPWfcPNSGr24clOw9g8eUs7M
	 uDM9+iPqYi4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8061C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103606279.15282.13730985789915933952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c18364437a9fcf2c7c3d504adc9ec848248abf79239f481c5d849373841a55
Date: Mon, 15 Jul 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721036062
