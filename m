Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3038C2E3707
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754162994; cv=none; b=giClyaGHwOag3J5qvKsHHomlGz9xXDwih5wfacmEUK2rJrJBeG2QhCjT27rR/rbTX3KhUEj4nZKSZ1o202fb0Yd+6fsD17wAwoy8uzq/iz3+6jSkttPHokqN9AuCZQV/j9kp/EplYil60HZqNNV+CP2zbmEVRT2Dxw41Vkm8rHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754162994; c=relaxed/simple;
	bh=OiKxyYgcP0LQaqdB9BoeCX+Dba8E+yKQLiYyDVhn/Es=;
	h=To:Subject:From:Message-Id:Date; b=Ddt8ZasrTXBr8i29n/BEQqRtYnWkc5Ch5V0O3Brm6pt2wFFR/a+/VrK9cHFa+kkHIrdGegLk/ycRbKFb8ih2RrXn6a9ZbHrMeDfXJIC6OneMb3skgL8fxRUoassLTSMH0sSfDzm7Xdoy88yLdjA0z/kYu8IRO/OvkO2I28Ntvqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5vRlobs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5vRlobs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A747EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754162993;
	bh=OiKxyYgcP0LQaqdB9BoeCX+Dba8E+yKQLiYyDVhn/Es=;
	h=To:Subject:From:Date:From;
	b=M5vRlobsyqJuI33nOj6BGrQE75gyOee0pBAn8ynphIT0disRnQLZMr4jRynvAQgQu
	 qsfRgvkvFgOpsOfeTeRrOlW4Uz6xHxl0qQa6ANnAJ8jJoaiz2voKHqRUwzDfOlCcM+
	 LnG49abQLDwWLohbDBVCzyWXVsEEaj7oN95wdQljjuOa6lUWvzyPO0PuPDu9L4SN14
	 l5hb/FbKAK+zt8eUm7iPhBJFd9Uk804BdI2Q435JtavuGSe/pHq7ZJBDFUJsBQcLIW
	 8c6Ut4hr/+zEOSGFZahTzDLwSoUwFimQErbgfLnCt19endoPNGGZUSRGdgNN76xBiC
	 G6bxA2WlorBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9544DC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416299358.13713.11254069331501241812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ce687658e52c7a075853b37357b961328ba5ab4c6b433b8f7b4f4d323304a2
Date: Sat, 02 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754162993
