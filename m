Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C6B2DECB2
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778021254; cv=none; b=cwlWGlwm9B0p45xhKOSEa2Kepkr3iyh2oXUVtBsxRU5qRW3Y9e094E+0MFZx2bfoTt1I+9JJeIu2gn90XMgtQtdhQXaQ7Vz/EKSS9koO72azBH28xTCIBiBtGgmtu+IaEdPOy1IXo81siVJeQnVSL/IFgSHbiXyiQ85eiQw9ajk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778021254; c=relaxed/simple;
	bh=vIpcdgjPUonN0BLbzjEjN9JEWMARnFHumQSp3OKHZT4=;
	h=To:Subject:From:Message-Id:Date; b=i60znhrGnkU4hodkFK8VOENouS59BZTGshrT1AR7t+0gJvSIXvsGDio6cF4pBsiqUebGEifDnadkcpr15y3hdM7TdrYdIC7fZJcOvZ/prwQL5TxF94Itj0JwRMU8TN+1ZcM3V2wdCNTttDXyrvxJEjtJ7lHVDDFt+UIPRh45fa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb+oOf7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb+oOf7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CCCC2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778021253;
	bh=vIpcdgjPUonN0BLbzjEjN9JEWMARnFHumQSp3OKHZT4=;
	h=To:Subject:From:Date:From;
	b=tb+oOf7QvR/bBRvkWBPjRptJXmC4usfj3Pl5BIMQjuWIcN9tP0X4+G32dUKDjiW/9
	 qJwDsaesZmnTPpbpXt+EAic0zHqqcgw7TIyPo1pzpN5sAOoMQEHHeC25VsfapK/LbI
	 AJAyHrQ8qRVcOKCergT73Vlcyhj3dUS5cYqqjdoK7iJSROmV/8FmjE7iiImLHnaPB9
	 P7lfN1Y+uhxORPgCnHEjblMgtYcr5PNcvOF/3cNTPW567NlQplcjD3+O1bkinZSSQq
	 p2InUvr6+ZwEA+ViBCoNaRZoUzGaPAD+Dpf3r7tsg3WOEAJx3L6AFN3s8Dq2UcKpTT
	 QaYRV2OcFcjhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA018FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802125368.13766.10667740300258188414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64cd3e43bc5d2776e87eaee4b9ce6cf48946df762c3737ebc9485e93cc4de66
Date: Tue, 05 May 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778021253
