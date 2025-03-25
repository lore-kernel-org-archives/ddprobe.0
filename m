Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4675278F39
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742921394; cv=none; b=oftisV8hRq51Zaxd24tDSo2LmLtfPFvFktlnaMPzl0u/8yyR1WTvuyr4REG92XyPkfxni3Cpqvoz4wbJ76DIGrLQUzI1QYgoIsZ5hCp1BLKl0pX0WXKXxRH0K6aBpC08++cb4Goz95602+hGlcG4s4E/tkFhtRMiET/shFWwp3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742921394; c=relaxed/simple;
	bh=6/PLDvGVWuHdYXas0zKkc65JeQ+1wiGDwcTT3TBvpCM=;
	h=To:Subject:From:Message-Id:Date; b=bteEKCsYEVMSiwn3dZ64I9XKp7eTg6oS+2oh1+u4Jxg7fjb5KvA9ge6tG9Hd+pNtINmjjO25y799QbTjx+futNU+ZEBVa66XNloYJebLyv0YZr4uOawxQfS9nv2Kp5vbrWJA9noH39R25eHm7faHoTDJK/dQOdoat4iTt9H6dng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7f4nTXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7f4nTXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72FBC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742921393;
	bh=6/PLDvGVWuHdYXas0zKkc65JeQ+1wiGDwcTT3TBvpCM=;
	h=To:Subject:From:Date:From;
	b=g7f4nTXTY33d9S3EZfacsMh4fUx5ofPNC5es0LvtnpRyOVpEVUjLvJwbpaD9y8bQ2
	 WQQ0lgGKu567Ue4K3uyN37Y0n973fCFM/Y/txfMCYF+d7+eZvZWK4AWJPuX9u9+Eef
	 rsqH2iG5hnbYxG3L5N1wJnDKKzo+YbSBQZeSNiSXpIe8csofs0hxo0tcp92p0iXhM1
	 XHPbXyJhk77jfMl7qz4rjnGPR00HC72WTVMi2XkqgDV4tOj8HfotiWh5aVMkGuTpuJ
	 lVY96EymZ3Up87TDE6jV+wUrSXXQxUX2Pre76TqA3P4pFjYjQLXJgGysGiS1ssQzuz
	 Gno9U3oB2ZI+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F90CC3600C
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292139363.25770.2650646007964716312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b4ac8090ceec4636eed6877c34096b84cb72b81ec04ea660961c554bf971fc
Date: Tue, 25 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742921393
