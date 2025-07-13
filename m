Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2525735977
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752403795; cv=none; b=TmSApWddPEMrklJhdtovgpzVrUTLJpnHG51VIwjp4AmT8CEsWgvPKQn1EJvIxqodnsojfe7fhSeBFrp5MZP20MVCZ7Wg6q7bYcb+9pkjENe0X6DWP8EJijkoU3j/PY0/D3DUnfpZuAL3YYUyeu7TbhgIYyihpCd/Y5cgTv8nX5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752403795; c=relaxed/simple;
	bh=XFugUIUZ8OyIMUkUI8zGJt9UZF1mFDZtD2l8DMEKNI8=;
	h=To:Subject:From:Message-Id:Date; b=CrA/KP0UHoeWVBjzKlX/qw35JUezIsfUCDanireBxr5HEIJRqV3mIYBt+ADIt75tnFnvh077D4cTV/58ouJIevK5jk/T2bTc3BrNlQj6XM7LLujES4hBW/RSeXWZtEnbQd27yInjYKe+iXFgvoTk3+w7tLmtMvUpPnoDUhnSbfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYMJeXrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYMJeXrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E03C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752403793;
	bh=XFugUIUZ8OyIMUkUI8zGJt9UZF1mFDZtD2l8DMEKNI8=;
	h=To:Subject:From:Date:From;
	b=lYMJeXrYBE0L/xXY89MDIUjxPLzPQcYalsRgHye44hOL+WYVooKVAzt9L00yuRT05
	 n/aQn5De5w7Sm2/RideACXoOk9issSIkB+F8hKjeURfldzkExzy+wi0SEu/vRzdSFl
	 zRcpDbA6sGMmo/b6cmHGTJLTlRgeJ9JIdKu+85FASS5c+Udke9pe1lFaZc5BGc3OdW
	 8TQ7EEF2UtGaRxBf2oR6r7UH1D1cI/RR2Go1o2T1ZBaOVPa7EK2ok4ytM59m06/hqV
	 jZJkJFBFZmZg3pb6Svhb0cKuDLq/KgdlOvMNAHFaaM/G5I4c5JqrxSgXzx0fswyio5
	 Mh2RWUAsZxZQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E7AC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240379357.15018.9274770390595276712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6e313223fcf76a56568b0473d69f758ffb3d23dc4e0d8cc3f253af685159cb
Date: Sun, 13 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752403793
