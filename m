Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D361DA24
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712504297; cv=none; b=Lg5979qm4F9YbbB36kwExu+BiEpf35xyHCOsBSCz65Mpym8bJMnUTxU72A81EhDd9aXUWwOcCQabf7ImIhtjR5IUGgGy9a8Yx5nAwDEsgKywTmdpUBr6GVgwjP2AEoKty3Uyhz4IiWcnpQySZH57OnS79tSK/JMrBEJL3MLBJuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712504297; c=relaxed/simple;
	bh=rb/RF2Sc1dbgbHufxIF/h3K3E9LMAc61Z1Dwp3ZTCvc=;
	h=To:Subject:From:Message-Id:Date; b=CcQnwDllzadHy/L+Wt4JthSl1f4VW/RQE104d/1cVYfj3rdrsfZ5SbMuxWPL20wWjvVf63IouaFbHYkYf1g3FnQz83PHmbqOU6FjbiNbduUm3YVnR8BRFCj1Sm8H0w8c6nsHEaLjl1mfCkxhkjOR9Cn+DiEkjQx8FTI8tXAwmBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVlpeRe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVlpeRe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B225C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712504296;
	bh=rb/RF2Sc1dbgbHufxIF/h3K3E9LMAc61Z1Dwp3ZTCvc=;
	h=To:Subject:From:Date:From;
	b=IVlpeRe1b66I3Yd4fWSR1GiCkmvYbRruelbf49uIOAjzvVVm5vTc+4coWeRUR/rMT
	 7nHl7+pT+fUsE5Mgs7yErtce8+WWxtDK9NC5F7xFwXO4v3MjchZEHL6/tl/q/Q/f6o
	 uO+zwKS6RhqPhPxAsxT/fG77UtkVYg1PsDzrk6SfINSdczTcmyizSvsoThwulS4x96
	 NGVzpqV7r46ccikfytGcRF+4G5/ATBDCaUYzDDFu4oSGlXAByNCLP3frrgBaBTaLyM
	 UGZSiu9JZnam43TCYTqbu3vz3EAqfAaGX6/W5CbmXU4ygWyJS95yhQbdlQODRAmxpL
	 L3PZ7cHsLu+Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674D9CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171250429641.3017.337814954327256698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ff8ff9075dc84cc95f80111ba1f643839d7d9bc8bfbb5b121e071efe692a5a
Date: Sun, 07 Apr 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712504296
