Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A74390209
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787986834; cv=none; b=pyfWVf7D1skytyL/JJHgu+DTHqvIb/dZkfFU6bOEoec2vM4wkiUVK+EUdL4xoGeJIla9trZ4yenSPzgcdc9kwcegkbdvO4njeKQ2kXtJ6ICBbsX/CciW/3zj+p6D4BJLz/xGoENmgh1/QlgOuXQmeHRPHTdYdM/UznuZr7uIdsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787986834; c=relaxed/simple;
	bh=UvSunJif1ASnkBo6eMVSXceTOQV3ZyL8pXxB4sDl3aE=;
	h=To:Subject:From:Message-Id:Date; b=NIMYK4AgJBQkETFVL/1m50xu/pkVXfUFNjgHpXSqKXOaW/lBFIvhjppbgD5sIcqzHHilMcOzmQfPbvFGbKW9NSZv+mS1VE+8cUuyVZn0F6Ouk8is8Yn/PiE13grRTt+LrpuQBO0whLE3YUaCFge2NqxDH+WWHj3cMoOOwqxdYyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEVnwMqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEVnwMqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59DAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787986833;
	bh=UvSunJif1ASnkBo6eMVSXceTOQV3ZyL8pXxB4sDl3aE=;
	h=To:Subject:From:Date:From;
	b=TEVnwMqc27YOjRP3LtTTxMK3BTj6r0bLd7Gfm8IVyy0Y8CVnAEnAAJ5m6zndO7fyn
	 F5a7cTzVK5WOo4P35Qoa23zrGuojXIhqggfPprlX1N47DK3VW1ltnNeSUY9L5i/Hmk
	 MD/UPZn8eSx/RVf8Ks/bz+5kGUQrWs6z0AYKnXllfxFSAIrtM2DEMZb6500uKZv3NY
	 qhn/lHRnNMKU/PRN75o4g7uALAqZUhv2GVyyn9KN41u4u3j5zMW8pcFdB5qGAPPb7L
	 rCIa8LfWBDDi07TTt7C1z7UsiEh9RN8PKLJBqMV2zRW6TyFc27d7hshNqpKaHld/lU
	 UquisMpgs4jFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE533C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798683369.9776.2896657398237678850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903b2389da2ec67f8af9a3bfbcf13ac3e6225d39e4e9c9630a1de15fa69e0242
Date: Sat, 29 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787986833
