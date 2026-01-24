Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C905150997
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769295234; cv=none; b=onQsrcApbf70sVjz33UIzzFtV3NJv3+//yamjDR0gYUzMuX1diSRtRhPPGeEQLOAAnGE4EkmeqNrI6VdXYXzg1s7F2IwoA62f9MaTILMaLZcEbwWQRfwX7YWQ91Mi1gqE4bSa/dv2IsvA9ghk+3swR/h6UDOEnTJ6XJm99zBRww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769295234; c=relaxed/simple;
	bh=hD3WbLPG6iKBYi4OjJTjkh2XGEVGKwEqaW1vLDsj8EY=;
	h=To:Subject:From:Message-Id:Date; b=Zh8se4BkqMud3HuOl03mQfHykO2XLPb8jx/nijgbNG1HbD3ZC8kU3t2Ok+sdEf3+g+3QODq9jcBnTt2TZNwcTF3Qx9yEk7xsm5FtYDZpyxsTKk1vop+fHpCsQznMtLyJqgf2Ve/aF1OsP4O2aBhM6UsGdzp2rPHLkAhkhxgP4YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdOOEbBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdOOEbBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2069C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769295233;
	bh=hD3WbLPG6iKBYi4OjJTjkh2XGEVGKwEqaW1vLDsj8EY=;
	h=To:Subject:From:Date:From;
	b=PdOOEbBRsG0P9VuBPnkHKD61MOnDXDZA4YCDIJafjS8Isyw5ItUlyyoiaGrCf8efl
	 054xk53xCs9Vi5orYag5mwFrhy8e5kKpG0hzMuO+D05L+FGbBk4wJ8yGpbnxE8zELq
	 /KCYZ++daaeQeh0Lhqw/nJ9otUfsrk6Zg+tDxFxRvUFy1+OoZ+PpV8lPx39YaCex+c
	 LCDTB/mfWsTKmfI4QCCSCj7gax/q/ME2mlH2D18bk6GZn7aK6oLyNKX1nzkFTMRzQN
	 /sZxZUV9oMdyy6CrGNOdnG9/TFPyQ30cI38W+7eOLUxKp8B0D2VLBHKWBlRD/MRI6H
	 X/X231qZgnWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2DD715FD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929523358.19837.6851908086587953724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324e7790f2c305a356261dba9d3d29d04eec07f0cb6ea0fc9d3d5aad2d486c5f
Date: Sat, 24 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769295233
