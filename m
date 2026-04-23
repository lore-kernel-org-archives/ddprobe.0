Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BB61F3BAC
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776971254; cv=none; b=rRBdkiGptk8ntrHih+VWbdGuMXTexkNGbozl4PbLS+Jz73y/95tmvJnccI4+WwIWSjk8l6AR8zZqj7dMzdd6pKNRrI0iOiLLdAwU+lAXQH13PybF0oWeJfg/11x2GdBjDP3Ktgt0wr7oJgpfnp8Vh3xNrThkDZFyZUBuIrqnPic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776971254; c=relaxed/simple;
	bh=0BRfErz6R2NTR1m0/C7F1IwQEkhiPBqfcy1qzqpREBg=;
	h=To:Subject:From:Message-Id:Date; b=DH+W0BVdF+fstKbGK10O68Bk5Yz/6oqCf+FsVSUIoyttait24HWztwGHz5wFfqzc60nJRgbKs+FIODPYeIZfvwO8mGHFb5osUwBwCFnOEwbBm3JTQ2Apa2ziXW00pUjFJ+B8mOy2tYOPc3jQp8BO7u5Tvj2SjMapD3gIMWlwjRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAIqrkqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAIqrkqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B14C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776971253;
	bh=0BRfErz6R2NTR1m0/C7F1IwQEkhiPBqfcy1qzqpREBg=;
	h=To:Subject:From:Date:From;
	b=gAIqrkqZfPyPqVPk8xKrkZ/OreTcaAM4c0QQv1vlwc0ukQypg4rNglWRCqW8GQeTY
	 TjASzrtJEbApRX0ECJ+JHPD8JxkRz1Gz+m2Yz6ya8NlG5aszBrfkT3n1zk54Xs8PwM
	 WVybJkVZxKIGvfgADaYR0EoKMI6+QErYjG4CETVXt0o7K8Zo7XmtArhZfCtQwtiKSe
	 7xpuGFicUl7k9tdNXuj5FW9XatAj4q6OxlOHZAB9sOknxaYPqY6ECOwGi575vWlFhC
	 uE41Eb9oEM/jzknmdtncGEsj119MvPljU25bvQlEZ1EUiCXNICfHj4dym8xDLaTwkX
	 SWpQ0vYbOVxig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE406FDEE45
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697125370.28998.10276074826453352811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1469d483b163fef3dd9d814c6dd3aac2a386154ac18f21e17acf7bc088c30d3f
Date: Thu, 23 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776971253
