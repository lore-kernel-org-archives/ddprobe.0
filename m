Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E42A253F35
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751464194; cv=none; b=Dps2AUmy/UptfUl/O5RHg3PJ4w4wF57KjQMra+WDIsH6A9Ot/aCsdNAOif/veSFLcgJwh2xi1xGT/xb0hWTrJY09K4Uy7m2HW1vTcvGqELGT6EsjVFY5i/lbyaEuWPt9dKAMWkB6uVvs3Vxm2ZMB/wW40w9AzjFW2hnM3XfbDRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751464194; c=relaxed/simple;
	bh=CUhXUOScBKaDyfPWMvr8sEPjSNEae57XjbhJg0A4bHU=;
	h=To:Subject:From:Message-Id:Date; b=VD6NQBrY9VLhoUuOMT2aEKutWb2YYr05pW9NLRjM0ZripRlZOiRgwyyFwhd3OOD/pr/XQUtjoorMoIQNR+pS4h0A4VQSDxWUPDg9xN0nI3KE9S4oYrzxLVd1sgYSr9ZicUhHxnQoRQL67JIER7P/mnF1mO+w1jMfu14qC0u1/UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cExjyb6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cExjyb6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0829C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751464193;
	bh=CUhXUOScBKaDyfPWMvr8sEPjSNEae57XjbhJg0A4bHU=;
	h=To:Subject:From:Date:From;
	b=cExjyb6mdw0hQlkumTMjccuMmPI0V1zcXqljMA+6T94VkfvYTtRS9KUCMhIhDrsoy
	 WWUVC9kzGEO0t/mAwfkqPRoypw/eR2tvg/RP+D1O51a0wd0vJ76Pv1Q/RCwm+0uHa+
	 OlVDZ2MjzkV+ed+CtWCghNbCQR3xhx5AcmW+HGzzJQSYFUuLOVp13lOcahrHCyDXoF
	 CAs9R//iiZ5bkAvWId15nrfE53rkf1HfK+g8X5voiNJeiY/fRFqMmFIKEW/GA58uSP
	 MVRwXeSHQoC3l/fr9EC6CHYjwToUxH2SvUzuVVSOD65gvUUqAg6CJE4jftHZMwd+vT
	 nbGhZ0qQIEsHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75FC83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146419358.6844.17361726594855656964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9f142e572b2f68e92da70c2dd5555347e2b390dd26bfe4c7a5327a92c8c71e
Date: Wed, 02 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751464193
