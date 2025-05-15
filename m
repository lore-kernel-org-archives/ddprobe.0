Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24332185B67
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747324794; cv=none; b=YBq0NfEFHj4OnaoqJSIAiOqVT91Fc7SghEHZw299Tcd9RJUT2b4J2lLwr8V9XR6ZWX3z5UOjgw6icagd03vud98ZXBZEPiJRY2sgmt3BkGwrJYiL5GVtX3nwdRp+tP6cIdm348kGjtUgRarghJHRBeKNS8wdsCvfpR8Ik4Iflpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747324794; c=relaxed/simple;
	bh=xf4/VGeuCTChlbn5tuDN1BXUBpRpMoxIEuo4YY9N3RI=;
	h=To:Subject:From:Message-Id:Date; b=lFwDxGlK8XtlbdOuJQvN3XfamMY3vNSUV2AM3VodZ7Ecz1Wl5+TWjRoAddK8080DrM3TC8Koip4N8148Cjlv529Ad+RQHCQwe7iG3eiPi85I1Ri0ESTV1534whpPS15fyitHaFxPSNRw4GCDum+kvhFL8+KPmnucuuuyDtiZrs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYmMbfPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYmMbfPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAD9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747324793;
	bh=xf4/VGeuCTChlbn5tuDN1BXUBpRpMoxIEuo4YY9N3RI=;
	h=To:Subject:From:Date:From;
	b=HYmMbfPbrQccplsgeWNuzYDcT12pP62X9ge6FcMYFa0oXy2NypSWGZ2CEYxCFamxM
	 ESQKTnM010qABC8ysLUXXaE6/Uzs6/lZIyGwsePwa8Mu4LFWA6AsYcJLS9WNKR6duW
	 vz2nOFr+8fXgjqLkbTqNU8BSg58ISdPMaw1WUNGlIEI/WW0OvGtQUjH6x9xCXw1S9F
	 ej6FvZ6gTYRjk84/NtCnUPCut0hQI3lideuSZlwiWGP6K2EBxn0H9nhDFlu6j5rXQK
	 thK6n8owbBq3xedleDNDLf52vJqt0novT2jHQHGc24yREFir07hbzV5O4bxtpaRQjn
	 pkY8025X0WvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3BC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732479357.30612.4347458431388223952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a855355ca64b89e43e09be7d320928287a5dd822b10e3aefcc2b1efbeb620df8
Date: Thu, 15 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747324793
