Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1591D336EEE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761809394; cv=none; b=QGudInCiz9apx/J2hTojDBU7Bs3HILtck3kIqiZT/v09scFRCReiBRvf7/1fnqT/t2tcUOvdiv0nM5GpFXnS27Yi5EMEHy6NiQHVZKjQqqTF7mWxvKISOYmARIkFSR+iFIQAMBBCscDtKBExuSmFiU005WbvrHiPQENP0X5yNHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761809394; c=relaxed/simple;
	bh=j2sA1nb/RMIvB5u6f/qy3xvbOLlvtvzeLkPQIZKCUww=;
	h=To:Subject:From:Message-Id:Date; b=WTrrADGUK4Gea+IHvABUKWsY0Kit98om9/cbXC4TqjQM7UBV3OpA4EoiZ2ym39NTlG1lXQyul1p5/ctbcsGfujckWtM8vdovI4/uKbua9iug7MUnv1tKfV+bbZW7OEZsg1vEzCFTymN9elDwvuJjLSalkahBEb38h24ZahZrK1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAUzsHVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAUzsHVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE728C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761809393;
	bh=j2sA1nb/RMIvB5u6f/qy3xvbOLlvtvzeLkPQIZKCUww=;
	h=To:Subject:From:Date:From;
	b=RAUzsHVbSdIYMdoDQpKVBx/gkWliAYQeAEVmxBnSatK7S877xudOeL9lG6b5K9wjR
	 qVM5J4JxVYepaL+ovVAbysCFTwj9Mr2tbBSbVTd38iIvC/1HDuBLwxxPcaWl2gj/Vj
	 O5VQgiQ5fUBKbgSqf/zTB1XIulJtFfXqPmjnELbwQsmQPxMND1mVFV0VLQ5qsAHmNM
	 NCTR4WPYZMCtza4lqmOuTjBXzOohIq82OgHncsLnFTZvczZm0qpyeYL+5244ZSksu1
	 J62BrHoDFhwH450h0htbgOS5FBf88u5SgzYnQcLmYeoZ4A/WffS6CJ40+tFnPaB7nl
	 x+nL7f8OiT2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEADCCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180939359.12170.9740469873769424485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6acbc7ad02c547d26d2712f0a237adf1265fcb64ed8cedbc40c89a53d4faf4
Date: Thu, 30 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761809393
