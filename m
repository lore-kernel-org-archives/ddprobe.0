Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403B61E487
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742047134; cv=none; b=AqA6KkXYD5wMoPbnJF/kM3FmznsAeyZXI1DAMDA85HLP0iJEix9ceIHECW2Uo05wwQ5pTlMoDlpY0+kbPN6ZoXbyIalPA4wnHrLn5HZr1WzrZyL3pJQZJ8UOQsD4nEGy38XZhNE0C2JpwJV6SErwEfGsMHLYOfy1B1FCKprgfn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742047134; c=relaxed/simple;
	bh=UJx+aXW2W7Jnk60d40Bj+gQMzYfZ2e7ZVMGdVd5MXkc=;
	h=To:Subject:From:Message-Id:Date; b=AEDc4LgjN4QRBED+ipX7PDFeGXUOp9wnl4v1W2Mig4uDb+wKWuB1pUxuAC7kSkfnbuypVgxMISZ43Zh6UGTJcvvkKe4j1bxZhubZ1AbUtlD8KNV0/vjpelBYfRmSw4krnmEc+z/eDXhrOs7aSDv4VZ0cTs1BtQK13xXVA1uSWWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBZ4P2v8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBZ4P2v8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED9EC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742047133;
	bh=UJx+aXW2W7Jnk60d40Bj+gQMzYfZ2e7ZVMGdVd5MXkc=;
	h=To:Subject:From:Date:From;
	b=JBZ4P2v85iBNGXaHGxFKj3/TG5Fl0HlmGeedCucEI4cxSLzS9UxdKElUSx/KdTnCp
	 2mJG/PcJwsk/ZcFAV0IjkN1fx3iVyqKdf9QMzWAqwJcqXgC2/znC98oojSf9QZYS+b
	 cWR56dhbH9UeHyXp9mCM/j75AGeGzk5EXLpGTur6fE5rler9fPBOLxmG/x6/T77NPc
	 1Hddvq3iboSl/1/39+BIVB4PfxvQOMIRE4qBANZO6HXalvAOE3vQmH6wl94l2J8zx0
	 YCAWca5i2u8X287Ch3mIecqHEUY96BEBREo5Rea3lUxIxz1fzTeTRV6E7U6kB7GBWn
	 xqTemnuXso2NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB8C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204713360.9394.16414807865683009850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f136c1c4df258f34d0a318b0b5d21bde0fc203c1cfea4c98b61555cc2710ee
Date: Sat, 15 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742047133
