Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144A67581A
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726948554; cv=none; b=Ra+IMrj3o5gCzfILdnHzdWyFvsRHewCtTPl7NSCuWHU2xWFydshCQ4xeFrZ4FZOW5iwnUmzNA3PJRKL3MHKAofvwEWGlzaYROhPgcTEoa29ErYdU9T+3Qy/9Qcfn0f0l2my+SRzFyCRVXBwcEVtgAUJHysqBRwTlZ93RdgopIIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726948554; c=relaxed/simple;
	bh=ImxEsteb1tqJU8jdXnIjVXBnP6zanCJomBtBOYnBN+s=;
	h=To:Subject:From:Message-Id:Date; b=ptP7MNtw+6S0dATLVwulZ13vP7w6BREvH8mbVOLCAsCeTwDAazvim5wfI2XhnbOml9OoMk4AHlwR2X9SFxG591VvEx3A3y0ORvDLl9ratuDoKgZTF2P+NWwsbUH+n5XX+6k7Pv4EuUroA1diMldQEOmdRQI8Qe+nRh/Tigp4XDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP9hnEhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP9hnEhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A528AC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726948553;
	bh=ImxEsteb1tqJU8jdXnIjVXBnP6zanCJomBtBOYnBN+s=;
	h=To:Subject:From:Date:From;
	b=SP9hnEhbdI4qwg0AHSC/xo2QOFDz9vHgD6a+XJwMjxXmxVqzdA7LCOO0wYawd0+6k
	 IDhP9qsAMbouNZrV3YGgYRC4CMlyA8on3VRGxEya7nTHE8TfS76MQMy2/Pex/nHH6c
	 JXe4axHFeKxV4uuEpH4M3qcBrGV2WvzPMVzemM1JANwUX/8/93pv/jSKRkemfcxyZV
	 6tQLN1oSDa55QFVAzpSFZS+k3wqspvWjgpIoSinYIIccsyRDYlFvbZKKhRYu0Is1Ku
	 cTlOgZznwaJIzCJNoTO/7gXV133PkAxFdicv/PlOR6Vt9+0ZHC/yxom23aUb5+8nVq
	 p1yzQbZJWN5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9358BCF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694855359.16897.7859963148961863747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26ade2ee47a7a9bfa6f9892ffd2280786cdaea19cac03d8af60426fb051406a
Date: Sat, 21 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726948553
