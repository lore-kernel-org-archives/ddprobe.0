Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EBD3B7B8C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784287115; cv=none; b=H2OjmTNPmrGoalmdebq0QeSRgZ3Y9lkm+4kuV3OWqzWKXWqeTjDikENaOOpU4IqII0hpX0i1oN3MZ2AHPRn6n8bpa5qQy9XFE5YOyg3bBlbSkhg1EwY/H5/c+PO6CGWcIi/BelACBgoJpzecCTsokHGB/85PJnazTJTan/yOPos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784287115; c=relaxed/simple;
	bh=XX8OJRinq9vbPD2ZXUM27yWQMpzSVuUSr+dws9DoUE4=;
	h=To:Subject:From:Message-Id:Date; b=B8JCP2LVy+O4kihT/K5JxxsBHqz+yoG3NSh/PTrHuSKj4e9V91jAjOXiwNTDpG6kHDndQ8qPFKMifWCxwQvJRXpHRyprLdCOg28flrhU6tE2B+kpdr2lfXsRaHT4/MQVh4jOTMVtd5+pr0PGhgOnkudkSKO3ZJvX0EGerVMS6+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3ZHu/R6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3ZHu/R6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF539C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784287113;
	bh=XX8OJRinq9vbPD2ZXUM27yWQMpzSVuUSr+dws9DoUE4=;
	h=To:Subject:From:Date:From;
	b=V3ZHu/R6A+2+dSHT+YCYueFDWnNR7o0/YfdzOPjui1+aYB/+noA4x6bL/eaVYG8Ao
	 YTevkV+Idj+xnNH2NWjetXr12NtkpSG0ZG05ga2pv667C6oNJqxxVI7+d2O5xzlB7Q
	 yWP8M2TFYYdcnj8986yhfr/BMWSRYWWfIBp/Ydr1YwfjkKIxOx02XQjOKf3ZOQpauP
	 mm7n33QcJEnzfN+Eal3wphwpavU4faQ8U7Oaa0IRKjhQ2xvDJeLxNaF2EYFE5qGU0f
	 5fwYdldmHfpEmQIx57TelfiD/697rGtaVDLkC/myaluCd/044/ESoKg4aKdeQy5/0U
	 IB0F7kVXEHeRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5A9C44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428711368.22764.9359154911876900125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74da56583bf17044270ae0e39fd5efb28500f90a19abc0af4d25d46eb226ff30
Date: Fri, 17 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784287113
