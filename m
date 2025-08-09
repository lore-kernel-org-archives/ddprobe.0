Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE0314F125
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754731194; cv=none; b=FP7S7CREv+xx9byMVCXYZlC4M1ckC94m9g4/B/fMk8PW+1osXAlnL6kbI5Iiq2Ap7LGffrg7suSlUpSGt1erUS2HH5ngevMevBuBt+sdMiE8KaV7HsW6g1gBaVuGqR6OeY9SgcH6tCZg3VusZfqKM76PnPZYZbXT70vGCtXiBXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754731194; c=relaxed/simple;
	bh=nAa8YBVtm7zq00IZ2deXDlnHr5LJld7+AklzchIqbWM=;
	h=To:Subject:From:Message-Id:Date; b=Y6xEizapTFDiWfnCLDpImj8tU4lHPdf5hNxboQwJCWjMnvYA00kWZQwsKIem4h0n8wXSEmSfnOz/pjnEnBRmOBN+4HEL7Vr8gZz+bHFIwFYxld2H1ARMBmL4QvNvUwhRAeIQsVZZVBYrtCtS9kRBuZWtMMPngyy5wMkzrAqhI1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qi9RnUGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qi9RnUGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB32C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754731193;
	bh=nAa8YBVtm7zq00IZ2deXDlnHr5LJld7+AklzchIqbWM=;
	h=To:Subject:From:Date:From;
	b=Qi9RnUGchX7DWknBUNS63b5/2WWe98ufvPtMZbLlpMeRr2zFXWX8ludN6N9UhQgqP
	 4p7b6ZWpFu2s1nR0zDUEEb+QGNtxGsUCDh/fXZM+wkbQ2nGawR3HV2ML3YAcKti6ZQ
	 Z2zpm6Ss2Wy660AaEG803Im77NfMYcgsC4NkUfovFdOPlN66I+TgQy8rriXM1I9BGY
	 qno5Cv0C/kZQ68rxSI/EyNe+ipX32ubM4Y0aDcRbtOYcZvferXaIcnCH+Kj3t7tLWL
	 r6ZoQ7RvGnkNq1CH5ANAMuWtYtTcbEHYrH8vimqGFUtxxiOxPnPnpH5kWZ3KG2USze
	 c04/nS18xpXLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA5AC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473119357.31056.8694630870691360945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d2c1c494eae31baf46468276c1d94b5b3008a306405755863339c255899ba2
Date: Sat, 09 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754731193
