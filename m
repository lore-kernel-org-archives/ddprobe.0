Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D625339708
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765868574; cv=none; b=NydXk7rc++lzvNEHSbkBlOozVBwBappI3svn7mlomBryABeCeugfqBSZ5XOqo63Hly+uEZ454YKAfOXQhgSces8Fygx9ss4dtSHnoWlXrXtqCBKWtJR5l0tFoMYZ7dH4yMYtksogpnshsSZxWMyacEcBahDsmngVVfMbQpYTD/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765868574; c=relaxed/simple;
	bh=sCEOS9BF7/nTJyio8wW4hPQjvEJamtGGvPOv0W8PmmU=;
	h=To:Subject:From:Message-Id:Date; b=NpcMnwDwiaxeaXR2V43l68G3fuUFglB3vh4Crcreya6B60rGMnvK766j+r9pstuLu0SZ5qp7uLYjhStWyXetX0XuH39RUA+IN+A92lUz43WPgOthX7Sagl4oPxgTjaNEOo79Y3cQBN+b5q+ZqN6Ra+amgF8eIYU6aYw2WICyuug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDGPjVm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDGPjVm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4604C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765868573;
	bh=sCEOS9BF7/nTJyio8wW4hPQjvEJamtGGvPOv0W8PmmU=;
	h=To:Subject:From:Date:From;
	b=bDGPjVm5C/gnt9MCMKEPbHAUjDiQDqJscKG3bvXAl31GB/zu0yJURK9phVczbJO+u
	 ItoWqCMQLlIQzNIGyzmkuKeKzUp9/Ec0apjdnUAPAXXpf+19ThHN7eE1vpCcF7O3VT
	 cb8p22S3Id7DV2Pz4jnndqPBaXvuTfVHcp651LU+52htpK9UOnus6SPMcrl2ACvd36
	 wrlr3WZk9X3nqPgMA8oyq0GemVkHefkI8oeyM30Od/g1IBTEm2PkwzMlweVp1R4Q3P
	 EqqoDo3ULqVFmvs3fcRSoSqNxeozxNSsjxu5RlbZ2g9fKs8GN5YNZ9NXHRCTGrJyk4
	 /FB+vYdKsrCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3DD5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586857358.5895.6117211834649574294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6c15cbf92074de2c865db4f6551d09f652482c015570829b10a60d7dee9a70
Date: Tue, 16 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765868573
