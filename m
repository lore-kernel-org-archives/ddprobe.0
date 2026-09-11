Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ADF23A562
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789114234; cv=none; b=dtX2gsZu9pLJ80Kz9sWMEAE9eSUiPpxJsYWMc/2czhVxFuqTOvSIFUWSJk/Ffl1aosWHdcv/Dcd92EJNtVBWxfjnwP1OT9De0TAzjd2lYIzoc89aBoIGSKzdHV7Er+YpA3RunRz2ikRJ23wTc/UMOmqv59D1MR+fYH1AgWGL1RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789114234; c=relaxed/simple;
	bh=Tq7wYUYlCpf+oH9e0PuMgDJNWjUM8Q256uPE1/2yrkA=;
	h=To:Subject:From:Message-Id:Date; b=KBjFWSEHsLfMVPaBt6mW1UyVz1txUT9Oc1KGQGibg9AJUADx2vSBpkzce1xhcUSju4neLmUd/NE5TTYtO6LrwxIvqoV7qoWOJiNghhT7mYcGF9Srnf6MtcmJpQP5DdvpYg1dSfXgWsyCd/S2xTvq8UsWyJSMHKlddhWcmMZYp+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo6mbtX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo6mbtX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2197C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789114233;
	bh=Tq7wYUYlCpf+oH9e0PuMgDJNWjUM8Q256uPE1/2yrkA=;
	h=To:Subject:From:Date:From;
	b=qo6mbtX0ISXNqnG3UIqBDkCOlUMq/ouaTJTM2GYQF5z7Z8tzDur0Tv7MFX4I7Z4Ol
	 L1+jsJMcJY1K1S1LvJjTn1O/gdEZU5KsI5a24tuaDXSuw0QMO1xUVcAyDz+3Y1ie7y
	 mg9zcCES0pblJ7qMdwuDVvvscZgUI5qWL601JOOoS0zyIuv5zUmjE/RQ5ioR8WVRRb
	 yG9dDpxbGkedBrapA1o3dmST3xeUOVre90GLKz6EzErPSCD7m9AhZDxgutHl4HJ6kv
	 otuE3W2IG3nU/+vgYMMZ2N+zWoqGtO2kfF1PTHV4b/ElER71V6VwuO9mClOA6BBsG7
	 5qIpBSmJUc1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD32C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911423369.32663.13163383512617466485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9621323adcd62995afbbb6835bef5888807b0685798996b012d77c3e76ea38
Date: Fri, 11 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789114233
