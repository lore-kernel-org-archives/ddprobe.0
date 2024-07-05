Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5327918D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720141523; cv=none; b=cVKnYG9AxfFVNZjocf1jlzH4/e9nEbBIt004gdMVR92XRMb/wgCPWpo2NlucWGgf9hwLeytNNg9DbFy/U4iTzmNBiQimbxWWhJEa+hfjzHebZL+TbOIJPSBpd+/F6vk+7kIIkWthmoDXaOl0UT6unUNkwaPhkwT4TPNSMFBc4Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720141523; c=relaxed/simple;
	bh=YetiXA1OcJJo/2iDvCQW3si704mGCXc0cqBvoccFjrg=;
	h=To:Subject:From:Message-Id:Date; b=XQztGBtQyjj6cS9WFL5N5F6wmDQaO0j2huj17I2t14Cu+5N1uMWtmtJgiTb6pnBNV+u+evFxAjf4Fkm9ykfTrwW/lW6VpeT0EZNNEdcXxP014AIgmIKLOPmJkFwZJQZTIiGdfo7DA4Rdj2oF4Pd7UXkaNPIdke4rtfmB+HWS4HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVzbKB0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVzbKB0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3268C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720141522;
	bh=YetiXA1OcJJo/2iDvCQW3si704mGCXc0cqBvoccFjrg=;
	h=To:Subject:From:Date:From;
	b=IVzbKB0SlDwWdQZHfGveN+X0bIzIoU9ai6GRJESsD9L0Um+RnUfgNX6fVanbFzdGs
	 23BCgxtd2Kn8meDjUVduiIoeQoy0rWorrwBv9iowLrbAOzvDjOtwQthikc2e6Thobc
	 alqUWUUMx3dhqRPpgaceaCGMOFKDP/MAcGJCNppcriDOowUAXBrvUsNEp+J8AVFNkq
	 qV0QuQediwb3InnSaBbh0kcK9RtqMsbYo69+vTDtaKSTMhAgbXvdCCI03JTsZ3BCnb
	 i47KQfcr4Mn0+7jogK7pO9rfe156RQjpZrzTMw4ct/dXDtBw1eUx4khQdeW1wy7fi2
	 B0Hry3VtomzPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA4CC30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014152275.16472.9565020359798540521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9ca40b92d725b5e0b0bd5693aad46b6bd670d5372d81f0c55d47bc626a8951
Date: Fri, 05 Jul 2024 01:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720141522
