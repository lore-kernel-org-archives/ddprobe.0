Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12B41E498
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709994497; cv=none; b=ksbUiapbe00H2/j928n8+sH7yZBUeHUzvF4VxAd6CRm7amhJ5UO3quWytduShnFQSe/bPU5UnIOFTpy7NzkrFekSk1PgEc5RHvCib0ArfnNQ0iDMIcjDLAdnGxlzDsbXKKJg982d4ISjPVPmtvCqhYNi7qim+U2stw2KTNWUlco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709994497; c=relaxed/simple;
	bh=v7OjdQe9m4pBNn/8bLBQOXIyrgBhiMaerhKGLpmpSDo=;
	h=To:Subject:From:Message-Id:Date; b=c4Ge6+PEkuMrM0D/zH3uz3DQdr1yLRf59+8hRHQfWDTMfGlMLs+0QI/Te+yOvJwRxyudTlAfseWFI4mJanV5vdxttAsN7TMnb568bmDr8MLbZBCkXWVs/IYkrqc+YyX8hY/TL7R1bboFVbs6MF8JQDnX6oC1Tkqb1AW8m+gYcUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jud3B+Ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jud3B+Ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA15C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709994496;
	bh=v7OjdQe9m4pBNn/8bLBQOXIyrgBhiMaerhKGLpmpSDo=;
	h=To:Subject:From:Date:From;
	b=jud3B+Nsem1I07sgCg2hSokdxe+iVxfNDhGcdj5T0VT6wyiCNTgSWeTmFRi/kNqcG
	 ksoAItJELNQb1ADdieXXCPrAT1iwK0cYQ4NnR11e9VKzu0spcPTxR+k1izW6X+o4gR
	 hSOFQH3f3c1Jb+LRe+bd6nAtHmgG71AxP+xgyJEo7SQgaWAsXlVLBfHiq26ygRVOkd
	 GONqUhp5Wr03/eEs+QnCfNGprXZz1m7ResB99/nCmNtXODUgyFaa/GGuOgWL4jAKPL
	 mMV9e6yUNdRX2Kbxr8DjKH477C+oWLmKZ+SxMxyxzlesyiT6biaGSJJh/w6kLp0g46
	 dfN4ZX49nwz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63329C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170999449637.27006.15833852819216553810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2a1d7fd795c41e9b17091bc9cabf8739c546b7a1aeced388be6235e7698a49
Date: Sat, 09 Mar 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709994496
