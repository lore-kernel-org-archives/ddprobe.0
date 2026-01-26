Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEA633506D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769441634; cv=none; b=EBv3ZS5d8SKwcDulEvAQecRez2RBx+bCuHwJZMgfc+lhZs7hTNYGDue50j9ruP/uPhO2N6TeV2RPmIfTOjnbB2h8Jkby9StmDniOdBirLEA/br7Yy/hnHNMqOr07dYIVRnmlfiFhtAocLYnF+mFjy4/JVqJHU456nhMRqRWVy5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769441634; c=relaxed/simple;
	bh=noXMD4L1DCD7vK+IcHRRk8JyNsdvQJ3iK6jWM6CgDh8=;
	h=To:Subject:From:Message-Id:Date; b=bu5csO599om1RQL7lu8+pg1eBib9v2VfHpPhZeQQ+LkziUOgpmsJhpuhe2un+7tqoGWBOBD7eDIXFEYyUySxnOw1sjUmwzoMTe3niJgcN6MxJbazQw9NzKAyYs8RgGthWlp6agcLx6OsKWk8F1o7czCP8IZUUnEperT8WVJpi5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upPVsV5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upPVsV5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DB7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769441633;
	bh=noXMD4L1DCD7vK+IcHRRk8JyNsdvQJ3iK6jWM6CgDh8=;
	h=To:Subject:From:Date:From;
	b=upPVsV5ceVz0IToneeuKBJbhgd8lrMLdw5EJN92m2hfgN78LUm70Dc/8HjMFeZk8n
	 Ii38sOv3JtVmafOdupQuFd/Eyq+wTwZiermzUmb12F8gtEbql9k+ck17mOh8N+ngbe
	 GZ9BWNEj0a/kJFErvvXVXWEWQq7dOls4i6/lMK3nkJ9kcFO3W56eF2SmOX38wgPgco
	 blxsylxqiqmqkUQ3AuUrhOb57rVViaK1K3u+lCO3NGOtnyYRs0XlMuEBWtfqkJgEH9
	 JVs83rrZ8nlcl7uLk95lDtnu27d4esrraHh8jfTOJ02ZGcxG6jSdWDrzoa1J+7BDFQ
	 9GKNcLzqtRSQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8385D13C34
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944163358.5661.29793719172950810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cfdd093eb66daadd7a350cd65c51c12e5f833e55b483978c82dbedf73784fd
Date: Mon, 26 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769441633
