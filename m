Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE9136A017
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780124614; cv=none; b=Q1mzoSD0TXR+YcrNxNl0E9zBH6KWfrCj4AC8lsVWdZRsgHe21cbZk6mVrDIFLw75zW0DiZkgTCX+jFBoypqkZ7fDrhsk7hdkvSC2Z1WBK0zW0FfxauyBWRHZ50Fk0eQFmnoJH1CmjkNR23vNS80V7lyxGyxMvJFt8cVKWFI1gHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780124614; c=relaxed/simple;
	bh=Qqw7hXgPl5Cmt3Pqh/tWzjOyjt4u8YV5FbjsUsz3ObE=;
	h=To:Subject:From:Message-Id:Date; b=MlaDXw5lBBsrVhf4iiAUeovYJJe/zm5MPul9jq4AbMSxlhkSkrFwoJ6L4lfk/ftFI+sBeJLa6adz+C8eXrAjuEYr4X3MjFodT8s0Q9ZNcXKb/j0KIQxMIeZuX2JJd8ktwQWVxvsY/h7qMBQCnd7r4pWybcuPu8Bxf94qxS7aMPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxnzjHwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxnzjHwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCA6C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780124613;
	bh=Qqw7hXgPl5Cmt3Pqh/tWzjOyjt4u8YV5FbjsUsz3ObE=;
	h=To:Subject:From:Date:From;
	b=GxnzjHwDiyfRJfH5hjHoC3WUyR8M2rde1q6UmA9c77cbsqeJvLSi9TJj1so/ZEYc6
	 BVkrs4V42CrPyfGngeCv6ngJc8NfIky/5uE5gsPQpdEiPKck82XO40HXoFNst3+8HC
	 tCRZkdKmUGJyC0l9TmrprGyhlQluKzrNRWNlm8cDkEUZhdkgGuBOj5yMTFenFjg5pS
	 +EnFrcj/10R9pa5UTcfTXNkJsxTKsT5d4PU+UTsc+pMTtIa/RFxd085vTlU2wbB7fa
	 t/xGcUdOOe5nOUQ/lOAmcdj9coyy0zl3GHi0hGsCadRD4PUUq/JTaLr5V7gBYZysry
	 GRsEjvxcyu4XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ED0CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012461368.28994.13072955549249557761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a359d285e9dc3e55217ae4e0e46b11ad992d23ae45d849a6432dc8218bf924
Date: Sat, 30 May 2026 07:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780124613
