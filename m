Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58959481D5
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720266323; cv=none; b=t3uW1kEn3Lc3I/GsJ198uHUEXmyRCL4QGSzGYq/qQn2HV40HTdaditEBoYq3GPBeeiUy2yOW+SDTRJlHTBPPjVqW8KB+EXnu1H9Gja+R+aWBPn4twygLwuezxHSY4MP8ObI9OS98gD7pL1VtKsy+aPzex32Kd0NOMCaX50RNn9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720266323; c=relaxed/simple;
	bh=VMvi0YBlA+d7DMg9Qhm5Ol5t4n4B+Wi/9YzAKmRqYF0=;
	h=To:Subject:From:Message-Id:Date; b=qkqBpmppq2fAbYfPt6Yvp9c/QRjYFkYKFOBUQclSXzAZf4YqISWl/DIF09eaITIzSPeVTDN4ak7x+vaJBFhhBYomBEcJY3TfngTbGjm+x1UffxIhEGRBwvCUi3fPVOkVpAt6IvhqhucUqUf7qd7ylKds0yzSTD8D5VOwoZnOxK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZiRY94g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZiRY94g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA17AC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720266322;
	bh=VMvi0YBlA+d7DMg9Qhm5Ol5t4n4B+Wi/9YzAKmRqYF0=;
	h=To:Subject:From:Date:From;
	b=QZiRY94grq6JJMaam652HFxJpKkKckwhyUQxUICG+DzZ9wPyFVI7CCrvqTSQklonF
	 7Fu4yH7EVi7t4o4cNDYt42HpHaHZSW6ILDoBYRJeuY67w7VaEj2bkMPIoSAdFC0uPd
	 wQVai2lLHBFiUp40XD6c8aIlJ0U3bIRONL/sXwNrE5MRkQmPPaLBUKv6WQJ+pKP1N0
	 M/e4JR2Awq1XL8XvR9BPw3WsiT9b+ABVSoorJ5ZuQjB86RAXz6ARkJDzMakJt9tFsF
	 7vqVsYr164uTgpC+lEVMxuSQkGgS36ZMvAT75iw4v+bO1EvH94eMg5r+0RJnUGPLnI
	 JbejmnXC6kiKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EDDC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026632278.2982.15949542540703251039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf0ec0f20b6906005fd6fe1d99526aabd890775d10aae94b303d8cad87811e7
Date: Sat, 06 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720266322
