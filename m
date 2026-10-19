Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F7E35200C
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792380634; cv=none; b=OaOaB4c+05pGi7ZW56ZdJGysPKsOFpiw4lVkVLqXw7vOuXeu8Nf5V3hswszvE5Nvdo1UhbzZHzX7uZkbZMx/ou2gNfxfF9/Te9DVcuKrYbztdm4eSZjWvwBUYEPB1hHazFn4wvRgPb7e4WARx7E0IYFkszn0CUCEQE+KkPZPVp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792380634; c=relaxed/simple;
	bh=JTYE5v1B5n+w440PNGM9s8sapMG8L8m77VINsLnI5dM=;
	h=To:Subject:From:Message-Id:Date; b=t/OUsk9TG1hKgxZNiPo8BqaSOk95tIORNPp99tKbUkMiRjX54L55uSHZ/6LQIAjFYJx9hPHtWNWpIjlrHi/sd4jiykBDmvi/F5pkmdRoJee7G4SS/tXsGuldNqwmCdeAC0OpDUqA/k9V589dDbLhg//ejAKGxj9XcUtRWfnmLes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY55a/ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY55a/ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD05C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792380634;
	bh=JTYE5v1B5n+w440PNGM9s8sapMG8L8m77VINsLnI5dM=;
	h=To:Subject:From:Date:From;
	b=nY55a/ld+o0bYlz2ohrcBMGDqV/sCyw+GGlQZiAXX9j51SU+/KQcfVjdnvKDeqNyg
	 dHX8BEunI/iOSkeLwzVqTuY23Jgh3M/JG3PY5VsbKelqGoZbqB5EIwINRaI7xV4Tic
	 m6O2bhGqe7ZGxRobDplUT5jm0F98WxuHv+hcKITO7CPrFloi323nvfSUDTWLAMzDCU
	 vJ2uKzVaLKq4kvogj8zQv5XtM4EmRnNj49U0vc7eNMzVKbzpR+qSMd5M4IEhNSFof9
	 f4cM8zeTuuPicGBcYsfZWGpQjdJBLcCimCKBcR71HT5cgx9FENrtw2EkftGA3mzO5B
	 WijFnyY9IJUOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA93DCCA46C
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238063373.30883.12931757894954957933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992cb4ae3481f157fb4b64d6d08e2d89eac4dac8b910880aa960d222c547c0e1
Date: Mon, 19 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792380633
