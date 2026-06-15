Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DB619D89E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781567194; cv=none; b=Ugg79qxmp/jsd2ad87ifYjl/2E7EaqLf45Xb/O4THeGd0xvtCThJT5eVUJBrL8SkPBk5baoXTOumeYot1ngX3uuutiZBkr2YUMb3pYWX6DdstfMqX0D+09vEsQnqQmNOo+d007M0C8eFfhWJtlxDFWmHDDzwalOi4ifpMTEZNtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781567194; c=relaxed/simple;
	bh=oQKMfamww49Yp2p4pQqrvxpe8be/UJAWWKlWflS3sto=;
	h=To:Subject:From:Message-Id:Date; b=eh0Tip2m4h/wAVJ/XD3IoLJXgoeW384v/40NXcoqpfbOil5is19DRQ1DqPmC0hx0Jls8sFUnjOR/d8fQgPfn7hT5PueVx60DYsd6fwmFwfQVNguMH2LOq78oCkdOhjN/mJj+WMpLKtZRQm3vQfRZ3OLJnykhDbehQ//cjt7hj1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8Tj9YrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8Tj9YrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9677C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781567193;
	bh=oQKMfamww49Yp2p4pQqrvxpe8be/UJAWWKlWflS3sto=;
	h=To:Subject:From:Date:From;
	b=K8Tj9YrZYDoSW0a3wJv1vRwPUfEKbOdUd63tD2tFSbSje3NRhkVrkXxK/n14XHMKc
	 6O3xB2F/g5DkpNxpdSmdiCS9DxNFkVwsos94eI1p0ZLKz8zeDWKOwx8Lohxp2feQkh
	 RwojYKFgaaCABq6JHh1nshUNQnGfDD+U1Ao63URF0HpJ0iBb18PnWlCi76IAQoWTs+
	 h90di2SgohuT5nWNdnFqz8mz7DSIuaFH0JvfPXVwAaTOTz3x3/TRpw18Of+XUINx6m
	 Nz8cRmRIsb7zcEhDXqE8Hpx3E5JmK5ZYT0PidsOckYuAqU8gajdT9VpWvAS7ntKi//
	 +TTEf5oRDTpcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4FBCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156719371.12793.16423123168793674372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33547e9a9281453ff0bdf1c6afa30f472969f31749b6bc443070e5e5297ac20b
Date: Mon, 15 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781567193
