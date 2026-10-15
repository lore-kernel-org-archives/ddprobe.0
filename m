Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4093025EF87
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792105234; cv=none; b=BYEoFymxFOGmJUVHV+ItTlr51Z/WHAHgI6UeKbQJv/g+UAKOrAD990b3z7i5UMl+zzgqXkF/dK62x3py3mQ7BXWhoQ+1DohOYcs6PDBa4tJOu+DaVIEJbNvXRJBmdRBHYITQr05PDeY5QN5hcUZhVEgDC894R1DZAy1taCGdKyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792105234; c=relaxed/simple;
	bh=d4YrRxGSsEFU6hOqDKtlvnr1511vBQ5y5Fy6/Sqc+Lk=;
	h=To:Subject:From:Message-Id:Date; b=Xgk9u1+26cq7qsvm6L3vAfTvajXfwZeiY7V4B12Htm+Elyktxb2upFU6reQPM63mqzemZ/hASBIDlQoc7yn9kApn8mLlXJ7TKfAjN/EPDT4uoUFojU4R2u2SjBVWpVOoFXYIRbBYsvknOM+deCSzq//K47sZ0JlBTycWqTwCYQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7Y07Oe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7Y07Oe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA640C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792105233;
	bh=d4YrRxGSsEFU6hOqDKtlvnr1511vBQ5y5Fy6/Sqc+Lk=;
	h=To:Subject:From:Date:From;
	b=b7Y07Oe3JIVSSuzbVgZf9zwtGycdnBqpYDskStStuaS7OcUtELas7UDt0jOcnwqwH
	 2T6MRX1mSSOcUL/b8VI0LuN02zt3DVSyMHOGVMQSMtgXRudHvsySMGPb20Zk6/6Xwd
	 X4RuVUBlQrmCfpINJpS6YwnrefQ7k8ihB+cXPCHsOKB9FaFh9IXlcK7ik8d2KGsCDE
	 IDQmf53s3RMRvYOk1bO6xNU7z3BiFbb4oodHGCI4uD8a5GdkyoK7C2KowWClujs3bH
	 uuZuQ2hfdTV99J/daxU/gqVGufafx16rel9g8vnC7+OzUKh+d9PD2dWHhL1jl/bR/s
	 L6dO054TqIYFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89EDCCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210523368.13892.8726973852968122680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5cea9ce455172a98e631b0aacdb74cdc1b37978f74203d7deb93d51b2c8fe5
Date: Thu, 15 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792105233
