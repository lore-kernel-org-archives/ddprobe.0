Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4032118024
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766361834; cv=none; b=Uc8pLN3UIwCtM3jioyDi3o/1Ihmq2pf+hSfr2oZ8apa8Ae+FzxWI2jgGFEadnw9HdVtybvQXbWcxIBteLRe+rL6+H3TbTfVmOop52LNTDyJAJ8TRBTP6ZiJwxCfVWOE1petTanMaShZn8WCAoURYsMqS1fT0wAP5i9LY1/3ZFAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766361834; c=relaxed/simple;
	bh=95S+BsX5XcBMkWwTH7d8nMrcKvZnUgxV0PQbvX8ljn0=;
	h=To:Subject:From:Message-Id:Date; b=htX042rHmCx3yIAlAC81QejEXKXEjQ0g7ndJRgwN1bhm29TFhEyYm+aG83xHk35IcPPvuZv2cqLAk6pB/fioBxAxJQpBiSUp0w0yoEwkyRNzXSwtPyYklo+VOFHykuX0xTrCiIJvhbPsexdVDogShsPoChxbz9tp1mFzRvaJsX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTdwLWKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTdwLWKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8332C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766361833;
	bh=95S+BsX5XcBMkWwTH7d8nMrcKvZnUgxV0PQbvX8ljn0=;
	h=To:Subject:From:Date:From;
	b=qTdwLWKhvHMfN7kr1yzifN9xWGspyvcSjVOUmP9Eh6NRVpV81f7CyJLKui9tEXmYB
	 d/Ae+WBk5c+2ucbXa6emkRpNpFsBfhw97CMdAJRgtiUXs17GCmrN479AlV3xwTdpBF
	 3qY8bU24gTWQHs/dZQPz3qUIldjnjAWZ1oYzLThzYt0/qx7lib6KddRB01Fqm1bcsZ
	 uyMRhI7k0BwhtVTAkWCS2Jl+RuRGOsYwNwOZzaozFGlM5CV/iQK7QX8llILwBvazEV
	 vl/dIL/kY4BHxOvhReFKJwlYaHZmAy5RsgA1geZ+nnrMaqeHG2US4H2Hg6Oia+Gj3E
	 TQGgkyGDF+PNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96200E66886
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636183358.979.17543586237018605308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c4aa5bac136cdc19d4de9cfea7116c599ae4b6bd484f164d0d67382de29aa9
Date: Mon, 22 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766361833
