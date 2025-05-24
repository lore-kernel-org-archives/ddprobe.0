Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C84A5FEE6
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748126994; cv=none; b=SuOkpYSjrFCldh3ZVR9u/GmD0vuibCvxVsMwMb9VKjiZDqN/0HJ4b7Ya1+Y/riuNnJsIh7mVnT8EwWdlXxa9B9RrJEGEAk9JVA9mx+Z5DPqE8HpgBC7LTME+vMXoUvqHIohcTedQghLrvoni+PqbH5eTGjJBf5V0bfv4CJGvmn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748126994; c=relaxed/simple;
	bh=XPd8HGteNHM/PpFrbE/bUiJtL8WHZiTIeekdSeDj1U4=;
	h=To:Subject:From:Message-Id:Date; b=o37izXhXXion7+rtlJ9ZJK6Mij7q/X7Dpsmd+uFovI6O+M0j4U+qBuQAAB66g/rkj63aBgUTfdxyYA0hUlKEnh3DTyI7Hx+jIPlh8VX6gMMVHmmlIT7tLdueW7Aq8iRpbteOscZ/99VKiquOQLA2l09t4lhScebcAg+iCxhIt3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=az5ro462; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="az5ro462"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C6AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748126993;
	bh=XPd8HGteNHM/PpFrbE/bUiJtL8WHZiTIeekdSeDj1U4=;
	h=To:Subject:From:Date:From;
	b=az5ro462KcD1EagfLHheVnJxg4wzFKG/oktZojNhA+QFrApmPu6MLm/cOMK6P+VA5
	 LF1NlNvrHkoGgimlS8q0D6+m7YpaZwACvmCgqwbZ8Cf88Wl9xuXRlBIRVTwnaOO5je
	 qsCerzvFqtX992J7HgeNaQxG4D5BAA5br3gvGbb6yzu2MQKNmHNCwkGjpDbDpaDzvJ
	 qEVLzBhF1beOn78DwMfKo5i8fKcVogBlEoUaFECieAk6iKIESnj0wolJ1gGFo97FGl
	 lBrcycWKdgGMbK/ulHMGkLjGOc+3wp07vXIqKxZsOvxwaCyl9yprQh8WNuAp/JaPHD
	 j4k3FnI0bAHKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9341DC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812699357.17452.1185107118207258699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8666e9a56c5b9db79cfa3883163523895abb2a4cc1058a12ec8bcf873d281013
Date: Sat, 24 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748126993
