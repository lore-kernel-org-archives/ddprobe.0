Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6963595A
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742351994; cv=none; b=VR+XiFfkgmXesQKGQH41X0K+/t3Sle4TDRj8TDBMS2do0M+qbfPa6UxIbxOz7Lj4mvW068JnDTCpZBMhNBvlsblvM/kNGbP2cofVb4S5wqUs+DRe9XTc3ZaoqfkLVNsgWjwCSUY2eyX4VXy01G7qJ6YrzuwropovhhkET4EbcG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742351994; c=relaxed/simple;
	bh=McAHszhv4EEpgnS+pNqD3fHnSGFW/GZutxy1J05o584=;
	h=To:Subject:From:Message-Id:Date; b=PDqrgYpPCLI59IsaRhsMX2y6jrMNNWLWJ50ezqHezff9WdT3MEnf7KCZ2JV/vMlPOYhwVPWOzyxztXBVcSTxXiJor9NsPq8SNSCdtmn9HT1s/Z2TenYb1EkI7zldfrdtQud1601qMwD3yjspUCltFyZFKWHJz4auZPEPM+f+IT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kf+PxFh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kf+PxFh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB308C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742351993;
	bh=McAHszhv4EEpgnS+pNqD3fHnSGFW/GZutxy1J05o584=;
	h=To:Subject:From:Date:From;
	b=kf+PxFh6a08p73rnxdD53Nqt7Gg016yLc2CA7FTrEX/SOLo3LM+ARENS3frQudlje
	 1WgyDnPpss126xWjWSs0fMdQtUkMJSmvwg4qQOFrBmrlxWV13eHe88tNrvk3UexIEc
	 6rH3jHt4uIWld0YCX0fue2wX/dzUsdZIQRTRZBZWBKMQyD7pNIH00nhOiR2O2nXXdG
	 jzEogHZ1HzseJ2I8SqUlWeu01K3ce9LIgFJ6FegwESwOWZoTwGGUDQt7QzULCiCYu1
	 yXMCURVEJcnx1shTLis4ea4jlNaWxCEXJhtmwsWrVC+f7ao8uWqRhg0QWHKfJGeeEO
	 6Q9ZZ8eIOkDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6ADAC282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235199365.14362.8524767895473059673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0777924b65f22872d57a6a2216b6a4fba9a3580dedb92bfb742d44da48cd3322
Date: Wed, 19 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742351993
