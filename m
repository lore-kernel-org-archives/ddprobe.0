Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089B9219EA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721994354; cv=none; b=unM0isXTqYg6aEAAODDRhp9p6plC//CZxxPu04TEhYRK+yotgE3dKpaxjmRYpaCDtbQnolXJq6GqTK/8Y7EAA48dqA3NJtxTseNTsbKh27A4rg06VHl5Q9kvxWnhQ/Wywm5nRLM15oucgyJ4q7VmBJeXrCLs098uXuqL8Em5/og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721994354; c=relaxed/simple;
	bh=HwIyCMMijlwGaM2UeJvLsImHP/cyYpciTXZqk4ZcbXM=;
	h=To:Subject:From:Message-Id:Date; b=A24CGdwjrNOoXpFDspdZv6aixdpmqftPiKif4auu9eYl2ECRoOSI60V4BnTSKFPcjH6fYAHxlb8w1T56vbMR8febQmQJuPxE+BCgMb9iv0f46UOK9j+ehFg34bBsMBtnkbd4b3OhM7Hgzd6iXVShQ99u+lhFNTFapxTqrchhwVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rx04InTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rx04InTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD1FC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721994353;
	bh=HwIyCMMijlwGaM2UeJvLsImHP/cyYpciTXZqk4ZcbXM=;
	h=To:Subject:From:Date:From;
	b=Rx04InTZ24pwXdS0K3ewRxX8YiYYdwTgEFW6GrV+uJa6vr/kxDG5MaETGAtWya6ok
	 kAMdpjq0ZuNpGebfg3D1fAFdvXWYfxNJeAmnColkb/7jWWhKMZSH1WDz36KGrEotAb
	 1MmlZ6GhcxcN6KwLffRWpgnP6fAuDD+VIfGYYOFAW1Vx025FnryYfuq4rtX4PmA9Za
	 xspgndlkUS5rssIzsdCbWTnHO2DqVUQ6+gIbDaG5JRm5GcHuGYfJUiwl4Z/fzYcIhi
	 5vXd3zZ38FJliO5AO/NjDXd7Ea7AGOTWbZ84B3q7R2pxPldgpoq0jci9H7C1G9A+g7
	 wpNtwAYg6ocJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95063C3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199435360.1482.3625915934128384428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ffb661b67d0d2c23d6d2f120405bbc521d5e42bc072f0db808a12fa6aafc58
Date: Fri, 26 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721994353
