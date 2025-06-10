Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3CA23AE96
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749581997; cv=none; b=d00orpyxZ/k4GB1bmOza0gWDQXaTdU01qK12aut3UWGcEGRF318W2GDkJJqjnfU63ermV5HaYaeYwXiimwNVRLAru31zvtxB6QsMlUTeHOodxw9ivD6YyKwUFS0xMn8O8rln+48nbVbN0taqs4gLBLgLxIRNClC4Xv12RK7Twbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749581997; c=relaxed/simple;
	bh=i3PKTHKRvVgT4b6hOtbcYjhVhbemgQHHSoABEMO306c=;
	h=To:Subject:From:Message-Id:Date; b=gJUGDIyy6jCREBke1QeC5hbEaKXHkRhDWgTFKcHCdeH3/5toPsZPR3OaoYxt2CGGb202M6PDR9wpBUToCGqueLNVYmKqdQLiP0koeW0p3DwygDrDpdQAV6khHS1FKnkR9cWIVgnVDE3zhU90g+XbgNLsgVvvYBBeKAL7NmZOQrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSLlkVti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSLlkVti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A0C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749581993;
	bh=i3PKTHKRvVgT4b6hOtbcYjhVhbemgQHHSoABEMO306c=;
	h=To:Subject:From:Date:From;
	b=OSLlkVtij0YjOB9hXWz8/qkJDylg16mqGapKDYcbhBShWnHriiF3pRP2xCCJtQjg0
	 7PLOhJ4hh48ak0frVADMMYkPnQGvwwBsyYkSFlC9WdFzQA7HlLP2ec54atxnBfHzUM
	 9+RQTgUHDapl44Ch67pBZXzqN7HJP0Y7j/jMuI/eRkGcTDzzPVzi8aPmNabAdkZVLY
	 E4i3gGautDMJ7h94dI8Nh2PRKm/6w/9DsfW9v1Dg3q0bQdEdSLw0PBfQvwL5r10c+1
	 mvQHht/GTuX+YJxedtWdH8ikQPEPdDYH+d3i2Ah3uYDFvjhsNMBH1uS50dMQtWxLnL
	 grPOqpDgCC2ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F259C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958199357.29288.4152066831671497870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23690e73f576853a066f414ae4d627e5badde270f87dce088276d44304f19763
Date: Tue, 10 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749581993
