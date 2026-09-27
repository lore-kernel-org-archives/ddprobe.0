Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433992D7398
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790506234; cv=none; b=ARn/mCeFe8gNinwSiBUPoNlrI3tOF5pavuSLuLd7STHHcVrMbSVZHHc3dRukcTUpIVrkQO199AGjQkHb0vbOOemAJVv9BmM1OGZ79XG4pjoNvr4Xw42t1sGrtKVJKqUy6FmKmjOvs9klr1ZKlaO+oSolDXMGRmEpdvcpd0TsLz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790506234; c=relaxed/simple;
	bh=1BiVMxc9sXEVEf+ziqSGvV5W9jpbMdcmKUMTLHaAxJk=;
	h=To:Subject:From:Message-Id:Date; b=YP1hUE+IHMhKqB3aUBy/KlkvTrOrZusXj5/femSZpUIijQ0Jw+NZVNJfl5Hn/JV9I9Fjf0qPcP1+rrD2geje8bnEqvgipk0JcJ1B7EV0CbM80ZTLMM85lWob4OkCMNN5EU1+cZPogErfiuGyGOpzbXpcwU7ZkEN+66Huq8P8qFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJerWMvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJerWMvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB89C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790506233;
	bh=1BiVMxc9sXEVEf+ziqSGvV5W9jpbMdcmKUMTLHaAxJk=;
	h=To:Subject:From:Date:From;
	b=vJerWMvrjWQBomfN5dfNJfID02uBdCCu5NMLKYgtA/uQyF0ocJEZkGM+wDtCygQOT
	 3zsPRR40ErU49splh3DxHiw5xPn//DkwjGa9mJCEjOxisfAKIvtbpVSZ6Sott6Kuth
	 tDDUTmwOfGt9PpIDOHxnenEXJwmvZxNWCZKyF+wNmLhkWBWdeqg6hQZ666chXM2kEz
	 isUZ6gy0gguEOaKEUO+Ry3D8ZyB0Wwd4OqjMUu1AFGuGZ+CZQhGHNqu76hKSbbLGqa
	 n4asC+uiDGf4cuPRC7A2VBCx+35NjfNjulgJrQxmcCLf/zU0yZlIxYpJ4BI4l7ZJVr
	 VUbtDx1jlkNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC40CA5FA2
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050623369.17801.2702000787141786118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d7a74de05d58bc778e0c17d1704e7077547c320c177ea2634eefb71a2f71e2
Date: Sun, 27 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790506233
