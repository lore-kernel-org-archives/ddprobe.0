Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4514C634
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743799794; cv=none; b=QP4wIZaYA+vmHgEWmBNULvmzR4Z3djYTB8JqBoOJm+XWb5AZWc817FYyOyHz3/o/zZj7WYm3U2p9+VL63wdZp6ih7B7SKNOQSsWONNoWciXDyMhCsZaisaU88sz+NkECm0isANFMuNL7Tge5HhE610WXiSFs2V2zFfXSuZxMtdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743799794; c=relaxed/simple;
	bh=iqS8xO0ofVG4cKDVQ7kBAN9e0Oc/WcIhawqqCYphdUM=;
	h=To:Subject:From:Message-Id:Date; b=L63daRxl0ukAKqOoW93065RkCsrPRt7VAb5EL3HFbeuwoIuPfHYHnHRQzw6bcuzgM22R3Ow5X3lLRix+pSqgAgza3caWtftHMSh+lKEYBBuL7pudh9v4CSMdmB7LIj+CLungZLZXgLKw91iezVUmWWPXvvz1Elzqfj9I2a5GZ/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCwYzs5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCwYzs5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AB1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743799793;
	bh=iqS8xO0ofVG4cKDVQ7kBAN9e0Oc/WcIhawqqCYphdUM=;
	h=To:Subject:From:Date:From;
	b=hCwYzs5+Pd/slkfhkcAEpeZXeECISSyy5+GsToKSb8/nQuqJHOUCaQzS9I31EaSWW
	 NAiH3NbOwuDcVFtIOl0B4IWQN1zZ9X3I5KILiZ3BWrgkqoE4M+A9WclA5HVj7wSd2k
	 BWSJLzzw6y+7KW51fheDT4qtnPQm3wyi4MR340DwtAdB+j90Y5qwTuC2np8Cwsz47i
	 OqLDWpFsa5CnyjzzT0CB/DqtBUXwGq4UIeRLS2lzzyuAxnYcvozYR13+6NSC2thTwJ
	 1CbS0p9F4KUsgV+FeomaV3UJNhaK3IoDWAY62DCvvjBdFV6SptNC/xKwlI7FQ50hd5
	 Arq+huyFmrV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57E4C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379979363.29938.3462233755667586681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d209702224dcb4d5fd7feb91b192b0d1f25625ddd8c58fe98e5c35fe5a4f4329
Date: Fri, 04 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743799793
