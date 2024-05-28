Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EBB7316E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716882263; cv=none; b=mLc/ZNITDMz1HdssrGidalUuDGGzmNm/E5n81LfYxrEvcEj3XSvXXEBSYpsREvPXq0bV85rnaLVqyCbfzpfLGzCjmlRoAitlwckwzsUcmQGnUJc/3ZS3tqKtS7JlqnmZWkimjwVjsX1YYNPtwNxb6FrU6v4aM5NanlOkJFDfkng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716882263; c=relaxed/simple;
	bh=v5WJ2Vj05QDp4OzTDgc6iqyaTS4ysna7/UiSFqPgVFk=;
	h=To:Subject:From:Message-Id:Date; b=t6WWqOvrzeTUQU3JLsvFjsKOgeLKHVRrzmfUgJZz1Mh0pue2Np9ntMYGp0JyfEXHMaPTVv6awbtbRE3RJ/wMU6FUC3qycbS4nPPY3REW3DepgTirxgcUQ1LvW6a0ojlWjSuw8mGtzfrh+pT/67DlLmCQcwUamYEmSNKRewyPc04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIxhw9ZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIxhw9ZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D8EC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716882262;
	bh=v5WJ2Vj05QDp4OzTDgc6iqyaTS4ysna7/UiSFqPgVFk=;
	h=To:Subject:From:Date:From;
	b=kIxhw9ZVADIUCQbzSrcNwZdeOnrlAdvoyA0kvuaGaRtqJX31rwdgTDtSgpdmdJwF+
	 iagLWSwWulvnJFhX7VdnEzDrt9S42jabynG4tGqcA7fQl9RXrQog1nyAoVV1LZ/Nx8
	 tmY/QxD/f/FMOAMMsyfxYt5J8NDFE/J+rNf/depICJnF7XbLd422IPE/93EB4WTTDZ
	 AAQkV9a3rNzP1FhARMFSe81oig7JUan33NtuGiNFnG+YvzXC8MZPhLOa3RbFoUITfK
	 cNviyJvEzJ+nhs0QcsXSnwQ1jqutGKBDo6v4i9ohXTNaVsNeAJ4ebd4kE/yccTB65O
	 jTGcT7gfuqcbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26FCC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688226278.23882.5725402351612197222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0909350126123bf55c505ddd78fbffe71b3b0114d08dfa7485b62e533bb4de
Date: Tue, 28 May 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716882262
