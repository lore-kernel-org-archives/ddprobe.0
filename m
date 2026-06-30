Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9C8257827
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782800914; cv=none; b=WKUFZs0dd/b+KLoCP5I+3BCzT20kkb2LRrgJwhCKiiHhnZiAEamjGbInuNaPgRJqa55ACbXXeljtPCg42wooZJDUdOnpWTEKcPZEuTcDNkZW8L6BYtGRfBy54JladszT9vzSDEYdVdCOKLik/+0mHEE2dwoPUqj95Yh8lYsWMtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782800914; c=relaxed/simple;
	bh=4jpr/1UdfOnb4WssWLHERGeu2s5Gy1VVCnCQ3+cIXqM=;
	h=To:Subject:From:Message-Id:Date; b=LnxvRCzcCBz05pDlhLR6/dBiZCG/sAIhFXzTSKIupB+Bhk5sbHaBmGKJI4pH3H+fkD57NHTJkDJ/qYnHknweh1EHHLAXwt9rr6OU2Qilhot8EqhMvvOhBWm+IJg1DZiQifhYt5h1IBS4S3YESRiF3dyzU+RBpDLL3w27s/As+Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie1I5udY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie1I5udY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FECC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782800913;
	bh=4jpr/1UdfOnb4WssWLHERGeu2s5Gy1VVCnCQ3+cIXqM=;
	h=To:Subject:From:Date:From;
	b=ie1I5udYvQaKTY8/nqKoIdI7aVA92FsS3X+Zl76C+ACah/VXQARGjzvPcKW+9aXfU
	 JFDCVSkdnokg8o5mUqZ52NUQRIkEWzf9mnLxxOV7k069YsKEgDc2KFDqJ78+rr9I18
	 jYvZosGzwE+jVjlhcdSEeyszl3YRqXKKNd2kXqjpTJh4/ALXTygahX/H+P5rshZ9ZU
	 VSfZshNdx/LA5RQq/d8gldTvF7YSxc7d9X0Y7ySy4pjLJ1/jIXHAvhMe215RHAlpFs
	 Z+dC5ifPDXaMEnvQtS9ICmx4Fx/7e2OOMepcs0s4tXpnG/dcNLJQ/TxDXafw22xh2R
	 SsIaemWGDO7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB5C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280091368.2213.1628652107807963289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351f90b9a65d13e3be103cca66a398afc52df37ef51ea7ce9a143e387aa46274
Date: Tue, 30 Jun 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782800913
