Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0889678F3E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766288634; cv=none; b=c7JkdAIO1P5fpgMga18YfcgoCZZo8AzjCRTnxRQgR38A9NHrAWiEdQnD98RyS2R0GV9CD8AkxPwwQ3aL72cNzHOiFhgHG/IoOY6DO0vkl1MItTRycPijlVEWfcVMCp1e+kEgcbRKLUM2/SQuljyYa5QwyiEp+xzu0NjpzQJPfRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766288634; c=relaxed/simple;
	bh=DNAdQ8NBNsTzmZy4JE3FGNiY5AZExP34XIOarJovFu8=;
	h=To:Subject:From:Message-Id:Date; b=Kju8J5GEBLO4ethzMpAwsmhDa5aizmcYKzfdVmisBtY0VrbTTyxuNl3lghonHNs1+AKG1mrMXFUAYlGmVfLW5fRfzaB0h9loAAWEZCBrhhHxx4g61WI3rFiRXlUqgw2FCxQWAaKIovuuydXgoM8o1DMAeau27peFMHoyGQB1xGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn4iO5Sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn4iO5Sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C3EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766288633;
	bh=DNAdQ8NBNsTzmZy4JE3FGNiY5AZExP34XIOarJovFu8=;
	h=To:Subject:From:Date:From;
	b=Bn4iO5SvgT0yBSxp8osQEhww6dKBoUfSedu2J9oSc/Vj7dTCX388kltLYsdvW7CdE
	 Qt/318O5eb3wxCcwRW8/fBCKFKaMhraxDUfyqORCLMzJDeXowW5dxlUCrABntxe7d4
	 HD88uOasFzOMZSpACi76H4qjKeZEmdqENcgTy+X0L1MWiw3ttmODTfqe/uv6aZcFwS
	 c+5EmSSAdf/khaCU6nYugNUp29h0yV7I+B4WlaEHth7s1MNLEfsJzD4Lz9Lw7cDYPm
	 4d8e7DU+01CXOX4gSYFd5SWbxPcEoyrt2nT5F1bSw0kBVxxFIVisH1KGx9aDOZ0nCz
	 dNuITrnbXssag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F5D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628863358.28152.16761687845602376954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8c392a76a2dab1d600ee35bc42865bf5c145c88397f06b4eee9aefe381759f
Date: Sun, 21 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766288633
