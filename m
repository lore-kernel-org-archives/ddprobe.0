Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0374C28E2
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710726497; cv=none; b=NgXLb3T1R8GkB8W4jm3O4C2GIYZlx4/+hQAUnkkoCWYKJkM16OpDWb908A7eHjOtbayhx4ydezdIU75/3Zh5Jrw6DGkl2hZ/0z/pfhjUPWe9cou+gBte1PbdcwLp4QIAuoYaKVYsaPt3j43++chWa51b6QzuCugcm61xE7I0kOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710726497; c=relaxed/simple;
	bh=3/sO+Rn5sWw+38mO2lTwf102GtJHXF776yTxUeuzbOE=;
	h=To:Subject:From:Message-Id:Date; b=ljQO+y+AvSPuKzsa7odOvENf1VRQg9/ulXO+pXv97j65qqEM3vZf5GO4hr5ILG7BdQ3zH6ptVbnSJEPfJRKKj+Y/qbFsjI+P/JCeFTwxvbiNMu8uex3o3VOkSHm9k+RxMuOb0OLqfsVR1IIBj51pdITJtQijqWNt+QElsfGr3FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6Oqq0NN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6Oqq0NN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7470CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710726496;
	bh=3/sO+Rn5sWw+38mO2lTwf102GtJHXF776yTxUeuzbOE=;
	h=To:Subject:From:Date:From;
	b=l6Oqq0NNaJTYwQ05OTI4HuJ2jTmSS/xI2NjGgp/aptfmWHsj+wRgbEri7mmxOnJNz
	 yrAQRxMVwRF/Cpwc8IuIFEnpWrRwAHVI9kuUiXaKhaRKWOIDPESZIuP+DuSRajD0oc
	 EZ++SDhOyT3KS9cbuG/TeSt5c1Ax59c2emghDIpJucJRNO8zA5VAAnQaX64ibJoisk
	 WCVsmAdhsoIeU6RJ/KWd6P3/v+d/MVlhq2E6DVnhl7UKrIV6CsuTxORjUEILtoOYuz
	 vZvmPyrAq9d2dB69dyhUaL3D47UJC5THhwSJmZPaiOhu8hZpX0huj2wMkNT06CzZhm
	 Av55mBLOOjCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644FAC54E60
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171072649638.4936.14360230785800566652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321e9add50e07b59933487ea7c225aad14ecb180a866f5b9ba629e43e724cb56
Date: Mon, 18 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710726496
