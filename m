Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B7119DF41
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724751354; cv=none; b=LleOQtJgGYYN/BQoUME1g1+y4lgEVSlog5Kxbitszq+BzLcr6JKxw66bq0+KQt7GfWbAUDs0WTSUivqIbFI5jL70AM6ZKmofVhd/ceFe80zWRNXPHGkYH3apximIMGFKiu8upjCdw2ZjESvhaguS8SfS3s0ugZgdVncYvFJHOGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724751354; c=relaxed/simple;
	bh=tsH6+1ILNKfg7RNArgwhkWjVljP6HM5oRevzgaPBDlk=;
	h=To:Subject:From:Message-Id:Date; b=S/QSytORXbtTXZPHR+1yRopZkZ4DW5k9yGWR42OtEV88OqN4w0GDBtgt0shuN3/IEWyLUQS3Ls4N0UyZkI/Qr3FO4hTJ4XjFnEOFY3OA4PtsDxKN/D4w3mToStZo6/w80tarseB/iLs1SsY3L70XWJkM9BMjWbghRqcG+SIRdkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y65Oo2Qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y65Oo2Qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57E6C4FE87
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724751353;
	bh=tsH6+1ILNKfg7RNArgwhkWjVljP6HM5oRevzgaPBDlk=;
	h=To:Subject:From:Date:From;
	b=Y65Oo2QiIIVu3trwqGfR+SDtyo7Kq9K78JAW8EIm1WZZhrWuWHt3pHuDzwk1MLRW5
	 AbgGBojwfTD5JYNL8xQSp5nX7DS42STl7JKMdZq4kd0Xgks+6X48JhSjhGDB6Aa5Wj
	 Xhx02Top9iejE2RQ+QPflCp/tx4maEN9gp7iu05tVLQY7V8ITiFCz09Cr07rAm9vVC
	 nIjI8TW44B+DOci/Po7ivPtPN3Td5ZQAU9DVTLRAI80jPY2Oc27VOmB5Jsmd4D635P
	 5aQLA9m9FU8554s/IRCC7794JqqS2/95lZvRywdDUZsz1r5V+ZC69r5Bqm7SI3c2w2
	 hywHN8kcevgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2185C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475135364.6157.11956562002221524792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a32c4c958bdd1ea13a3f2d40b799e005421b2801ebb0e56bed07c70ecf7ea6
Date: Tue, 27 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724751353
