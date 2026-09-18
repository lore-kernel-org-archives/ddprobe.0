Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B482CCC5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789770634; cv=none; b=mmC7DIl2GaMCcmZ0uH2ZnSK81uN0OHiuW7i5ZXZjQAHtr5YYOwj1VjkGdnA+EM0YBQqsOzromW9dLlkSMD4ahtyDsOwr/Nfg9FTDyykqtDOhFsOP0MKUmet0ZAC1NUpmFN/MOWbXjv8gScq2+OKF8UrHcWp4Koujm8MM8lGbdCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789770634; c=relaxed/simple;
	bh=ExivrIMKzYywlZakbc2KuuuinDeuP38Pdd/70sGpT6U=;
	h=To:Subject:From:Message-Id:Date; b=EdS8m/ldNaYgGl2JbiaLIVy4/tZ4uRFPLBcSEKoE+FzYN2J9rvCUkp3T3wSEXYH8ROcIlj0hxhzilHC6TUr9W0Q7yw6l2rSzdFrtAXXdsptnwjU9vK4sxk+akwAjVcJDm+YmisRFAItBXlEFgg7N9mWlzFTwYVgGnm3RMNPkVDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4r+LPU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4r+LPU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE22CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789770633;
	bh=ExivrIMKzYywlZakbc2KuuuinDeuP38Pdd/70sGpT6U=;
	h=To:Subject:From:Date:From;
	b=K4r+LPU2NeP3YyNsOSD6kZahdepR9ELcfkTbCPGCLG3KtXn3+XOD3hqafQ85xrHXv
	 7juCGZ99XfFKoq4MVowtOuBYp27mMhwtpoFgxssOnfVDpO8+u+SdxryrVMJQLGKdkR
	 0frmWJKTAu6I81HZ5C4FNb6XuwKs3UwEz+K/fAB0Lg7zQMoAJfwu4IocSsPLCG3IWL
	 grSRzGprPut7+DaVXeFTf2r8ISC0b9hJijF6kW8mwywTnG+uOEVwroM354mrXg8vIh
	 hwKhGYu3BKIxmoL8CzuK1ZhOUDwpiR7a5PKvMueUapXQceR4fSA0/eQJD1WvFUZaK8
	 mGmyQ248jo12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA1C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977063368.8235.15574253975722347218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1cb5a50f33796a5d5e5cbd8114f10b862a208bf3279060d517298d8f96b6fd
Date: Fri, 18 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789770633
