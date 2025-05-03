Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF422745E
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746301194; cv=none; b=h+TKwsqcTWH6ezxr8PGmV7Smr7RM4AoYtSn0R0BxvVpPvehlG1m7JqxNnnkY25URykHeqzAmZ4L+HfIDgwo3EdvkKMb9DsoE1PI4xyOMKD8fg0LGDURCdF/wLishBHaQ/SMeNPLUBmwt5wyVDl4lf68gvxztv66km6QJwlhrpf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746301194; c=relaxed/simple;
	bh=Sy9C1PPFsJiPl07SMevk9MvgEBKSpZNyl33VcefcoGY=;
	h=To:Subject:From:Message-Id:Date; b=gOA0ctW0QEkW6VrDPzsumTyf8Zf6AJp9W1kzbA9LtqZ6eLZsRH+n72IyEXmGl5H5nihb/owKRtjSIyLAIgXASzHYmd0D9CHmCPjR7CBjEgBujaqSo52oW1SjTnaSwQrrEH34sUmiU3ASjBJodDF/F0gpyx7L7hcO2loqn2IUNP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fk5BdG5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fk5BdG5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D03EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746301193;
	bh=Sy9C1PPFsJiPl07SMevk9MvgEBKSpZNyl33VcefcoGY=;
	h=To:Subject:From:Date:From;
	b=Fk5BdG5z35eUrx2+mBCqaA2cLqWFVRZ0bDxdPr7osiT80biDNnz8aROcPdCxmH2r6
	 c/7FRcfDqX/WLq0DUmk7NnBm9NMneoKZlpCB/EhzF47tc+NUd7zJ8ZtAPcJzBpprBj
	 RFBke5S29Bzc8iTdqOSgHqX+eKdm+g2LirERamyKDifLca/0WrB+udSDeaZlqzl8rh
	 nuH9b+Tl+EdD2Q3kbUGoxaDThcQH1uMb9SLEkukTaSKQmL62GQ92KZO03HUgfPaGWj
	 N3SX2L8c2p7Xc33YVKWawN/8G1xoVld8sGK0IJMPyZ+jRS12H+ziKZwZWbVJI7lNer
	 BgRj49BBVw0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1A3C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630119357.29889.2732675149615244114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90276187a1c56e499a92c8d8f09464c75a2d8573337bcc0d699cc8377212ac76
Date: Sat, 03 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746301193
