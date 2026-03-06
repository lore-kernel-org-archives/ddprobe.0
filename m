Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547FD39B4B7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772804694; cv=none; b=pAJWPCKjXEwKNabbaI/sKnwiXk/ezMQazOST67Om+mgDXO/eHAVN8yzlU7HMW8PYW4py6oyYehKhOax48qeqnet3NBPP89Y4OIt8uvJvyqJBeGHTX5Aq0AVpy+zh7CU5GEnpRbHk81mxBliJOD666QerliBoSRtgje+0qywnjYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772804694; c=relaxed/simple;
	bh=XngB+XzY9I+tbOh4XqLmYUzdNYFH0oJMUUS19JmF3kQ=;
	h=To:Subject:From:Message-Id:Date; b=HdLtS4qAOe18JdLVBfnJILVrUv4Lir+zkZhPZvZTABHf3lZj0AAI0u0geK3feTSp2HD+1jQ7pwFL5DLA79yVBHE8FxJiihZ2aQStPDEdKwnUzix7rXbBchQzDeJeU4bYYCFoD+5X935bMFUbIKSf+ctM/JyPsy09Zl5hmCToDgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngpL0mIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngpL0mIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D4CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772804693;
	bh=XngB+XzY9I+tbOh4XqLmYUzdNYFH0oJMUUS19JmF3kQ=;
	h=To:Subject:From:Date:From;
	b=ngpL0mIkMCvYcyquTGygdeHX4a30RilCwy+SS1dYo6Iy4StguJH2OG+NYp1U4A8JA
	 fzCbIBv9IRVCpjDEoildhhG/ByWk+GXApQ3fKXgm3Wd3XblpSjjTBnAyNJZIEc6mBb
	 w9MVbbN41avu7598EVY2y4gJ9n4tFOZeLAZzINxOLyXlUqXSEYB+SNZGN3uGxxmFOG
	 QtXZWmRJzwZ0KT+eXxt6Ag/8SKEy0MXd686hwXNCeJgtIHb/HtfrguLxwtuxWzgI7R
	 Va86DCejCBCgFelmYTZ/vOn0KP0H6EwJB5uxt9Nb/3Y5dmWf7BYlN1u0yiDxcsKAgw
	 iyQABQhgJirVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A072FF0182F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280469363.12627.1496755924399091426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c6c55d74b17731cbb0788e105e5f6d0e295fafd867ed2473abba6cca660a02
Date: Fri, 06 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772804693
