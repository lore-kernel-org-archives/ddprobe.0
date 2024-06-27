Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B5B2139D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719513263; cv=none; b=hfHslRo73uuJIVN6ikmGLukiA+Gz+NED7W91rT+KmQlzBa9LGU26pUd1qnYSNcGMlPZXQry8wTbu+WEgkyF5abCZvj5lF+nohA0hQSSLzlD7jwNw65k6e+T0nD6rXZOAv8qb+0fdJy+cEAN+QIS4VSnu4d9EbjPa28B1JR1HSzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719513263; c=relaxed/simple;
	bh=40O7Lgi2n0WjB+Neq/r/rmZYv/a+AmpAi+NKHvBm6cQ=;
	h=To:Subject:From:Message-Id:Date; b=E+IIc9I7WH2nFVBMul9E6agq5bsHMpwlaCwpIG2gj3AMpDzPDwOuzgDzDYzMBBeudlEEmvHEs0Es9FeQe13aY139smvBVLkeCOP9IIg0FGj5wALG+cfyJybi8zTXvG3fHg11lsV9HPx2zvm/vidzfX7pJl/I3GMEOrxu/7b1xP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0tRVwxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0tRVwxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3766C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719513262;
	bh=40O7Lgi2n0WjB+Neq/r/rmZYv/a+AmpAi+NKHvBm6cQ=;
	h=To:Subject:From:Date:From;
	b=N0tRVwxduniSAWSrGYfZdiGPyyoBI8fSlQXUoPwpHsf6eWlTlIEgLJ7Tuy0mHDdkn
	 ECgAoB8Ra9OEMbMx/16foNmgjkil0qRiGX549Z7laLSQ/5TdGT/RUeH2VmaUbJb8Gm
	 kKbfCUoifFCfwd0TQw3Eoo95r5LyuW3D2CIDeygtLII/PRH35nL1VqZyZnpwsJKf1N
	 tCBddb8kG7lpqO1FeJ2Th8+0WqVqAiOzg25lnGgGH9swKLpulnpe5YS+6ygjZs6V8C
	 TzJXL/MYU6ioWW1IO55yYAXDAl5PbnEs39PajeoLuQyaXSyPcZAVDFt5th59WhvEE8
	 LbqgmJz/ERzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5EEC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951326278.13912.10624165078693388502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479340626d760d80d0ab397ce2114c1b68aa125d5ad7045bc1d9d3c92f953f55
Date: Thu, 27 Jun 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719513262
