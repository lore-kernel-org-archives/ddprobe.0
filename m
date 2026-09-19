Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C60217B50F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789845034; cv=none; b=I2+ZeUvIVxAsWqALYfzlDuefYu5mrn4KPWu/thuqtsADGNOKlct+NdGtFckGxaPDm5rs/9PItLsDb8nkY+Py+29ocnjP6ZqiuMovu88e7TTv8So7xLFxDdKVI5pIKw4CJCdz4XWclwJzFknEyijLjr4w6YlO5lZBXlR8AAND4FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789845034; c=relaxed/simple;
	bh=Gz7TCb/zCSrI+i0Lg3cWiOvl8nR53duurhuzrdDM0ms=;
	h=To:Subject:From:Message-Id:Date; b=MdY8XxzF+xoEomBSM18w6JBA25teEKHbKR35uFS0fbQs/d6Do6UE+Q7GfsEkF8BbJo905g0k21MWWP6/uXXJqpRmLNI4CVP14E8dde+hRGD2l8B4Vq3hltNjsOfpRByMQmnpVB/uax36ihWs9a7Z5DqjigqpcZfoBYvRXRGxldM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efZeJVrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efZeJVrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC49C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789845033;
	bh=Gz7TCb/zCSrI+i0Lg3cWiOvl8nR53duurhuzrdDM0ms=;
	h=To:Subject:From:Date:From;
	b=efZeJVrldsORKHcgSjfIt7kjJ41AxCoWRQojyl/HXdmdpevl8Paufo9pMuCMc1GJw
	 /YVYWtwluMZA2sL1RXMyqeq+jLCpVIMSdqv/wWYmrR6baMU3RDbRJH3Hn4FewoigdL
	 xNlMy5OLxn4rNRqXab8Pa2ku114mmJ8pUGTYr+AulrdKdA5dE18FKBFGeIfi03LPE7
	 KE99v4Aj/ORffB+OY4nDUqMD8yFTMo8qSTL9MoxGO9zeJmDXDo8cUJ5htV/g2XE+or
	 bkxk2M34eozzsd2RE0aLuM13GJ4VUu3KMm73wWmA1UWK1bJPnzzNzC9/qxOHXqcUqG
	 HgW8F1ZJhXu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CADC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984503368.13103.14849793273890929602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de579f483082fdfa8e6973ad432514194737d9f822bda88a3d882d8b09524a6
Date: Sat, 19 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789845033
