Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202DF3EBF08
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771842294; cv=none; b=A+usoc+21+dtNAqbK1KVgJ26uDbNMh9PiZwH96/Z5IHRzP9hA5vJvZbBQj9rmgZ4jNxtQOSMffAFOtj/u8fReBN/g7n3mqsk3qcBYN5z1u3bQ62fVUpcI5sq+afONOhDa0KLf9QJr/hmPgtaopdpOgVOazEIyMqW+zZbbFQJAfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771842294; c=relaxed/simple;
	bh=ofw354BjcQfBNN7/yz/viEkDr2dYjjYNdCeS9qX/uJQ=;
	h=To:Subject:From:Message-Id:Date; b=Ug/S81QqrCM3dU+qWV6cJLYZQi3crCVfMUTcU3690ouiUb/eDbpTqPi2JRLKW6qgm9rSalxz/SyNl7mzexZOkPd1HJd/ROexmJrPnWJRUHaFHbelyP9bQcfpMRWqcsOdd5qzm2cl0D6pmRWSlS4e7qjnZB1i2/7kAD+zu9LnYAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSes5qrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSes5qrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B023AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771842293;
	bh=ofw354BjcQfBNN7/yz/viEkDr2dYjjYNdCeS9qX/uJQ=;
	h=To:Subject:From:Date:From;
	b=NSes5qrmh4QJc+zZkBye/kH3lorHaue3WnGbt5SYkQxqoLyMb1+NqDWfuYlxl7cGI
	 v+Ab93K1otrLVoxmL37mCmizzuWP2WTbs6lyuJ4T9GCyLvuBMqz0Hv3mWadGCo7d5Z
	 Zio/ADUTT3Fr7f+elUKx+Lczp9nO8EqeJiNYvNDujjf5nsTeINtIMuG7ECqaFNRA67
	 jBih7k0SOG6fkKQwO4MSDqUeU6Vy9ZB9K7rhlE2oVrjlGfScvDde/qa1r7zz739RZm
	 ppMV6csOjVMztmTeRWFlqmaRIk8vu9rsSZTyXyZ06VrKNMfBweNV4bOzsn1r+UalEP
	 S+vfr/cnofaqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9402CE98E10
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184229359.12058.13071607409506683918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2bb89acb1ca512d0aa1642bc339d600f701e492cf4e1669c9f59451dbb587a
Date: Mon, 23 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771842293
