Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFD43A1CC
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707149297; cv=none; b=jTnIMlLy5Xe/RYbCfRMnXxv6aLoMMQ88rVTbeKc5PkEK/MS8oLWnJ20OjoVxKxAai8dh0GkAQ9LdSLvm/v76tMvPFxuwNIqXJYUfBNrR1h5mamu8ko7F9jj908roQKG7iwWMF9rvzthFxpnEXbQby/U9oqM2uHouX0Rk/zRA3mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707149297; c=relaxed/simple;
	bh=5DHlLmO8avTQJvotoPUk12Ubc9gRuocm6fho62/JOBc=;
	h=To:Subject:From:Message-Id:Date; b=qla0gnKWE4uKLpdGMQU5w+7FNNo+HHXb8Jdey3EwTkfskO6JGOgjUb4Dh44+l+rcvy5/WGis/NII9hqhJDxiHI4znfQJUtphcOUdZsRwSkPKBojBFehRU+gcs8YZLQaI/DlWqxbS9hvYtM01ieO/KSI4fbYkH5V3W0c9iBIjWnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu4TQ0hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu4TQ0hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81182C433F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707149296;
	bh=5DHlLmO8avTQJvotoPUk12Ubc9gRuocm6fho62/JOBc=;
	h=To:Subject:From:Date:From;
	b=Xu4TQ0hxUAXl168B6ptx4WHlI/GLzNfoqVz1t1f7BQ7njd1k9Puf92c0nj47nhXYo
	 wLpRGPvnv7hDPYlLd5kuPvxex+A9dXYNt4mHrm/uq6ZbNexsB8f6QnNR0EJxnU5Q8b
	 oQH9qvm0Vkw98Ka6AFBrsP1OtUmf08UAbZCmTTV7HSunIBr5p7gRHYHEmTtmTC5hT5
	 lj40//RFYjwF+XscuTadEA5d1Y+XQn6koG8RYYeu8JdXBAQfnX75t97bl4W9dmXFpP
	 aUXYy2UProqGy8iC3OGnVrbZGGSq286qs3biN4Pq6PE+2GfrTvTSnL3wJZKwsrkk49
	 wfLlBB08Z9wRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C8AC4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170714929640.15111.11425674556047421631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9354a1215252c295341af75e849095b155870300f8baeab0555b85841f4837
Date: Mon, 05 Feb 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707149296
