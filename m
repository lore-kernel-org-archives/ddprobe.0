Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B9031326A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781212594; cv=none; b=IDfgD/+jO2GJE8CYTxxh+NQWPXIaXkQ+UFuqJeUuyY+na8gAfkyBh6vkxZSrGomI7ONP85vzja4sL/GAyNh+D9bv1pBOtouNqTN0hNLJlg2x9rukg/buATuMLGd9IMlZDwL7NgmrvE7SAgjiQt2dl92bbXAp3wyMkB82+vC4r4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781212594; c=relaxed/simple;
	bh=te7Uh24/T6tUipCz+/rtTtSzbt9UVAcaPiqOrk1TVVM=;
	h=To:Subject:From:Message-Id:Date; b=lQJMYIsBqt1GLoJ5I3sBAwHIEqrEmzRly0miv5Kdrg5h3BaTgP1xeB8kyr2ExABiCoh7cpaB+VWcbjkZAHNkHIqjPjtGEN1YtXaFTUjIVHM8arii5JTi+HdCJZBcJ20XauuxVeaReebF/FhyBu8j2eoJVWfUeShUJztjNOEbKBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHZADb6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHZADb6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DC7C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781212593;
	bh=te7Uh24/T6tUipCz+/rtTtSzbt9UVAcaPiqOrk1TVVM=;
	h=To:Subject:From:Date:From;
	b=YHZADb6g38cpoh31CAXKXXOGGd/JD4HuBEBq3icCvAG8GCmSzFoIzcrk6ywqSRLdZ
	 4SQmd3Ic5XqeyAdv3G9ScrBBiBVyjTkKxc8g39MIQKL9C8vKJQ6JZLCPNYeSGDIVq4
	 wGQUuDTKUbK76S8Ieb7+wY1nN79AapGx7JSY1P4GrUSwyKVzerBwwZNO89I9K5e7Qi
	 0DjOBtprQG8/kSo/ALc1QJ96s8DmNP5w66xpD/pxF42jtSXolAl13QFQK/ocnUlKVj
	 7V9snIN+8YYjg8BZmYxGgUEiJrPjeBIrrMrfx5As1KVin/UOBk5i0ueerU/TvVBi+R
	 UBM9mzKpio/iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC75CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121259369.21305.16658561119147201388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5441aade781b70e8bf8db0b31788fae74a1b4646a49e04fa7484f8811f556b7
Date: Thu, 11 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781212593
