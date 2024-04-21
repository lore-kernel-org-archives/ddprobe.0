Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A04738C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713679823; cv=none; b=MmqiQYB56POFHKiGNgMm1hS3TL8Mv2ffW6gNLKFnZ+2ttijiU0Bm+oQ+EEuLfkSOYAKg2t1TFEYaHjdjL/UQHdjbgosnzAMQBeg83EwragOfGpAldyqJecoAQubqgs3xWTDAjvWnkgMCgW6oSksRwNtewXGWjSLsQZ0Oiroz5Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713679823; c=relaxed/simple;
	bh=1VXjrJOoSfdprt+p5slZ+mlWPli0eyLuxv0FBgf43fo=;
	h=To:Subject:From:Message-Id:Date; b=NmV+yUjrHB4u41p8zLe+PPOQVi+y2qGzaBvA9TgAgaZVW3PEhPbPUEneQMsBUbg4DWswp/6ag08WFUR9uv8xRJv5gHAPKjuB8UvPy5e+s47eM8grJCj5CCd4JmQ52KEQ+CfwYVGJkeK9njsBdm7kce5isOCkVQ/jQPXIwpfKPTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMZKabJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMZKabJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE8FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713679822;
	bh=1VXjrJOoSfdprt+p5slZ+mlWPli0eyLuxv0FBgf43fo=;
	h=To:Subject:From:Date:From;
	b=tMZKabJZqmPxmixR8+RQR+6ZJg6ofEa/pn8guExSq8fMm/XvKg6o0R/qejcifSMQY
	 awSJEV0Ik2eLfCFxLzjfdKmm919F7/5831sp9i+tALa/xX/Oo5pr6oIM15XbZsoOkl
	 mgsIc7BRubK3CdulZBc7raa46C2AHwW7qN6ykFsADg3YU5AcMxCvYW6GTvs5yDbH5D
	 jRhMgf/1N67efOOFyoMVJ0TIVYCHaKOaqjBTEEhYMWnT0C3tabCZ4qaY16uW2jLWP5
	 eK/yoM+9lnXe6XqKAo8DLIhuoqtDU1Q9vEFVizYM0/vlQ/UcDgayh16Nui8jR6cmd3
	 BRhkrX2VGaSwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42D8C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367982277.28678.8972844869066474821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f118eb6e793e804164b7171e6967dfe4e7c819cdb6dc646007fc981c2967ea
Date: Sun, 21 Apr 2024 06:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713679822
