Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAB438B7AB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768935834; cv=none; b=WQ51DNpZKWiba9jbfrPlUsSSAAWFlCSNkC2SNepPMTn2aBlal+ttsaAA8VS7x+DXZUdnqJ00oKAwxPhfh0UqlaY2KVQci3BRsFLa4VGyhLMaB8MgbFjc7HvV3mTzrPh1vlCUdeCNGAPxTC1HTstpl9p4SQKhXHnoVpDdi2v32j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768935834; c=relaxed/simple;
	bh=+CgQ6Aj62U4NmU+SXmjiFnTSau21vNp9pDFphnFhcWg=;
	h=To:Subject:From:Message-Id:Date; b=kKA1ZRbFyV5aEK0YkSgisJ7JfP4uo02LSzRzlI41QE9X6penU2jqg6g6OUTdjIAKVxtVkIVwCa1MxTFvjaE2mnjg14a+tjKjGEetDvniNj/l9JIMvMQe/rHUJtxz1HM1HQ6OmNnNYjrYSiVGXxsKfw3quFdwHzGle111sU0sfIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoFiQekF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoFiQekF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8987C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768935833;
	bh=+CgQ6Aj62U4NmU+SXmjiFnTSau21vNp9pDFphnFhcWg=;
	h=To:Subject:From:Date:From;
	b=hoFiQekFP7HVUf939LWPz7Ca3h215WZqnjXQAD3YqeKG2DCPvyV20BAhvt4KjSDeB
	 vnnMUKApUBkLMBNCd1CDH9rCoHz4lehz8eHVo4c/WoQC4tLO1cDlMOEp8q/wm/ECmC
	 if128/L0hSxMQkoNkUG/AjpUI4KCSRiyARsyw2Y9jt2SzUV0BzhZbeuNpT7a4gVa+U
	 Gts86fGOASFjFker3AkUKVH0Pg0QkpCMI/PK05S3XDmAj1UKZYSnNd4WCQSUcrBPqv
	 B4yePlANBvn+XlAlQkgBC8RuAA1dcBnlxxtE+HUz5C0nkHYJam3ghEtwscVQMrCh6q
	 3yTr9dgO9nebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC0D2628D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893583358.21808.12388224216247066213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dadce42f3d6e1b1a50a71beff1b283d348fce81d8d13c61673eec50d73a65b13
Date: Tue, 20 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768935833
