Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F883E834F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782812914; cv=none; b=ZC06yN4dqDBQJUEPR+P0U4PISoVyft9d+rv/NHQMm5sLzzVxzj0xOPXYTTjFGvrVVz/0ZxPTezgP6N/P52E0jJFEcXVLliuTQO/3FF687DfXXljIunRoTlLJ8maxA8CAoZCxEm+74Ll3r6EKkAdNPzvdXHgL1B+YqdyDh+IKOdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782812914; c=relaxed/simple;
	bh=IrPikq7vpPx7PFyIDBDlpPIR0v18vqTTMg1bTcmNTto=;
	h=To:Subject:From:Message-Id:Date; b=jEQQ5xfwoLANtHj7eQtIGNL363RGtzKSGLpZu+t8eFlQoKoZUt6iwPe1zF9HHnK4CSB+/pmKrEVeu7ccC4wNOuvteRLrBYiDWk17VufucWmjhAPAUqDS0RjItW+gRB7cjSmF55N7Xby+LhLlkPRKYLI2M/YodWUlbl6p3ZNKltM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbZKps9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbZKps9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71E7C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782812913;
	bh=IrPikq7vpPx7PFyIDBDlpPIR0v18vqTTMg1bTcmNTto=;
	h=To:Subject:From:Date:From;
	b=DbZKps9IoizIQLk7rCaCX2MhSO0w2V8FkIxew3P6UD9MSbWB0Ct4ML4HJEdj9ULAU
	 bDNnADUkIPvaET2p/FYOpZGlnwwcyScOcfUsxXDAhUMLpJCYM0PmRnvEaN5ruu+Q4y
	 fpqK1D0AqF9loFfZORhgp7lDFNePgMIagx7hV7UxQU1rtn1RDC5BW17WSzgnqNJvnb
	 c0NRSJxgH3V55NE4msMlU4Y4EPll8XYt/jFGFv6mf/0g2K1TRudb2e1lmC9Kggle6H
	 9BpDB81UeH+g4wr4FhBZWXWox9dZRv/pmMVuaw2PeU3t72d8ZTY5ZxsQ8b3xgl90jW
	 fJsLAnkGi+bUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2CEC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281291368.20841.2579719392002004243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4fcef97828d5b39de28e2f64bdd4afbb60d2b5cfc7de76adfc2be7c020537e
Date: Tue, 30 Jun 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782812913
