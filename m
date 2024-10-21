Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77CB1DE8B8
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729497954; cv=none; b=NC7aJygBY+e/0A8dk6mhSzorzUnoCY74EbBSsbVOhji+VwOvRhz2uYimZnNc0DIYNHTeCzk+ArBJBJymvYXjUojEM3SAuNwClF84GbxMPBfl5rQqlykA0SplbAClfIiyJ1FekKon3zI4sdGf26RoVFSVYuF3AwnxiAJELJQsi38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729497954; c=relaxed/simple;
	bh=FSnTWfOsYPGPMbTRfd0VHYjTiBkJ9h93ulqO0ElYDQo=;
	h=To:Subject:From:Message-Id:Date; b=Tezti1ak34NGSBmVy8u9xHgtGXyEHTDESeph/0h+4zc6ficeGMVuaistmF4fIJTaf12gtT6d+J7vycoRPZEcqwsxqPheh2EmPHmyjiUfbWe/vhMTHB4qUygfdiDEQVXyuNXatvHdHUiy6G474HDj4mPm+GfUOnO5rHKXZgnFTLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNzGw0jK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNzGw0jK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B069CC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729497953;
	bh=FSnTWfOsYPGPMbTRfd0VHYjTiBkJ9h93ulqO0ElYDQo=;
	h=To:Subject:From:Date:From;
	b=kNzGw0jKoJ1kexdzLZ3JdH28zlOsnuutV1qJiV5OuiczG7No/5mzJqYEkjlwemQaf
	 pgHQNdWFNXc+QERs/xCJtIyew2ipC2xO1BTsTyAmjQ9O8ChQX1gxf0zGGdXq7QkTx4
	 F5kfEnfeko51gv+TaF0ZFsP1ncs89HtZPvFI04GCaoz1WLeiS1qVoYGduVUI+KpnB8
	 9i00ahasEa8q+I7FAlutiXdHnCp87t7F8tYt5UgrK23+HXLbW2coXbFPmXbSBMAa/r
	 1VCYMl5FGvueInHXviCqSK+u1aRf/dJlRG/w50bc10sMas0o0087OArkFuZZXpCSHn
	 Y5mYX/65TBT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A02D0E6C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172949795360.29336.4783262767107007372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c48ed1dec0197d2eec7f1c4b412fb6838a103b876b2bc51c50495050c86a93f
Date: Mon, 21 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729497953
