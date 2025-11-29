Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2250416EB42
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764387774; cv=none; b=R+N3KGbFchYYrJOf7T/DrPvvhoJyvS5uo+22RSu5XsU5cNLDxu2b+1691fNA8+DoOnrfI4LnR2t/CR0qPexB+S/iNq4El2kb3r7NgneIOVdlBD/Nv27ZldzdC9JyJrxVhuN+HXZwrMkF9hRQ8ggeWwYI3G34ybZZFJveKGpnzG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764387774; c=relaxed/simple;
	bh=RQwJ82YpNg/hoWtLO6+ut6FFVoSNihJ/1X4j+Busd+Y=;
	h=To:Subject:From:Message-Id:Date; b=BdzBFVR+42NXS1tRdK9mv55fbnVaS79sLKpa5ARJCI+ordP2oNp8UfHHAkZSlTA34DdFN9404qCtTK29oYeanHWVTakBSH5MvSmJ7AEnC3JCjjAndu32zmAc/0/HWV9od29b2YX7qvyNgl4lSvJX7B5xiHf+eaxaagIf5v1GV68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DX9Esnec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DX9Esnec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764387773;
	bh=RQwJ82YpNg/hoWtLO6+ut6FFVoSNihJ/1X4j+Busd+Y=;
	h=To:Subject:From:Date:From;
	b=DX9Esnec8g76ft+NdAzV8KWaOAiu0xTHbjer5g7kUjfrJKx6Csi8ieQLd23+EM+Gd
	 xoiXCJe5U5YvY1fpUtC51liAQYTienZCtmlZr9hEPYUgHDeA8afOmV4hOOobcBGjbF
	 i/I6ufrqbcSSVBI5i6rqAs3e/zbmp/DNYlEP53e2M/KR7c1Th4HZ68lxtOYeBOMNrO
	 HWEtr8X6I4/LAoBKBW9sGqG0+KQPhKDa/47MJLjxqHvmMM9kUufrl09FSlc873NYHd
	 uC9MYCKyPYFzi5hooxn/T9XQrf2ktjMHHLFrEzM0+fvtXxlDgoiLF7kTpd6h9ZggtR
	 WF265TU/TNOZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935CDD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438777359.10014.17782638775255622359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dcf2bccf478f50c0986f440755f192403bb04aa5ae13a099339a7a8b32fb8f
Date: Sat, 29 Nov 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764387773
