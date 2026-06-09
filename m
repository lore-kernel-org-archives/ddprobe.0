Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D3E3A9616
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781009734; cv=none; b=UBpu5/mCFdpO12gCirBuBCGLzQ/c5BCTbq8Vl00T2lLkNqk4vCSEpdVERkUsGfyywbqqgpI6c4prrW6OVx9coLicKAoUHdnj6lU+D34RcORVK2cA6OzvhCYn/0NLMge9W+8JHAjuTCKWHT8gHx5qqGinFe7KJJV2E6Oi3shUNpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781009734; c=relaxed/simple;
	bh=2458SFiXZM6RG7dWg+r0Irtlj9aI9YV8hpxJoY+um7c=;
	h=To:Subject:From:Message-Id:Date; b=tVuK20pN0yfGhj1u5tD5k15/G+1gVUglKvUNDC+HybEjnSeOPUIHPuuB2vJ8NNT5gGuiF2mW6ZNxkuk7GJPiULZnJ78/dogfPrQIW3JHrtwnQ+ejgZWLN6B3PTG/mnwWDyGNZjsYLtZHKQy3Gaj2fAEuL3dx4tvXG/is7b9uR8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzcYO5zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzcYO5zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EF6C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781009733;
	bh=2458SFiXZM6RG7dWg+r0Irtlj9aI9YV8hpxJoY+um7c=;
	h=To:Subject:From:Date:From;
	b=pzcYO5zkuh2lY8I3UmZxojLGD0QTirEu6auy7Ggbou5SyfgBM6HJweCLk0oxg8Ppp
	 uwHV6IrEoF5IAsGlCbLGKq9HRjWPuumZcMwz5xek2Cxk4bWOMKPezwfPgxyfP3LfoD
	 6HAODtIsIAFc+2r64JHopuI017iAQF/6tsHG6rEtwndplrrWAYowYKB2gIoa3STj97
	 j+OZbF+GgWs652hus3B0GARhgn1lYzqcKodO0hmCT/FCC2PJy7/3HIy31tlmdJvza1
	 zhlD7OOjTbdNMYsxBBpd2HQbnq1gXupVZhMN9bIpBF9sjk1easxryzXo0CphpbLZax
	 XbEjAokE8NPLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6A2CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100973370.28596.15344890593929797302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38c43874e11f977e601dc86cc228d488dc32f58d8c50a6eb5a8c3000d86a6cd
Date: Tue, 09 Jun 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781009733
