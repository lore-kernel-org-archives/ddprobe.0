Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48159370AF3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781342194; cv=none; b=c74uR+3EN+u2IT+41cbcRevBismQsfq0131Ef/O+Yk8yYFQSKp+XtcrcYhLL3SaFbD1qv7tmkwKR2b0AdD4kqrmhIU4bGgPOsSTx8uWz0EG70jNqw0jVH7gAFuBJHC5s2exwlh79I1led61P3m6CgtZs+Tj6lA9QDTlRTgz1fiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781342194; c=relaxed/simple;
	bh=qeYxmT59kMkMlYjx4kIWiHAsMOw4ebjXQByU2oJUpEc=;
	h=To:Subject:From:Message-Id:Date; b=XDDrsp0J2GqqIeilGZEYbiu2+XC4wcGAEQ1EI5xy0yamyLgh0AsXQbgGnDBhbWwAZCeOMdBj0vZ4fgnmGKlqRnCD3ZVkQ8K3t/564KcrPN1HXOscPe2J5AoLzvV1wAZCSZcm9En3c2ajODhLrK9PWI57/TlGqrzJXRm90fUpDLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI49B4+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI49B4+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B8DC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781342193;
	bh=qeYxmT59kMkMlYjx4kIWiHAsMOw4ebjXQByU2oJUpEc=;
	h=To:Subject:From:Date:From;
	b=cI49B4+csfCWpQmpFqDaBkKnE4jhKuuXGAr7ivvk36jTNnH9hKw7WAtZhEZ4UeMDB
	 QGi2mH6RqFLBa5wyOZU9D9p+Xtb65iIv3lFmcqWUxO2rZ8AjQx90ncVT++IZ0j3YMP
	 ZjMDhgX2VW6+0+8YIPEG8z8cc0lmuhTKZK1AL8/d7QwTH61tenPO3InI2oC2qqUZr4
	 gkiWwoMOECPLI0+14iCBE5ZsMgnMiFFszBVk4+VpphYQ9Co932nU0/iJID2Czhp6Vx
	 K2YBfdbA2kr9ZV2bw2EAdByI4gS/iIDP1+VvKYLGTO3LH2/Idc4GdrLIn5nCha5KtT
	 i0LnOQHE7HgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C3CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134219367.8311.2356080630542797380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e6919c0b2437b918dad4a3600d04607a4dc6fd96d5eec79f5f91b94254e109
Date: Sat, 13 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781342193
