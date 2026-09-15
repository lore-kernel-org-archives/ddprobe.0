Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABADC4BB7E2
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789496434; cv=none; b=Q6JJgc4N9om7mBwg9idJmhB9YeSnNzRls10vzVPMCR8c12sV1lS+rQTVn+D5IBZBE38rzPX1mGp/Z0rBsrnCdEIooClnszkH3J6wTK0neFefBYHh6eVz4aUBExTLpdNt2V4ZDM9zZCc2j1CrT8rNIaqBd2gFJkB8YvZWlZkMD4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789496434; c=relaxed/simple;
	bh=fK8PxaUEawsRQQuwRfn8nsbCoB+n/K1M3iaSJq26s2c=;
	h=To:Subject:From:Message-Id:Date; b=g5c7eGgPbLPHuJvwFPTfTtBIIxjICWIA+90g1PAnC8NcEZWwuzXOquneLtr4WjsJxkhPNKDiO+f08EFmeH6VcddEIQbCIs2KoN4k8I5MYEQKNLy9/VbIIK6Nus7rYcvX/R84rcWbvM6OOGG58k1MQyxMbSYvzRUACvJq3ZID89A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crP0VsST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crP0VsST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5A5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789496433;
	bh=fK8PxaUEawsRQQuwRfn8nsbCoB+n/K1M3iaSJq26s2c=;
	h=To:Subject:From:Date:From;
	b=crP0VsST5b9vnKcxbgdEObzb0L6d/f+16hjXbcAs5qnMm8seWFA9UlcV6SirIZYh2
	 p6jW9BDkIJF+8v5c6ggmffNAWoApTh9r2fayAGFYJjNRITlu7fqUky0GXGaRDFueJb
	 wHnNziWYzKo1Jm7Jdnqd6sqtLuBE2HgVABK43gvT0WxVnCO7r4CW1r2NwAlOWRUzM5
	 vV44cLfyRkET+aGWhu/0RtCXl0/bnN5Bf6yE65u/mh7BJ8Vmfp/B0HWkVY/wF7KcnM
	 cPhRAOTlk1FHx7zznFRqxjEWdjV8n0p2wJVZaK51tXip8FgqX2Rg982gxnTe3QD+eF
	 2GUHDv6++DZtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA838C88E7D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949643368.10732.2143790116354316756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4072469aa25af81bfb0a6d41ab3d714852dc8cb94bbad6a1792d01f024337f7d
Date: Tue, 15 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789496433
