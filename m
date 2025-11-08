Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2CA15624D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762640994; cv=none; b=TL6Lsu57rOAYyjjbfXorEmEg2QxK+hpiM0kvM4n3GvTZPhG7kTCWHqyWeuPH+vCJw7zo8pLWIUkuQ94jg/d5VHKcXPso3z9KYWz422YZ6YgBr16LPEeYNc5Sh+IYxtazJLrd0wdWT/ekMwel/v0h7Xhpb1/rEc4oQ7X8q+mvwFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762640994; c=relaxed/simple;
	bh=7l6FXHxit2rNhsEjcJlE5cNCSkIlcheYXnWYkluEBzY=;
	h=To:Subject:From:Message-Id:Date; b=DdFl1nIc7ic+pIHLfu8EAX8dYuDBignmhdz71NlIKDPII5CAmV/PNTF4B9dk/BFe7hsr61deryKcdbM8f2KVh3mKu+4GPLDRGE9QZ5cE8t966wMeXrSi3SR6/jx6MVKOcYvuGLAMKjG6ZkJjU2bES6wN3RB9W0MC4jlNR8UjrW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lt9lw1Fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lt9lw1Fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC2C116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762640993;
	bh=7l6FXHxit2rNhsEjcJlE5cNCSkIlcheYXnWYkluEBzY=;
	h=To:Subject:From:Date:From;
	b=Lt9lw1Fx0llPhk+NWaGq62pqMnkP+3hg6HdJMiQquKmnkfaYrkhHWmfhc/sc3jte6
	 y3F4fBLuWcxtAiBPGodkgc9L66BFRkBL9lcdvGt4Q7ZcO0mxgLDYZsYuGy9QEpnomM
	 2LwoUbmF7dz1WRtaA0T4zMLL3WizvBCIq+jn9hhXYydQglq1h/yJisqw4vt/3WI9Qs
	 S3sCpA8nvBPcElycHcUDIPt0ejFHlwFXIOgooxwCfhVtdHBsvcDX/MuIJ2LhrCDF9c
	 t9lD7u/5R9euDX6SxIAOZ7Js5c2drUGuE+xSeHVipZTtiJJpezw7myT+w4hwKqeXKc
	 XYjaenhux+bVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF2CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264099358.17514.16936120934586414761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9997d62d626557f3d0c7453dd5e53dc50ba1fb3f3f0522535e1479f0b911db4f
Date: Sat, 08 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762640993
