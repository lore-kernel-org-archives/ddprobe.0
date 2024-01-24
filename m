Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1BAF50D
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706076497; cv=none; b=gQA1vRWGeAGf8rrJEYfoqr9Jkiw2OVEoDAfkfzB0Vr2P7T7rT57Ns7PKTyIGrznsm9RisL4AdlfvmlEt04R2mMypQ3H2/3TyJNiTuzajvp/qjiI47+g8D7PYH4zS91XvAZgFw8cFvtLAHqFyNJlPcmE4iSA40sLQfXYJDuNYB30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706076497; c=relaxed/simple;
	bh=gHw1ccFYPZZ0ISWa6g/nC7WHYCdkzcwx5yRbuUHIinY=;
	h=To:Subject:From:Message-Id:Date; b=pJkgkE0PlvgLaMRgjW0XTb3BoicayD3ws0BoVl64434VPWGjUtvfuNTbijcR4VnWkvBBaNE5dr6eNWgzN9bcYabPz3oV/Yig0ymlHiY5Aoc4RkwZaGrOWrMFhZP8ii712QS3RvgyqtJnk2WOcmBv3ntkQbbFzhnjjZXI676Ot4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVKMqXBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVKMqXBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C088C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706076496;
	bh=gHw1ccFYPZZ0ISWa6g/nC7WHYCdkzcwx5yRbuUHIinY=;
	h=To:Subject:From:Date:From;
	b=CVKMqXBfxC/qDT0I7zzwy4JcHYoCk+XkUmVqkCsL9lYnf9sYyBDQGJnf8y9FtnDtx
	 2/4Z4m0nwsUg6KHY7NMROv0W9Uaqe0iKU92GLqL6H1G+U+K4cmZ1/mdGQrg2W44Hk1
	 UdqGa1N3qlJBvfmVbKX1PIZ4dpdyIKUZv5YHtY/7s2ZgFstH6sYw+HzEbCKRTMRYUG
	 52aNU3GKW7qnP113WHNPMSX6917EJlCYydJju0jBUdImHg+FtWMpbOT/RefGoUDaNG
	 jcCGQNt+ULvodgIMpq4xg44Xig3nIhccthDu4TYvVg0jpvHBSc9Ah6MAaTKfyRnlrF
	 nnXcliDJuH3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC33C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170607649636.30406.14501315656898833857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4fc9f1d7b88ff6dfb7646396cc675df676c7c6c1a9c66c4dbf9197b35dc669
Date: Wed, 24 Jan 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706076496
