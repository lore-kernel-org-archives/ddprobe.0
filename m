Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35915189515
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724444754; cv=none; b=pvr1Iqjbf338i3UmOK+7ttIKrvm/kJFfAtx1W/s0Fp/CUCfYRQZG+t4gmtOTH5bRWv1mRp0sIi/HPU5zpJNaEFm7SJdxLircoX50mdTUOxoE/hc1knB27aBbIiJ6kqW8Nl6kVjWlwaVcSQRqLdS9kaFYGF77Osdjs+b2HaoRKnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724444754; c=relaxed/simple;
	bh=juoQN1eZ8Q6CQxDWNvROprSdrAxpWdVETRlVEEv5Ozo=;
	h=To:Subject:From:Message-Id:Date; b=h4ogGLXiqvREFWA4b+E2s0CgPquWCtqXLp+F2ste5F0tMK/pzsLCkmPfGyGvrAGi7ZmISTp4NpgIWrbYBN5Ml2EjM/RFUQhvFOx8fRz878QiVuBdyrFlTLY0tHRlPI7QK65FaAJtrHzzHTTLeAk+k0cjWcnTfqhZH0bR3ea5HUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTPaC45s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTPaC45s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EFDC4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724444753;
	bh=juoQN1eZ8Q6CQxDWNvROprSdrAxpWdVETRlVEEv5Ozo=;
	h=To:Subject:From:Date:From;
	b=UTPaC45sZu8pFm2Oa915pxOTKaA/a8COYTn2Zah+4p+SJ9w6JZJMnjH8O2safiPh4
	 jSESyd1Dgxi++6VbhcipFnADLB7GtUkuXSuGIZX5AORv5nX1v5BNqzBy/XULaFcb9V
	 TwnWvGgwbA8QBb5xS+WN/IVYd8xLBsGIkDuQxvR73jZx5yhMlI3r2jIuH04ZfhNCuW
	 zhWUFYxyu8fbj8F5Q5kpV0SlhvZ+cTgUwVXdBRdVWFzomm2VN9pFXhaEZXHWLvcuQQ
	 ii5cldXCLFpidZsGJfMsoJLfzt0JrsgovJRZOH93803kzl3yWyAbjFzugVdIMo0G5r
	 NCgzrw2eEd0wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A94C5321D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444475364.14522.17844167844113817512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12333a3ca80c24a96c9f713815829dcb32a9aa233b6f3d879309a0a4f833f805
Date: Fri, 23 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724444753
