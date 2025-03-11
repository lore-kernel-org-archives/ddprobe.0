Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373131E7C2B
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741681134; cv=none; b=rlmk3MKFCa8MNDBJBFXFcOAkZszInOSVKEP0AhhGA/rpPApgCWxLNP6MWA8JbU7/dOu52rxso9Pr+nhSk/MVuTMN3qMPHNRJ48z20fvEIjfmUZNx1DlZ0aj08C/eLt3/nIyqyHlv4xCfss2az8agB6jiRBPuo0oH5rXRajmoqmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741681134; c=relaxed/simple;
	bh=vu8TICkZ5k57Ztck9x5qQkOvNUaOGC8hZMKP8ZJzZQ0=;
	h=To:Subject:From:Message-Id:Date; b=hV5s7mV5OccaXoLlfsqWWqu3edNRinTCOTSkP54Kqgo6i/EuyFFVGX7pz2VXfPHZzqDcopnnnF3tyKOVdmeBbbAxXgIaRmYN54G55TGQ4tH7zHY7Zo0RM/rEvJT/7ZHjfp4HXZhvZEhEQoYZaOZi9skUE+9nGyOfTPRqrXmAFFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhbtNkJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhbtNkJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E59C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741681133;
	bh=vu8TICkZ5k57Ztck9x5qQkOvNUaOGC8hZMKP8ZJzZQ0=;
	h=To:Subject:From:Date:From;
	b=MhbtNkJKtfWvWb779Ui3G8KIfelo8DUM96eHouddwVi9cClheEsLMpcO3Y17ibVgn
	 HmGBCgEVzGFzrnxC7B+M4lykxVg8q13QE5LVW8npWbMb/wDYwnlqjRHKWUVZB8w5ff
	 LRcPLqkHDv1TgnxTvu/hUmQtkb32xelyNzxQ9dHt41yT3n5rRVmYGjnyfStXBs/rHj
	 ZC80ZZH4BVQ8JAsomKCnPjTMhEK46m3RaqBGZ53VVngGzOzW0Zb1Srq3DBL2wSn0lz
	 f5bGb1vcOkB6J7+5Hnl30z9ESzYh7aUDJIfq7CEs3GsE3+6/0NHxp+u0KhksCIVWms
	 ck8H6iv3WygJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94285C28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168113359.26478.4552213881148485885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9739eb77fb660c0684e3a8a5471e33c39182f3004224327483bf4d0e8d6db0e5
Date: Tue, 11 Mar 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741681133
