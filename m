Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5993E4C10F4
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791483034; cv=none; b=QZ6Gx20e1BIm7Rd7Jzvj+2S3QFI4pX3exkJUm/rV++ShPmAf1zmx5LeI2U1Qz8jGEdHHer0GFBb9J/GLrZASWYi6kH08QWqKhN/Nr1m0PRJ8dCn7tNJPhbJFdVroODt78gEUCwFDZiUL3eLea1es6o0Ywa4FTgLb+uvF5yxTT/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791483034; c=relaxed/simple;
	bh=APm6iFl4TsxxqAUmpFeZ+Kquy19qhObl06V48i4Ga4Y=;
	h=To:Subject:From:Message-Id:Date; b=jR9AsICYy6v+5X6LEsOB6PlZvhlM2Olwv5BIq6eiDjg96HD0nIUbBfR4XbWhafcsOt9/1Wj8wH30mGe5AguZI2BuemAzAB2musj9w3olJBydQ6PbM3EdxpEVBL6dm87stPjxHWCAggs21euo5OhVHSH7QsWT0j0ZzmrmM4LOTxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X308FQjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X308FQjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84F6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791483033;
	bh=APm6iFl4TsxxqAUmpFeZ+Kquy19qhObl06V48i4Ga4Y=;
	h=To:Subject:From:Date:From;
	b=X308FQjKHpKpASTuRaleoKqFsWWiL6Uv34ZjA/K2zMAv6YlOVL8dnnqbNCJsK06Ad
	 c8LJ322/atNkJyExfQmu4raxuSy1RY32Nx03XdMnKqcEKDMT0Nul+UyjcRLB2vjGoS
	 BYUQ6YlDxddbQk+f69xOCLBxRaV6A3zwQHxrJh3GHI/9WfOZNem6IDa26i8R6De7tS
	 TXU1GZGxseP2dZI9X44goMMP21juVxuWRsKi/4Fpw6gSgiVEJJ6vztRIeiwG+y0WMg
	 7zerHx35TN2WnAdqtSX6dtVymchqmkf/UHKrohG4dZcX9nI/vknM5OQlsUWtVENcFQ
	 C70nWGkUWS1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA2ACA6011
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148303369.28204.12763524056108422534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b030da19ccacd6398e3a59c68c7844377483d6e50f2b900681ecbe5ad3f8bc8
Date: Thu, 08 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791483033
