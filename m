Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CEF1E8321
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741547334; cv=none; b=iWQkKKa7Ed9UMMc771oSLW8pJceX3WoGMTIr5azAHn8GqsFeHBaXdLY2wVxP0IQAQFzVt5eQTnMdSLsFVSKTEQ+dhGQE90Vd4fAv1vZ16PjskxXmc4Jc6vz8JlMwCtArqLLrAoCYYLS36NsK7AMJ0IpCT6fXNJ975MVxh2Vilfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741547334; c=relaxed/simple;
	bh=ETAgKuXC5Qrzq0sy8RXY+B9SP8U8lkYsVzJqY6gbRvE=;
	h=To:Subject:From:Message-Id:Date; b=RPtPVNeJMs6iVkGqG/mrUzWyzmfM1/14U7yvnzMlmVcF2mJv4pBldVtNC/2raUtJYjXxCFBGk0UzQ1RJDOpjutQjVLeq1dklIu/eG3oVBOYblZqQgRECe5QTsiUfcbiCIebEuznZ/BvS59shbd7H0K+cdMjnA/d0Gmni6i2WgmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtymkgCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtymkgCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FC5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741547333;
	bh=ETAgKuXC5Qrzq0sy8RXY+B9SP8U8lkYsVzJqY6gbRvE=;
	h=To:Subject:From:Date:From;
	b=GtymkgCz1rAOoE+ci+1JztiiumkfntNQlyShNP05W2pHzBh3CpWjps2B0O97EF0nP
	 Cql32XVg7SHkioHC/YuLKvHQNUsMaCpdSvRfufSCmBxIt4fCVUrvV88cxKrH6owcyT
	 RVrVtrsOiDJPYZ4ie8ybpRlifnNDpzPt/gVQToaZpHQ9z+Hd1LzoH0CbgGvUshOijx
	 33eb4XQm8cStqGbFBFx0DCYknznLjhujjb77QEMT+fhR9tm9XohKGdQQEb8Rp5/KrC
	 sVeUo9tJxArohaALKbnXM2kQ1xEeARq3wwcVOt0BpR9XGDPTTOTu1A0SktlxhwfueU
	 0fHX3lgIL/R9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B9AC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154733360.27946.3213503986990812700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92edc01ae49d2196f6eb0f039e129b2bb75e6ad171e85f1ab2e50040627177e3
Date: Sun, 09 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741547333
