Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B901C549F
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773923094; cv=none; b=TnbmvSqf+GjzUpYsziYW4KN5Ok7nhYZbI0RMIg6Z1CmU0WVuwCn8VYKsGxL8JzzoL6MmexyfSEnTOsv4tCNA5FXVqx59cPZcwQcupgqzHg/Rfo24lJ4W12BrYrBS6ZUnIwLWcYFgAzK4/xDLhxhazmERKnRqJUVoxz/a70vw80Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773923094; c=relaxed/simple;
	bh=j1K0HUaC2vt97hYT6vQA4pMTwJAeBk+OVBi+wkewVbk=;
	h=To:Subject:From:Message-Id:Date; b=eTB6wlFJXB2bknOFDmZggzTPfcX8Ur0LSwSxl7EFRJ3ExP8+Nvv0TxwKQlS7iSHrd5o8mHSz4DiNY7ra1tEwpGnlvVGl2DADrl3cgmQVccqdOLTVX6xy4ICTRJcnNTW4Tu/RMppnuV/mj25I6D8IoMdMtgqN0SY5D5utSa36tLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MG4vecdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MG4vecdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F5CC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773923093;
	bh=j1K0HUaC2vt97hYT6vQA4pMTwJAeBk+OVBi+wkewVbk=;
	h=To:Subject:From:Date:From;
	b=MG4vecdNdUCMVOTft46LKpjokxaouIBbibmkvxn1qn+0Z9KZlk/Er6dIyiPjstDg1
	 YuWJefN21TGm6otEvfgig8cL7gW6vYa4QJsMdBkby4QNSM8JsrvWH8IthQShdJmccS
	 L38FbaRkm/Pm299GvNGkiV2W1gYJaoaTb1FTHHxHgor6ZmMAxZSAjTo2T600fmSYLH
	 ZfRDzmt9+A5+st2Nuy5EdIDbheXYuenyfBQXzMho03u30t56l8Pbruf3dZrNBdgPr0
	 8MGGG/bYQNsntsAFswwq72pcJUcYsrgtY9E/e2cOe446y9XnhA1Y+LxjosQbUstys0
	 GfokD9CCKzFkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C0108E1FE
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392309357.23179.16663831969607828896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be10f71d8a6a0501f6ca48d1d0f1a43dd505fdeb57ee862b492ac97ed0d97f9f
Date: Thu, 19 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773923093
