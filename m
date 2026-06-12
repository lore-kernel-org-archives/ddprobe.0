Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709BA3D75CB
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781265994; cv=none; b=qoqPPEALyFfUAEzibzLoMA6V9pjYu3F20goihrdZzOnKr8bAhIJqxbYmVxqP0PJnUY/lmUgfd0Uu2fqSUSJr06/mQUXJSAmVGD6pIfAyyIXI/JierubYpwtwT+rXLEphqpW3KkbHGB2JpFuCkSunC+WxWYsnCfgzlnJfAgYUmXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781265994; c=relaxed/simple;
	bh=OBg9s1RoO621NJ0Ak1HIEAW3mgziMuno61ZBHBib8jg=;
	h=To:Subject:From:Message-Id:Date; b=lNFycdSZmD5j/aFEAhn5G2SqhMywPdFBCUIxynik9xVvpzQB/fzgoBCYPCh+fDgLkXyrBvPIHFA3nLbn1Q7RnbOp1gKkBRrdWGRS1c88szeJHb50sJAVQ6lWzN8IPDxBN/QBMy0SwF1cBjMMmtdt8XCP55ulVq/jXKZ5aJ6IAyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iw6ib0fQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iw6ib0fQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41FFC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781265993;
	bh=OBg9s1RoO621NJ0Ak1HIEAW3mgziMuno61ZBHBib8jg=;
	h=To:Subject:From:Date:From;
	b=iw6ib0fQ7Af4lcOf7+baNrimfUNwtblpfJupEFo1hk9AF/kds4KUaCLZumfGsxswm
	 vYg8p2toV1k5STy/bk/qYGHggPrMYFLvv67YVd3W0wu+lZkGwWCx5CtMl6Fsg9m31r
	 n07+YYfSyu9uBncBNv9470sVbEBfICu8eSxb72nptQW/gq0rpkl/n1//2QTppq0w0f
	 TnfR2UosNCDjTs/iLm0WL2l6GoCn62jCx0RarVf4qXbF1Rq9831rrmAjB1Po7Z5BpN
	 sQlY90xiheRcivin2wWGSjHJj17lV+vP61RX7+xe0c7CimnF1S0xPz6oWkK8LMnA6y
	 QEqOouKgh6Tiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BA6CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126599368.27867.1383040538068074942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a705e676c55dfe1a965a59e40afc0612b63d089bc5c7ed77fc39d76daa5cc2
Date: Fri, 12 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781265993
