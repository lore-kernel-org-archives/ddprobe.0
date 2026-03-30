Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64E237D136
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774850094; cv=none; b=acle07JILuigIl9oSZ0LEkoKhIEdTzk7OFL+yrLtWu1diOuFjLFIqKTR9kavxPHM7YhopCKia9/gmpA+8M2rsa7XSpWiJNMRd7roTS6pybPhb6JbYNbSIB2SkCmKFeBZntlpo4CmGJf8R87FZVf9wZyx9nH4PWh60BClABQzXNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774850094; c=relaxed/simple;
	bh=atSVZh55ftptmBwLJVutgArSqVZPmeEoOhWebwv1Erc=;
	h=To:Subject:From:Message-Id:Date; b=WFmX5OngpaV2L/ihIqUxwRdxFLfVQQNtC/tTPJy9WISLuXRbxIOR1/rsMWGNp4Ae7RbIIFK+JDkv8dox5vgouJ8J7GozbCQC1/lY6C8+J8sbokhCGFaVYQ45tUWyEqg5HkkSRItz244qLw6QqNg5eZxud++5Sndi2jfS3gO2mfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuJjnbdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuJjnbdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C86C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774850093;
	bh=atSVZh55ftptmBwLJVutgArSqVZPmeEoOhWebwv1Erc=;
	h=To:Subject:From:Date:From;
	b=PuJjnbdRa6XrzmuXUXxBfEn5QtdDSObfE6s6cVZxY2rx1b5meHNhfEXjXWLZ0apaI
	 w/TksE9i584I8/GIn8IGS3fZWp5P3KMt1sN58Sx0O18HOPQm3kHAGB9k37eRm2egBL
	 0m+MoSfU+uBc6hsQvbDjy6toJPBYCtv2dIMKTJxoeRJ/nDdSzymmDF+Uj/xHBYd12+
	 3/I/abRBjKYSv1bpNTMi/GjCMYOiNTR5uY2JiUMKWeNSXvnkzZH6JpfVSXEoW+5jEZ
	 wFVlfEhbd7ozritt8KXJb+wZWOf4nx9StysiFRW54gZyZtWciQBYxRuu0m8nCotear
	 D4S4IR+9uMNig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C8FF4946
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485009358.8103.13137734868113637952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c41ec3b7397c6d9789b54d48b8af2cfaf50f34e18d8470003c73644836ec4a79
Date: Mon, 30 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774850093
