Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9F32ED848
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771166694; cv=none; b=awcwETfYPN578nQ6dI70f90Ws3sDk3ehmH6nOhf4CGcKZwgytZUzIvoIaNcvTX2XwkKqb2nkyJluTaeT5Ngrl0gI/VbYXdUXdEhf7t5qLLU3jL3F3pw/xmjx0L+TBFnWJEV97O+xuRD/Xfp5jpv0oYH1RKmmBiRZKT/A62WZExw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771166694; c=relaxed/simple;
	bh=ISHELT8+8VkeslhKtmwhrMPXbrQ4vWiqIkDVfL21Y2M=;
	h=To:Subject:From:Message-Id:Date; b=uKJM/iyIuwmQ80sbg16teWeaY8oob0ADwcy8gA7cguJP5rpZmdq2F7BTMPLmVcJ91i4fBP3FNdwJ8K5hmyTn381+79Pa0ZLTYvrcHY3ak/H7FHOZHL5NRzp7AieulXsuwuzY3FCEogoaLv6tqZIYRY8B5o7MhS1Igx0fdSQCGVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPGrzH3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPGrzH3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC226C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771166693;
	bh=ISHELT8+8VkeslhKtmwhrMPXbrQ4vWiqIkDVfL21Y2M=;
	h=To:Subject:From:Date:From;
	b=uPGrzH3xjBevMGD/Ch6Qg9d2vRZBr4dpkl6WZJ9q67JYb5p5U9ARbW4dbStqFfw6R
	 DsFx30QNegaUyU1msxdVRHgaom28YgwKTrQaQET1UrkV9Iqg6ez9OarhKLbggrI0yf
	 FWp+auHeQC2s91t9bbQEfN9ZITkA1A8V0Hu03RdXbTz3/aTKrcIDpW8FGy1wGVXJSZ
	 yzQCY4O1d77B6oKb9F73EVNcjGzpRZm3o+iYfXMD2tYhHSlRFgheAojlY3vsrx3cDT
	 cRihLNkXvDjefp3avr0Kjc3Vlsk66y48IE8wRxc+JyANaNKjaxsIpfX768efBPbOU4
	 NXTT9lajjoHaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FFEEF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116669361.11602.270666091519069775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce89dc05afd37b7d89e96687c8cb6fb8f84896428458082fbce8e3a1fcdf4489
Date: Sun, 15 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771166693
