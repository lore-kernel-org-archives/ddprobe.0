Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8003811CBA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784467114; cv=none; b=eeBl+/caZ8gVKGe421VVxXXYyJVGRBy/80hVdJte28KmggSMcXOUjC5G+vA2UNbJbK2G1N8xbBpd21JTdFWDhH3uA2H+Wa7htzzJHpNansPUa75HdLyByxnzxwFlF0oMx3sNxpOUFbWTHtxSnJSSTn6rz+undchBhSGJyFoNXLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784467114; c=relaxed/simple;
	bh=rIEcQ8C8dycWAzgPnNa2t5c5tUO+VYsg1hpDGjfFurg=;
	h=To:Subject:From:Message-Id:Date; b=XIjS2lk/ymDnAqFdyfcBDW5hxONiARv1eS8E/ULe7cBTvqkFhxCYZPUTkT6i4QpZ3AIEFNIyqNDLtosvDrBEPSZzl3F2CvU4adWSgILep4hyBI/JLgYV01BVtiM4vDg3BsAipYVWA1mkrIYFRweeBYUUqrdjYaNqQUqu7W3MXGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSpEmDBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSpEmDBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D048FC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784467113;
	bh=rIEcQ8C8dycWAzgPnNa2t5c5tUO+VYsg1hpDGjfFurg=;
	h=To:Subject:From:Date:From;
	b=XSpEmDBX5nG/8wcRBFtmFT9tOCtRspc47fIPd3zClpSfsEfDMdqFfsM45bJYjfQyh
	 XcywHRtIsKgeNRI8C4RdPd5kU58Zk/w785RqGHJxipm7rkW/gA6X9oF499xCqp8k7X
	 8iB554YlG+qsuCah3Am7PtkwHfHI3IazvYJnaK0LgM0NnB16oIrvlKSsiEnO0lsVg1
	 WpVXFge3vc4sEW3A2OjEzMzOXxUS8p/6t8UIwUbY0PvjpGVA4h7iD/mIR6wCMiKCmV
	 q8YlBLcQDS/W21YqJEZddiC9TeJwGQtFOWa5TW/YjPqTvq0OnDouaAxNVu5QhfnePG
	 0gBXtsYxhL+Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE42CC44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446711368.7354.16556090455560505026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c8026ccdd0d859577c7e219f524bce7bf6a10ba55ee070337cb6a44293e449
Date: Sun, 19 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784467113
