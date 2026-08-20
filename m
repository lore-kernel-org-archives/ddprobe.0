Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAA841BA83
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787227234; cv=none; b=Pi3iHphVa6+Yw4MVrtrqO3ljbkdcYVPkg0gJKUyhwZcePkYNofDETR0bMryqEMzT3hgNs9HfuB+UXdEQQq/+3dtT46LwHWAnuIpTU8Ml2VhGkZ/y+TTlSgobWPYJc/FNT69BNaSr3XX3FvbVFcOlJ9PdN/zzuGzG35+E6EX0icA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787227234; c=relaxed/simple;
	bh=vaG2pR+g3mD3JrO43gXmXhUzbyV7lTFUbnr18/DpMvs=;
	h=To:Subject:From:Message-Id:Date; b=V63ObjnteS3wF5wxTGMSLezKOwZJzT7qWhG94ok6DvFvHX1DjCPvbFV7bSAWRAaLOb6Q5UfPoPEsrXLaQdL6odtm2HxGz+SBghu3oNGfn3NqjX+2ETGN7yCKQNKfwx5wmIg8k9eJc4capBB/2lIOTLsdRlMIJ0quqNOrkjQnVTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNoJtw+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNoJtw+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D388AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787227233;
	bh=vaG2pR+g3mD3JrO43gXmXhUzbyV7lTFUbnr18/DpMvs=;
	h=To:Subject:From:Date:From;
	b=iNoJtw+JsGr7k5mhm5Qwg3rCcRBsy8jB84t3hNgRQw/3b65wYyrK2deG89Vv915t6
	 8cuxzsQuQtMd4EttUUXTuUEGxBxe3t1E/kT/xXH4hzlmwo63ugn5kjZvf45D4FQUdl
	 0Q8PkhBIWphNwMoUIndZdmOPZAmQSg0NWXTj1kYxiEy7WA+2F5oBi9jXQy2yfvlujk
	 HwRXH7RD2CM/kDBTcTdyGWjlktRyAoeNsA6e7tvQMxgAHk0fT7WDoUxDRVvhCL1CY4
	 YDRiDjyUZrKsK0j0VwuwPriMWtA5PE5Z6WKKwBl7pXCvhewFBsExXmhvPeXkJg0aFI
	 yawJlSBKXs2cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE3DC5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722723369.25851.2001425617930485718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409d408a44f8b569ad764ab7cb4f822cee48f07c3a75570e76625cfdc3b9f611
Date: Thu, 20 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787227233
