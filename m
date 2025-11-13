Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212903233E8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763018994; cv=none; b=Zh49xqK3Odbmz6R7f16rVMDS9hPVvRiZcvEPcnh3Odt9H5dANpJJs7U9Ja2eu8pqLqO8VFgyC09P92aoLYR/38KcfOn4L6OaWSKpAw6zoy3L4TqcEIqKvvj2prrAWx5ErN0p/qxyM3vQfkJdfGDSSsR+SCpT9j9FvbzlRJA/ddQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763018994; c=relaxed/simple;
	bh=x2+TS0ci2GiE1aPpElgB5xrjdND14v8oU+EKI0n5FIU=;
	h=To:Subject:From:Message-Id:Date; b=XXRTQaF5Gta97lS7EoxQlCE5K91ytIQd9bVikhW9OGZ1HyRHSax40ar14aUz05t9cipjzPFr/SXTCxUkgV82AWTjl/fkhPwPzriebjOQPon/2p5+46yg37xv2rIHtaGJFen6RuuLnXl2abqDeBhP8lGjgCeicwuA+jm4i/Wp9JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl49CBLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl49CBLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F549C19424
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763018993;
	bh=x2+TS0ci2GiE1aPpElgB5xrjdND14v8oU+EKI0n5FIU=;
	h=To:Subject:From:Date:From;
	b=gl49CBLb5Yg4Ltp/wwgS0vVlu1NNz9CwXXsMq9T9/AXC94G5hX9TVaGEBrgtZ2f7W
	 VGuD842M/Ih8SOi/Y89SSjTNPcHD1GIx8iv3M3gFCMdpBuM2LZ7PrMPtBVGlzUyz4s
	 tNP3tWLUOfdJKPdxUb6Sj4lm3wVc2VaJHGU6Nh/bopoULaG8FGjTNo9xzO+ntpQCQE
	 PFDoo1kV4UX6Md9SIoaxXqv+AXj8E32zxlUzs3Rs7hy0kMm2W5hLB/VRxyIovvGNZR
	 YYaJzTYMhU8tFYycYojwC3NgPEThaale711hhi4Tj5A1du21xOMfOhBUo9pWYGSySi
	 y78KLKfb8J9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEACCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301899358.13052.17360225966951119306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69801ef3aefd5b58d5ca74737e67045f08a307aa6a4aeabb1b9963a652e24ed4
Date: Thu, 13 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763018993
