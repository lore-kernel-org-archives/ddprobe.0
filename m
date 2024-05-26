Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1E81A2C02
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716702863; cv=none; b=Ty6AajuzH778XyuAtsERMkWp30nqRu9GgNP+W69HMV1dZiawF7cdytz++Zk9G5loPnJJvNyqlf+1f0XlWi37AKDG7DTk/gQ61WCw9ZrKXtMLlIu5j8CilhNh/E6uBVP+Dc0nUd6kX1O35uviWf7FIrosM8A0X2I37lvQ7VsKLeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716702863; c=relaxed/simple;
	bh=LBMkDJzYYFRogTRmzJ63Pyyxp/SNOxt/NXO+lIb0Kn0=;
	h=To:Subject:From:Message-Id:Date; b=lUm3YwjDkmUSj5ktL2pwmyLn8QxFPDn/bwo1Z+wiZQWnmkV7qU0FArqKjXaAmFn7KKCR0/MKCAkXx4crtbSm5n8gn4mXdmTo8sfFO0RQwe8UR6RJeQGy6aok80OXQl/tBdOb596YG4rK8SMGCwfxUnVa9Mk7oofvOXMKBdzgDH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDTiurDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDTiurDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5BAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716702862;
	bh=LBMkDJzYYFRogTRmzJ63Pyyxp/SNOxt/NXO+lIb0Kn0=;
	h=To:Subject:From:Date:From;
	b=YDTiurDXW8+9WCQizms2dXPvqHQ1jVczFFhvFzlD74xxKsZ3YWq3VujKUxvU4Zwl3
	 Jf0sIzzQ8FjZWp3yN+gacMaYADrT0SW3DTG9dlbtpm2NH3Z8gfwIDDbYsCNlA8pXhH
	 JuEro+ivAS6pxj7u7V36wgo0ynKiHilN5Ce1zVBKHN8UVpModMMtTt2TUzzcN1aw6G
	 N7uNPqFTHyPNq28M1MzhXDAdcU52o4G/06qc75u6NIRv+n9gk4FH3LXYQqDHSIslPJ
	 7QEbuEz5+PAiYACraQU6OsJe7LiSZHxff47x2PFmla3KMmWwIUQFLByW2+UfcIUYmt
	 gdK4vO2Yf0n5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6F6C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670286278.1725.8232450258511040646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fe1c68d90f46ef7e5847ec37c1c864df52529a12ad89a33755e36b572e5afe
Date: Sun, 26 May 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716702862
