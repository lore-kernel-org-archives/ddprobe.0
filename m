Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251097E0E4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769337234; cv=none; b=dkJQ6n7i3ZGguf6v1Z7W4FJ27agbo51kv0bwJnznEdyPlV1bBEuWx141ryK4PhxIKiLaMmj1EGlZVIoAFo8vmPpRvsNQ8Psb+Oxi3gR3MrnFGLdfXItayfI9w+lHhpUzZhhKYaRJ4piVJiJlL74cOEdFBL/12QxYJT6KN2wmE7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769337234; c=relaxed/simple;
	bh=YVVe/YzBG4o9rZpMjcdODswrNRTRSCQDCn5qup2+miE=;
	h=To:Subject:From:Message-Id:Date; b=SWfJ+RHH0YOkQpiY9EearVeZDf3gWzMWW4dLqNAgHYIDdDWTQAir7/FA7hUd7ZrraoI+TOGsteCGzRBp2PwxnQzhi0uIPAsxP30y7OKE2gzPco/sK3Qfq7GhkITQhHrm5kqtQFdayYU8XPb+c4RIhYX6qE5FLmnX8Hw+RJeKltc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNmZ04XA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNmZ04XA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD70C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769337233;
	bh=YVVe/YzBG4o9rZpMjcdODswrNRTRSCQDCn5qup2+miE=;
	h=To:Subject:From:Date:From;
	b=uNmZ04XAiSa79vR5RcXsFLOOH6g2a8CtoLp0tHsnQlDYtTtKg89zSEpYFM78quHU+
	 DRUdK/pBZ6bG0Sfee5YTDRje0pAXLNXX7k1ZuXLyrWdSC5OkybjU7j4TCd8njLGkQR
	 hXPNxu47HKM5H2NEf2+iZWA9CsmXdkb/VfUrg4E6ILKfvnlczeOD1oMtDHKFSSMJ9w
	 TlFuH02tjydoX1VSJuVeDZdx3KAu7+mxs9BpB3nc+r9WSvRX6HQ598BoefVUoAsKOW
	 YRE6SCJhSljbBLIdw0KIeqZ19BuEgERL0H5JuZI45dlrI88hOA+bE7MqvU0h64Rw2r
	 6DjgjO0SclYtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB03E63C9B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933723357.23253.737968212588329079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98ae7f29601007ecd5c0563b3775daa803694799ef481c87064891321324543
Date: Sun, 25 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769337233
