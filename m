Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EF4274FDF
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778360854; cv=none; b=RhRjap/6eurVfz+vEykEe9n5OWqFNz3SdGzmEW/HiHyKP90YPg2br5zQzcgMDgawVgEUJdgJnu8PwBjFXSlm+4NQ/Pqc4gR5HYeJAkowlQPf9NvweUiSJEi37vOJKbob5DyiiqknR91I5P3xQXbweH1+VmiCzgPycpqAmXTO50I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778360854; c=relaxed/simple;
	bh=SJrK3c3zcxrFXuUsOFvExYzH0jDNhmZ8BHIEbuQhzC8=;
	h=To:Subject:From:Message-Id:Date; b=PVETy9qTaQjZVLdBEJyYM7LXscVv5iQC3H7N0nMbjUcKlVlVz2flW20hD+lgeX10o3HsldrR7fVnTv2RGRK1w1vAMiNr0Toy0X5mvY6r4oe0UWh0i0z6qafRHwG+mYciXciPvOVx6BPTgRyQzOkNp+AMQlhsy08HlcBX3GKJ79k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JogwM6G9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JogwM6G9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65864C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778360854;
	bh=SJrK3c3zcxrFXuUsOFvExYzH0jDNhmZ8BHIEbuQhzC8=;
	h=To:Subject:From:Date:From;
	b=JogwM6G9x4H/WlUK81KxeluUVJVisj4AFKoK5KK3fivHe+l2hU3gskFVdxPFHwJWu
	 CHGS4+BCc28FdLfjkEZ9Ri9MzII+hweWiIOf86dyO8B9GZg/O/z7PqQ1NI7RbIe39P
	 PTpJ0AxWjxqQT/wLdrztxlFk9r1X0ZukuyC0vWcB8l3XMNL1YRWqUB+Lx6LoeKlYRW
	 +Dn4fSUN1V4MTs2sWcgFGuQqvlSJAgCkdXadlUJaMmdeZuhONwvUTuvVY3uyB0iJAc
	 FbDafb44BlOn8xnrgRTTocs+4AslNjUxBJ6fw1RWtTkAVi99+1UBFy6wzqaUp5JSMw
	 cdG3Ifp37VaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14537CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:07:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836085400.3486.10456496220775812808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dcd1bd06883ac854119bf7f7e96ffcad17a3be692fa8fa9a3263cbfa6818d5b
Date: Sat, 09 May 2026 21:07:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778360854
