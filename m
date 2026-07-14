Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580833128AB
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784052514; cv=none; b=NlKdGorkulz0HAM8Qw91sBb3C8i47sEs7sS0vbFDCzANAqRpY1P+6oQy7Tup0BVroAZs4k8eOt2BUSYfoRVsZ0FI7Ph968VfaAMSGDQnjMQjBm0cSVTnzhDxEwt1x0A5awIsTg9hVzVLeoUi3cBIosSp65aJG72A4rQgSFBObJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784052514; c=relaxed/simple;
	bh=9OeJtJqc4ykUjfShcaXoJPwtPoHDjNMzwli85SwLBQk=;
	h=To:Subject:From:Message-Id:Date; b=Tk1L8RgPguKBUNoTgkFevI0L1CwxqJBDe5uR9vMJxrOx4hOv5592ctDJ9UMOjVwJPqnTRqBxxLN9jd0T04paA0d8aNtEoaiatHX1v46d3tmQrMrXv+rQrXbZeKhJBtBelXTcTF8nbfG//MQAaTGUX3r7LU7q4jSTPQs80LblLAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HetUjzBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HetUjzBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9616C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784052513;
	bh=9OeJtJqc4ykUjfShcaXoJPwtPoHDjNMzwli85SwLBQk=;
	h=To:Subject:From:Date:From;
	b=HetUjzBgoAovQLq/EvhfUoCDRAesft1DvQHRhMHXfQZRcv0tldx5QL610W4TH+7vG
	 6EGWHEU1RLNqBcspLgVf4TC/+uboaVKo6FtgjrVQxxMzAmi+tDpnVae65qMqhEW48o
	 raDn3UcIM3nd8Yuewv68O08m65pqtCqi37zqSeW56t1Xs8WXa/if/hdIs/NljxiD1b
	 ZwheydWZjxM3t3EJTnQ5jkz9h+DFR3KQoXSN/fsfHS7dgtTe1Dy6bnvPE/wKRlLoN7
	 j9keLFAH4YX7IuLd8CrGdyy2DEka4L8kOOjxIscwnbpfnPElYNH/4h84yPZKfTuXmM
	 pnDNLEjObweTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF0CC44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405251369.21192.4126630772441023067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fb64b47c9aee0bc2d3a8d61031b1867cc50d929758c413bf0bfdee7e2dbe81
Date: Tue, 14 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784052513
