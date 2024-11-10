Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210A3F9DA
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731212754; cv=none; b=RaDffdwG9Mx7ltr5eiHB2oH3CdALhNYGfR4oGawCIaY+632RxZyOIqA0O8XDpcv1bdPQebGBuCQvMajhpWHfZEO3zxHOWn/XsCQpi9HxDrt6ghtU5wLMqaXfJXagnrP2qWfuU1Z4TsAMKh8mJinsyS110ZTuIaSD2SS7qMH4OD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731212754; c=relaxed/simple;
	bh=kmWWiuwFkt/xPeSbNVUUWspia8oehIFQiWl5LpK0fHM=;
	h=To:Subject:From:Message-Id:Date; b=h0gOB6mGQgi5xbOl+kwhmLwGKBgUpSnSQV2T6IuIMfvmVtVTxz0M8f/TsQA7KgjVwNf9qJMQkRFVPl0/GuwuB5eVxWSdQRHGdi6VQMVcB2uDPHsQoYGD+7LPzgzUtdHI8lJ3MdE0VFaRGY987NMGOB1ExPzPb2Od1sp5pHf2QYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4Vg+ooW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4Vg+ooW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B391DC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731212753;
	bh=kmWWiuwFkt/xPeSbNVUUWspia8oehIFQiWl5LpK0fHM=;
	h=To:Subject:From:Date:From;
	b=D4Vg+ooWryhtLItX4bC3T1tWMO7CWutVrOGLy9lgh1jVZP1bA8H6J/yOZZn4CPex0
	 TGJoTJgWYtCb4I/1O/ZJCNltwZDHsc0g6gzNy6bxb6c2Dc4Tf2nJlFkdQIOBOY2HTF
	 Jm6j5AZNkzVJYKpxyfpaRhG1w5A3xBkri173CUyp4czfy/fRYqubZMvYdWD5SEJOVI
	 6O47mOdq/cQqi2gUn7F/7UXvSa86Bfgegc4Q2Z+4KdWr2vP+uwJvezpYANYf+81uvm
	 I2MaAZ+rnyTMl4zPAk030YVU/6IG9Zq0knhX4M5eblvgRIl5KYuv0MiZW7gnr70Vlx
	 fpUMr4upOTq/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C952D5E39B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173121275363.26930.17369734168996845054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616bfa92a5d0f9581e54e7b0af36c0eacb6f7e64cf1fb56ccd436167baa84320
Date: Sun, 10 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731212753
