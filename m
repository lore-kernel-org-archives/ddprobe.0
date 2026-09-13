Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A19921FF2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789342834; cv=none; b=oSJz5Va7pnNTKqO84MZ+Np+r4G2ylatyV0SfTMKHeS4oPfgLHBOJgBk50dh9mAJmYnYQUBEewwsG3ncpdNxe9MLqLRq0hk0pOAsIH4fuJNFGsVj4Yu4I/tjRVgb+2H+a7cvqDkcuU1CZ/MvqjD+icDlYOdNLzcs0pP3hP6KH2h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789342834; c=relaxed/simple;
	bh=5ykU2xFvjDZodozBhDK+yn3p+90vEnmksqRaUne6Mo8=;
	h=To:Subject:From:Message-Id:Date; b=pH3gqHC9brC6rsMjLrbVC2iiqmMNoE62kMoPvWQNWdbqTQ7TmhoMay2PVAEQkcYu7/RIyigNU7rmurh8dSI3/N+6tlyRXeJ63WemgDtS3R4t6+3PG0uAPgpFO75ErS2SgGIenrznmbSGOYknVA66+pjo4nyqNfgAHRl/oELUgoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+vOhrcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+vOhrcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5442C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789342833;
	bh=5ykU2xFvjDZodozBhDK+yn3p+90vEnmksqRaUne6Mo8=;
	h=To:Subject:From:Date:From;
	b=Y+vOhrcN38QIcWMV9LHf5MUspEXQukN9yfPcJ+BlT/6I/rx2Wv5TGrC/fEoUMU9io
	 NxQn2oqO5Mkpn9u6mpIWjnz6vR4NUxejkVFuTAocTBRa/Azv+ajd2kONDSkVlb8bqa
	 47OQBgbaMOg11lHYyF7AGGkPilasfGFI/VKhVfkqtand3O1Ns+XmhSsXSkFiO5gam1
	 jqi9CtlXw1xrn98Vnxwx0h2kGaWxPayQ0oc7nW0LCKzBOAQ9VHi/kq+zN4SrpvdOdf
	 T5mqOHeMtudyH7g6VX0jcUqvLJ/utuoG1sjbVJjyvDrFhWSmenDlo/z43+rwD0t6LB
	 pJvhXwMlZxswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFE4C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934283368.4459.620023199587508287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780d39a6b05b9785a77790585031df2d4ee6e6ccc2e5aff65cbe9f60385654cb
Date: Sun, 13 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789342833
