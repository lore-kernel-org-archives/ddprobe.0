Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2057F2FF644
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759496994; cv=none; b=jLkEHSzUrhmvZxw0OfClT1Lr5u+jQ6Yqf4rDQzHcaA9fGrd2qhAolPs17Bu4dHxvtqLj+E4AcAdQHQw4PKAVZwb22WPUZnov+ba3HBE5WgRe107L0NXuZGLzLiUyh73NHsB4CL971kZd98YoDe+mtLhIuraMAHFxai/fm4YWgGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759496994; c=relaxed/simple;
	bh=qV+hEHfRWQk//htfbMgReNOVrDt9owlmL13uy4avbOE=;
	h=To:Subject:From:Message-Id:Date; b=fIaOfU5Kg9mhXqcLNWEnQHESEVk3OhcpgX6IpGQRceV0AjQ6lFk9tGp5hWE+HMWSDTbSoBWkJiOUpXW3Md4dgzhLTuKu0Al8Q4G/1wEVi5i0tefhOnWhqLW0w3QIe2D3HlyBfQGrq9ILwzGpEcr1Hf8kQ6CtYQO1VfCBdQXBxPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtHEHT1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtHEHT1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD5C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759496993;
	bh=qV+hEHfRWQk//htfbMgReNOVrDt9owlmL13uy4avbOE=;
	h=To:Subject:From:Date:From;
	b=gtHEHT1UGGpdqE0s4WlR9dsBwM8SdO7Fqjq7kBIo+9KybfoeZs2rPu0sZ1cDe59m2
	 OHtNhNh9uSBxYE2dVIisRuJH/vXhqjATisIVy0OJJIGZFdR4eje86nhB0jbI8mm8CJ
	 x5/VLBr/WwVsAx62iujI+Qj3bm0R0lOuFeoE+OLQa2A2na46ey5PAsEMuIKuH7vUXe
	 eYQUUNgxZTS2ZD0Ke7JS6Wo/DrtzWxdDByKlfP5qio4aFIZbUTtvUyBCzLHpLKcMSv
	 DcMjcuXILGRekF0qmxnESfX610Y5FSdBHCZwKsMdAc2ZnDlfB1gSfw5Lca7opbJV1X
	 SUF9U4ot0fzuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B6CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949699357.24096.11475536112240921947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca35f9593573e15f73f9f718cf0b74f34005318ceb89ccde951fffb4b314356
Date: Fri, 03 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759496993
