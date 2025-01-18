Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC65195
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737162954; cv=none; b=Bp/fDqQqS8tYwrP1hnPoNzgagSVnPR/asku843cpC6DxQX/lhlY20xme/rOoeUH8ySN6YMVM9Rwf7eg1Yj61x8aR9xiy/bdp+6GGBz2Cj6hrtxc2EPc3Msp3z4kTf36fjXLc8xcnq+lUuwq4r74rfTCQJ9javvt+G9g5WlnNudg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737162954; c=relaxed/simple;
	bh=G0dfW92Ykud2V3INu1+N1PxYuVCEqxWTlryXPVNM3pk=;
	h=To:Subject:From:Message-Id:Date; b=mGzzeCLlS7JUOJFku0CJxv2ySegfPJiOjFCy0BguIYJTtI69a1o0EhThOCrtYpXVFmuW3K3adg3aLJqQ1BjYa1XvMGXYdXbjSyk2Mvpf64DcJz3Ww6zcaalFhZyq5Ccwan4UM6YL68JY7VtxXm1eHIRCo0cfvRyRLBV1mZDFrxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASBVTekH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASBVTekH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA453C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737162953;
	bh=G0dfW92Ykud2V3INu1+N1PxYuVCEqxWTlryXPVNM3pk=;
	h=To:Subject:From:Date:From;
	b=ASBVTekHsUUo9V4kQonw8FZYOWdwd3BQIs9XUwCvDlKcOlZdL4mQTRW4ZC90ciHfW
	 GB4YecbNrLkhiuEmTEyda2XYq230VpX27pq7O8uzWgeW/MlEzH3cfoglcS87ye3znn
	 vrYGND+YehMIxzCbGZLPX/GqvvX2YA9e9wGTjmbQiD/f9mo+rt++eYUsVguuheT6Bp
	 Kq/Yxto/kjmr+OEecZbXgVsyCnDUVdjNE+YUDf+mN4Z4pk2ym+mv0eejHur0bgPQlB
	 i/cAS7EvdXJTrT8wKma+iO2leIJ8AH+yNXEtX1B1MhOIpPE7EaBxQznWVKj1l0Xdj+
	 Ac7cI3YOfw1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9138DC02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716295357.3292.4388856525106821052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e5751174d5756bb06b8375ce4cd987ef8bb5bc6591560ba69837e5d23a93cb
Date: Sat, 18 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737162953
