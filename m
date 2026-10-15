Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643A74A92C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792050634; cv=none; b=PRwXvSF7d9A2RY+4l0WUTKOw3jqdqoKawQ1J9giNltS7YcgjzlF3igy5CD8cig2Tnf7eF3mJrWDYJl0TuOvxu+qU7pcjy0E/pflR8pBnPjh89v2huUJWJuMlcMHlv6apHxzgRNh+Qi65wLbzu5WyU2Li82RoUlwadVRby2k0Hu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792050634; c=relaxed/simple;
	bh=sv5GSyJTIm9rje05e/YXOFR89jV0iVBSpUpBvPmkW/E=;
	h=To:Subject:From:Message-Id:Date; b=Js/NeYKB5wYippFv03Pljlqr8uNZmqLeKAQvBIuFjr8YsecW6o7QkuSXQNLyBkPFcbn591LAiDK22ovL6W7cUCWqkz2OXuiRoUcKnV8Qt3878xYQr2aXVHw9y2vr6sItb5naOoHjQzpOjf3G5hpKHUqg8EEQoWJdc/rmjuxi2Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcFH47ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcFH47ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC069C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792050633;
	bh=sv5GSyJTIm9rje05e/YXOFR89jV0iVBSpUpBvPmkW/E=;
	h=To:Subject:From:Date:From;
	b=kcFH47juufTed9vPUB4x9puMSuZrqoTJ2SL2jcJPdVkFGvlSe10CAmzOWamZVSPUC
	 bViJvJ8iME3AjIm+7k8uc/ew6NNb1QUE9HtU9OD8yJR5vYuiqrG5w0IBnSvvZuW8WC
	 9SHrfK2iC3VmwW195iuBIKucGuzA7OOR+sO0I9DCl2VfoRHF5+ZwMo4RrhG1fJaAhm
	 DWxvV33+021EvqbeEFRlvr0Bz5xxGd39n9ojW9OwBDuChPBKVhAacbuYxHkUVDjBdg
	 QVuY/s2TlLHNXW6FgDGiYTGKCxCEVCUxfTmh0gQfMqOZOu2oPj/5Whg0tea9o82C07
	 r4CVMDN1GyHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9785CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205063368.23588.6655371620383556855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840328c217a808620ffea8f1a4c19000ce8efd8c4b3fa24819f75548be8683ba
Date: Thu, 15 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792050633
