Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A91551004
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719917123; cv=none; b=M2DQMt7ohKpj+v9aCKLzECtnjKZJ5+1XCK0/JO1/yU/dJzzf8R6QHdb5JvRZzbj2TRysxuzeryzyqTzZeuxnft8TdoDSx9YONQG9O7QH9Xrkfnxap3qx74v+iJta7awgyp03Y+iyCZtVpDyG91kfn6+ClVrpRwpxSnfdZuerrJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719917123; c=relaxed/simple;
	bh=o3fCwHrKUFuIT+FjupFsPIxDSGM+ASy+4webtecLhTA=;
	h=To:Subject:From:Message-Id:Date; b=Nw4v1iF7pzwFj3FPN1spUrKkuuhhdSPIzvaUD+zox34Q87uuIPuDcmhcjA4ozkal+q2ZIU3hcCQAOyso7jCfGhrnonsPJYGSz6cbtCF5/zIYmNAo1v4n0NVRDqKuIN5ZznG+vbwlDl/YPjdfOqGvp6T4OKsbFpW95cnzlfa6b10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gtyy6ZFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gtyy6ZFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E54A6C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719917122;
	bh=o3fCwHrKUFuIT+FjupFsPIxDSGM+ASy+4webtecLhTA=;
	h=To:Subject:From:Date:From;
	b=Gtyy6ZFiswVkHjf3/1wyogd0/tAqNLzF2QaqWBcOG1OlkmcF+dSvTucsmHxZqlWIh
	 i34JgR7SZ3RCzckhLyPK5qZZiJF6EYhpJxinWF/r0PdCvkq1PJFqW5FVghW/jZGUF8
	 TufFgxZM8RYei1ZEibBS1pLZjw0kQ3Ibw0pI1yGnBtFnaLY9AXo+kPcQhXpS71rdCH
	 5ogD+H3XgPsLzPvuaHZ7Q3naV0oUA/KkiciyvV6dHd35VnC9AodZ7mZFdKpF64dki4
	 eIXGmP666+ycI+LC7Qj0dCL+88pncCH2Hhk9MykOXeLlTLrw216EoVVYSzq+3ePAZr
	 C7L8qbVtRRYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF752C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991712280.15960.3219691883632302907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca94cd17191732b62ab4deafe0666f0cdafa1e2d4690e60a4415bd2542a16f9
Date: Tue, 02 Jul 2024 10:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719917122
