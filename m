Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFA33559D6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783146514; cv=none; b=AUmVjNK8zZb7TXsLBgv3ngRjMLGJWq3nYFd40/L2OwxXcjDLmA9oKrw9hUIPhuReXtEHyO1VC7Cc2vqvF86IY/+wesWKi4jtla2NxyPzbbdeuTBe86c4eE0GOp0wKER4muyaZjDXurb4UTSu6gPN7KBSHyTc5C4j4NF72mVnesY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783146514; c=relaxed/simple;
	bh=XyfZMV9Vhd2nmNh2HXPeIRyZUWdsYHFE6pB3Pi+Rg2c=;
	h=To:Subject:From:Message-Id:Date; b=GaVCi2HhLdeuMj7IP0syoPgxn66zpVpbUDu6iJaqSlC650Kcli32tN/ud9UiaVTeVNaqc4x1CGKjQqdRsP3O2cGPGaw4H+LVeauEHlHQsGafzH8Z7AhVCSs86NircrpXcyBC2zsURsIokJtx0FGgslM/XmUIN7h52h1fcGHlrYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMGeHMKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMGeHMKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C79C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783146513;
	bh=XyfZMV9Vhd2nmNh2HXPeIRyZUWdsYHFE6pB3Pi+Rg2c=;
	h=To:Subject:From:Date:From;
	b=KMGeHMKhfWRLIW7KhTkexzwXJsJ1UkLHFHOoq8rhgNPa4G52pSe5vce9NkoLxWUTi
	 9FypbdGTAtMaLudSVaMd3OcCeEb4lXz/UtiRAs4QxQTVq+N+39nBF6F6Y3RxKmYV1x
	 ePq/ZO5UBA7Zs5d5tCqy9EGrX6FErFhZWrZ0ejSpWpCUGiIYC/pX8Gm/cezNBin3eF
	 dzfVQZkXr9Mb/3PigoIMBnhVHMH2GtYF9FZPqB1AKj0JC0IitITqbbL/1DnApp3LI5
	 h74KxY6iJ6ZQPKUDLiKc1/QuA9aABrRwjcwHZTqCqfeIQ1wyt4b9oTjmquH5+Ushci
	 0muo+Yub0e6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEFBC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314651369.24690.134129745062483268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dec59e369c37c3bcb43be1f5fde56b152a7fc20ddc786a03c76208678cc9c9
Date: Sat, 04 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783146513
