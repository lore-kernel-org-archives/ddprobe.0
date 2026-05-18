Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171033314C3
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779100835; cv=none; b=X6eRTsKbldMU+MFa0c4UOvZbsZBBCMzbKAdvA+T0tezOfJ0XUR+mVQXL5mByMWx+oa2cWxvrMMAGRDHwj1d+vg9NtdGGQYvmPwxfQXh5CLIDPGyAtVQBGA2AquXKQp2m1/l/bH6+ReeWGvlq4NXNT/up3WO00R+Sn50VvM/qU/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779100835; c=relaxed/simple;
	bh=aQYQYnxMaipqBIKM2xsFnm9BFla0V7nPOSv0HKEofBo=;
	h=To:Subject:From:Message-Id:Date; b=poyDGym/7SxtYMzxUPAgSeD8vMiXpZEwD9AbCeb4nmudZWRVmzOCjufGXplPPFXSewbiTU5JvksbqeYfizgQc1oVyBIya5/lX8hlR0yYlu/mjYmp6i/7a15nhYZb0EjyItg7w5LMNFn+d2k18FeDdJ23OtVrTpVLDjW7sOEl8CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDrBQoBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDrBQoBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C617AC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779100833;
	bh=aQYQYnxMaipqBIKM2xsFnm9BFla0V7nPOSv0HKEofBo=;
	h=To:Subject:From:Date:From;
	b=WDrBQoBZhfUgTMnqLNyJcXPtzkQ3V70Lun7q1f8ORyos728QjgxvL4Fl0cJnN21gN
	 skstNS72oZdFiPCwFaaTJJUOlIS2LrAe51gib9x5OzAmuaamp4Q0AeIAF3I6/uxlLy
	 hTVYzzbfHZqdDTINiup1YRmaxYTb7RO8HVwuhFnjiTXZi7PdwtpIOUSTsjy3brYgLT
	 ap8gTFAdRtyofXpfJBmgl4ZlOj2HoDM7Mg9ZG2la7iVsHEaEQQ2w5qzaADYocXR7ls
	 2ohnDY94udr7/6DbFjC6UV3GQaiKCsMwGQsVJKz6UFGG1Vk7+H1kub/46ycnPege+S
	 FiidMGeuhTmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BC5CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910083372.8571.10352386691384002365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff04fe50eac6453c20b1624f41f2dd53aed6b03568329d12a9503b9fc328abb4
Date: Mon, 18 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779100833
