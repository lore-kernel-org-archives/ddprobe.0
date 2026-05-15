Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDC53D75B9
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778820634; cv=none; b=bfUP20kUhJCLRtCQcObHYL98aITpbRWiSZCKB2goQDwsk/FNaVPhr7Z4z5fXFrSSlAZ2v+3E/eVkjjUP1S8z1ojD1/rvi37iTJnq+7gNBPdItaGr0h7dWsV7Plyhzf7cRUNQ4F44iFh6Yb6lp67i+L5LMl8eRVyVUggQyC6QpOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778820634; c=relaxed/simple;
	bh=fjhpQm5QcTDZV/mjFLiOKwOfhE3Vj9A5SwOF0T69WJM=;
	h=To:Subject:From:Message-Id:Date; b=eqXInflJ/U2/sMohSri+LUDDOledoE+wjmjv6BEfjv+z6N5BvCjZ4aLGvLpp7JnQbsxVUJMdNBT+JdWmFaJc4bEQC0JpJ84KmELZQAJJXtPAP05tLldN9ffI0whXsobxR4XNuhn7O/gNYtJEysQvpzOpIUnNQePz63tKaZr8ziQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYschbDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYschbDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47CAC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778820633;
	bh=fjhpQm5QcTDZV/mjFLiOKwOfhE3Vj9A5SwOF0T69WJM=;
	h=To:Subject:From:Date:From;
	b=UYschbDmtRPDX91AUnPrh3eFbBc1PxjU3iQxIpe97aAFkAaHUWRd3HcGzSUxwfO/4
	 THGoDetZ4forGMZktzsAtpsMk6ntnGvoWqK51WzAMn+Xy8V9Sy6GxpA1GomwkqqB0W
	 btc6PJE3vjC4uwExVbFpbV5A3aSnZiYU6o7UC17hvOORJP7KHBUXWG4i3EvJcOlfCL
	 CamYcsIiXyfnpNzQrauVUKK8ILYe6i7jPJYlxiLEibNXaGrgrr017U8DgfjT5S7EYI
	 A93EclU9kMXlksxSefMXuHm1YWjL+V862ZoMgrRFAcQSzUQppQqA2oAw0mbEXDj+pZ
	 1E5SjM8syfp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09A8CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882063371.17817.6088630189435898122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f805c0537042179ab608df9ccd70252ecfa1137f59a577552261361d246339
Date: Fri, 15 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778820633
