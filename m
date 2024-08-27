Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2674682877
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724789754; cv=none; b=VsZ+k56sk/wCJVOW8f14ITefG/038HCD8CdwBcIFwDnWWZNIGelq8jSgQXwytv206zE0uhmSmfRZlr5rwcf5cW23XZim+dOVkGqvlpcy13TjMbxFeBeTFNlq8xZWFA2wubf/xNDVQDzEAKEzAE+LycbenkGLow9kzuloU5rZyd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724789754; c=relaxed/simple;
	bh=KGjhRpx9S/wJNOZQ58YwZnwPFNDaxCl0KpL/byE8a2o=;
	h=To:Subject:From:Message-Id:Date; b=du7ne2YAPEysm9xz653ZfaEYhsK91H2RK7yZeRcGqHjVfUMxiQxXVvYs8/0JPLRspPye7r6LBRpC19u20QpZSCqtz2B31meEJltFEfLYr4moU174TULOZp9nP4cPy2TyigBFoHjdQ7cRjvsTsySn5tcuTFLmbSU8yikSv0bH63c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfOkn7jP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfOkn7jP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF440C4FE8C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724789753;
	bh=KGjhRpx9S/wJNOZQ58YwZnwPFNDaxCl0KpL/byE8a2o=;
	h=To:Subject:From:Date:From;
	b=SfOkn7jP2nzgaIMKHNSf0xrz4GdNGvOUjA9Q/97rou8OtI9DMG/Sbfg24FDtL8Gzb
	 4Dvg5huAAmPIrDRrXQvheZdg2eXoprPvF3bppGPbuvdaAxy9JarPSFXj8skrH9O7z8
	 k5YmkZdt+DzOqcZT0NaPeqJ5lQYjioqDecNbkpxJst11ZJ315DDT7rTO6KgZz9DErD
	 bqio0+qjvoMeNH/3kZgtGKVgo11YXL9d7F3ut5p4daqXe7xB+5reRsybF5v3TK3Ewx
	 noQuGLs+QLse9VgKBI5+ELlhD3NFbAEa6nUeEDnkob5AAq5zdl6zhlVDA8XnfhXIEt
	 ocfE66++zoQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2F6C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478975361.30651.4577218481198885576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e04bfc3d4f0e15ad801a53205f266530ce0631f68dcd39caa85d6255c1ce42
Date: Tue, 27 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724789753
