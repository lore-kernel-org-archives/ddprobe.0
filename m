Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0072F2D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719115943; cv=none; b=BhM05sWzBeLYuDlXUcjyhNeBFtlzBC1+tAHK+QjojdlxrSR59KQnsT9iCdgn7fP6oFMInA9KTtJ8UqhYfFq4SbeZQBufceK+2UU8/Yz47X19Tm6mlciDCB7/8LzmLV4vJS6+ruqazve5SD1PPK5LuZLptITa4JSsHV/WdJayICk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719115943; c=relaxed/simple;
	bh=ncLLS5nxJhCjSGfKAFO/9fhmSrM9Sdm5NEGLI2MgTAI=;
	h=To:Subject:From:Message-Id:Date; b=P54mpoTVh0foHRZY944/LchvAfTweabPczbUFenbnBZ7K18D7+UhP4pGtRlf6ap6+u1VbEXXDkbwzqOGBXjXA4IrJVtcUx7nLi1bWFwhVSaWBYMObd30FEPOCv888vd4ecfJ9p/a5hfIIru1DI/h1HKXDL3wZ729NfamJTNKM+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdUDe2rh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdUDe2rh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEC31C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719115943;
	bh=ncLLS5nxJhCjSGfKAFO/9fhmSrM9Sdm5NEGLI2MgTAI=;
	h=To:Subject:From:Date:From;
	b=tdUDe2rhtGw5qZesmeucFwn1VxRW9T+wbuDLPyOz4bX+1qfCMm1RQNHhd9sbUqccv
	 3YQNw1pb1TLH2HQvSlbsYkBdG0xb3eenO8Wbtcbbc7EI0FrniaFwkb3h9RY059Gk/I
	 qZBJJZbY7bQChypusHecbWGaFShTcHcokdK6xNbKb+KTY2AB9I4MU5h/4+OgkPhYnK
	 SI/pmYGqQsoxJg8rvRhB6Iy3+/otWhHP0o3CYeT+Iu8o/2/vmmaecIPOchpeSv3oIE
	 /YbWLQGzdId2n7652di/s6y04u271hs38+hpvM+uvuYsomf+BD63t8DD45gRoLaZFz
	 UyII1YrEHLdgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1718C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911594280.17980.3095870589309394786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7968f5c2a5a03b1a192d6c46964340f6bc50208b2b43e931c7f65983348e61bc
Date: Sun, 23 Jun 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719115942
