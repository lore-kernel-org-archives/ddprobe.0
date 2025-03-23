Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505FB13BAF1
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742723995; cv=none; b=YjW2vKSz1idpSfMkfdsrZufG9i1SxWpUUDciMm1XdmkdxTZUZp4IMSze8f6WKphFUBfTrUr3PBBZWWFk2lzX4VTEfqQGsaIXcV1o95aAlYnkVvw1unfuCBw854snLxpLfHAMgry2ugejRnjIjlHbYazkEYxuwHGrXuopz8lRqXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742723995; c=relaxed/simple;
	bh=yyTWT8gEW/pm5BjM3UPYCV25BM59sR2LjNFPqz+YdmU=;
	h=To:Subject:From:Message-Id:Date; b=fn9mE43wyAjLJE9FU++UctUIvjr90EHLjd9dahFf/Jd+Q8l87CgbSyzCDfbIRcgWYoW/hxh1VK/Y8W/nVizf6PreHSmrhtw7nnVaUDJuiGcnvIdHICHWJDh9vYo+8b8R5rDs2fSgnpyuqHjWXpvDOdMiE2RsJysRzUgAum512AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNvVLQVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNvVLQVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C216FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742723993;
	bh=yyTWT8gEW/pm5BjM3UPYCV25BM59sR2LjNFPqz+YdmU=;
	h=To:Subject:From:Date:From;
	b=aNvVLQVla/bysxvf94YRp3yVHsyFNpYiEslNgtSlukDcQ5VExxFrQxwoxmw6XrFyt
	 9R3zrAEkH6V73xfNTRX73dtZdG6Lb6spNSZi0SLZ7RIxMLbXefVYz6lXYadXc1QTBg
	 dRK1B3ZLw1S9qlATTAHXd1cIWL+j/8eOeYHpbuiKHEX7ezn7T9Ii6NNKC37eEDT9GN
	 Xfcbugx+8qb9NoSaQ+ZZU+hz1mvkHVOx6VOpZGLWrlSf3EfOSdpcB03V2lBSyd8Kfn
	 GiN4QEYOeuErTepSey2TzgRmz6TVva08WKJZO11t75Oyb3+SEQr2Q1OOpH4/3JmdNf
	 8bWHzJdevvW8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D1FC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272399362.24904.15977497071643838799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfc72fa2c93ed8f2ae42f03cd2df0ce331d3d10f2087b0e727a878db1331fe0
Date: Sun, 23 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742723993
