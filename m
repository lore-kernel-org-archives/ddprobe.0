Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBD11D89EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783910914; cv=none; b=ueNNBty8G6AKCanVLvjo2xxbzNtKW+e+dK1VXEA4G+cNRXQY9YTaI1U1gSNUYzsCcRz8V/splHR6BeMQ5+OkCQJZ0881l76Qgk7ZFL5euFXagZ1kYEKX0LwRTDPqc09EFud45u57d2Y3/b9ivQ6bGioNFyYULwrglVGWXV6kbSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783910914; c=relaxed/simple;
	bh=x/8IXmb4jIbmyBypPQsFcn29XRyb+rVaa6wHln31wL0=;
	h=To:Subject:From:Message-Id:Date; b=WttO722faY3UcS8Fx8mZrxgIvvpe+SqNz2yyjdpjsAGva2gL3urzVhno9BkQFOn2bkfGvRiB8bcLePHSPJvjw8W5gh3vuawr0IWmCbLvuXRNGDa57qfMVO4gPaZNVmsEfNwQ8/ks5CUQY6PFcd+Tlqyc0G4YDdaruxZJw/tinfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6J64Jpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6J64Jpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16EAC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783910913;
	bh=x/8IXmb4jIbmyBypPQsFcn29XRyb+rVaa6wHln31wL0=;
	h=To:Subject:From:Date:From;
	b=F6J64Jpd9c4mSJFLoSGspQWH3KjhObSxnGvAofo/qdtge8K66PA/omFl1RTbG99hZ
	 FTXFeuIiO8SAcJiPZJ9Y/piRJzQNo8iG0HYDBajUIaKiQQoACR+d7gVFNeSWj9D5Dq
	 lrZwROkp+Wr4TA7I3/cICm2NtFFJINUgHbf19aiVMlfTSe74f6iYlB+xG4C/L1sSmq
	 wHAaSN3psjmzn3VAcwrLZ0nKuRAHpCN5xttLnWA2/l5iziiRUO68A3qGT1au2nytZj
	 uQV1wLa3HKOOaw0OR0PHc0+dCVLtql9Sd3a/dAU+xpihqkzvOskQ5U/KCHx4afCzdj
	 rIFa2SCwv3KJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB341C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391091368.8806.1964253356321696611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8c3d654832b6de0f9c1de6c12c095843a0e1dc6a4ffdef2915c90445ed6336
Date: Mon, 13 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783910913
