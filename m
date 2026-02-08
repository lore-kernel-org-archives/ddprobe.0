Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167E92D8797
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770549834; cv=none; b=XKZNHDEyHsFXCg3k74FWE6pvM8LoM5B7osqH5R67sptYboSOHx7UJIKU0NmTxKiIQllqzyTvtmHKanfO6pOeI+RxgA1Cxgx1d3kHGjswmZc3YMKEhYpxrkXrTjTsD7jON6basV/ubeEVkyc6rYLyR9Fp3B1zvYaXdCZTOkftqo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770549834; c=relaxed/simple;
	bh=nchaSYi57ISZ62aB/3igrVdiY3dQZ2WgvLT/s+qa0Dk=;
	h=To:Subject:From:Message-Id:Date; b=dNVWXVdadY52jx+Jnimv45nix7KkwNjXO05V1Ze+XITfMV5grwV7q7fPdlJsNybgSqI7Z/DPe3/pXR95XT5XmY0+VypPYR6MlH+oBOGxWRJ37+Kjw/0MKfHE3WcqXEVrA0JAlAquYezOEGp2cqx1sHgt25fVzV+GwaFbMo8p6qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O13NVo17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O13NVo17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2557C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770549833;
	bh=nchaSYi57ISZ62aB/3igrVdiY3dQZ2WgvLT/s+qa0Dk=;
	h=To:Subject:From:Date:From;
	b=O13NVo17flMeRzo4I0Z6QKrw7FblHipWHeso9ciXr0PXlcsJrFvTSjIovrDcJUQQi
	 /hqE4ZUxUDaoSvH8gFpHclJa505r583tPa8UehLFSBWKI7BfibKCpQrzriXHrqbkG6
	 /1kl1Z+UdOg1ZnQrnyFvP1TYuPBUxjJHCGP2R6F1LETbi6M7oWADs1qOxkLpUkzrL1
	 hQ2VGeas4igcXUj6mGNre30p7Y9xUeDS4CnVfQo7HR3qLZahWv1g9BAL/i09b8MPLT
	 FM5KstW7t0xxyjqqjHRx1RJLZAXliOPG6sZ6qaVWgZMLlKOk+R7Ij7OkcWJKo16lfw
	 Ma/1HepMUxc9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E4EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054983358.26892.8824339962569096373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e700c63dccc99042a495ad02484f7169b1a179e550d9b24fe865222e45478d0
Date: Sun, 08 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770549833
