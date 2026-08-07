Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF2F392C34
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786122634; cv=none; b=Rx97u1Lip+6LvmB393hxhyqhyTI1yqTMW2lTtvaFxySSVtUhvA3enYZ7sCqjBVOxj3Ji7yj9Vzj4pEJssMpiOQ7p3Io21jtanVYxztZLfHRAXGzvqsqWB35JiXNEzjRQyaQeuqV2D8o1xeBE5xIodeEAV+wJY5Qu2Su7m4ny2aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786122634; c=relaxed/simple;
	bh=LuubbUnncPNaiSviYoXmHHximDNOkwvlFN8FFSuXyCY=;
	h=To:Subject:From:Message-Id:Date; b=AiGLnmadF2kSl0+X0NTnagOX2pqgfQC5f1+S8Vz+Vgc6rp8oG8GK+9TbMRJLACv3gOJlS1C3GQUpVbQ+ueai/JC+gJSvS9onNa4uq46tz+U96NERTeDgFzP9TUOnJekPFkU53cBiAvx15H4IYgQGiXqAZsDYNvSlFPN479tKbtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0w5T49C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0w5T49C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17B3C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786122633;
	bh=LuubbUnncPNaiSviYoXmHHximDNOkwvlFN8FFSuXyCY=;
	h=To:Subject:From:Date:From;
	b=H0w5T49C9i49IerGLfmEuqSn/2XoFg7TIMOpZ+pAXhyXEdchsL2LS7vkMJXXKfiwM
	 1cOiFLvp3/orNKl+a9pSKT0oTxcrGZPUi7u/w1utJLULOUHkt8SVI9m8AyV3D5woZI
	 xDcqUf4Bg1G+WWKl5122NcrqqtWTpwdtR7nnsmFTmLVHww1BeV3hZRPlOvRrAgb7EE
	 nbKEzmmH68/Ua4hq+obl0MVKHWF2s4IzRiJIVUNiPtIOPfj77SuRtsY1Ha2Q7OTfRF
	 aepllBpRR6V51fiCClRNsGTL4jWCXTTQ5WiEIzo0KxbUJF3MSwnLop+s5k3ofUNwPd
	 7xkY8sslRR5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD412C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612263369.18685.4872976041159885310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46af4966d5241eab8b88bbc1ff8300dd66a1fbd2f1c4df1fd0dfcee67005c1b
Date: Fri, 07 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786122633
