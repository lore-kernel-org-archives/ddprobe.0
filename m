Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA0E20ADE2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733990154; cv=none; b=eMQvIMSPk+Y53aXCcmJs11fMRyAHSnS2HYpmgnZQ0tXeoKyIxb/0gvXySeV03O5CscRdhBXiwsUy4V334ALwCzmp6vttc9wMWxnW8hejx9my/wtnNTgE3kPHRCly1Vd7aRjiwnmaNAOiZ1ujbB+SDRHXtVCDOZZ5f7irdQeseBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733990154; c=relaxed/simple;
	bh=JnJFarokehDBqbfZtvq/BOPzUl/g87MKqMHzZfwV7ME=;
	h=To:Subject:From:Message-Id:Date; b=AG3vXBMXeQSJsHQck/9Wjf4fHflh3PYL8eBtwHpkZJOjzNpMQq/nrxFvMSDhmDdvq2ATm2DssTX/mhXrsjur84zX1ykG68ooMTGvgPywTOg6CcTJbumERd9qvdjEYVJva7jRDvMggj7C4lMPambROMyQWVrGTDx6rXbojTnH1wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LW75AqyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LW75AqyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C4C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733990153;
	bh=JnJFarokehDBqbfZtvq/BOPzUl/g87MKqMHzZfwV7ME=;
	h=To:Subject:From:Date:From;
	b=LW75AqyEl9R1fX1P9UC9lSYE3BmAzFEuGJh3jkfRQaP0zMbwn/+kgHk5XDPamgrWF
	 mnPLEntaqC1HBlaYJ/M9Lqp/rPqJ5Mva8mr9GoWvyqb3ScRuETwIaxTUiECpBD2lE8
	 +2TRJOdpu6H0EypXZF8lBsZ52ZvyUb0Y2xtLiJo401blhMFv9Gl3V6BgwKmlZfABjA
	 /uywU21y0KX7Ky/mLhM21JE0Yhpu1OpsqKgpr1pubE/i3pMZu7zAWwos30hzsbh/qp
	 zk6csqhGgMgIjs2JjgTeokys4e/qmzuxnwasFq0ipeE8HGd7XtBIm3i8WXQHJjjjB+
	 GLkohpw3eyNbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92993E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399015359.4864.15383292252938567584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f21029c8568bb574de9b817e2771851521cffeea80b8076d3cf50040be8c456
Date: Thu, 12 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733990153
