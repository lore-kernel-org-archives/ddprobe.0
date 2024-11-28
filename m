Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2813A41C94
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732824954; cv=none; b=q+G8nhft+3qLArrpl19A+xGgvOdTh/ltSUZwkgJ7LwTmEQHgegu5Tu15NGIISimYn2BJI7H2Cp62neUihf3khcZp6D+CDJ5s3dr68X1QieR2otBwnkvMddtZs54CaE31JU+92qWLgOce1AaSBK+OrFSIlNEE7zszS+NTGPa/xhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732824954; c=relaxed/simple;
	bh=g3GmXLfCrAVgizfUmMKxxRGyQZGv8iZ6VejpQJYRXhg=;
	h=To:Subject:From:Message-Id:Date; b=mDgbyALUV2SKr2Zm2zBhbHiGAZ1AAf05zHwtzCXUt3jvTDInN2aK9Fd5DMMJMs7cArw5LBB3N+BkJ1UIFQSYhqpirWMuZLGTzPUOhA4bNs4uen4QXfdpZ17y6btk1porGT1oFLa7UJNMudlp8xttTSfO2KcSX3LnFb+4cUdGj0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI/QlVtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI/QlVtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6416C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732824953;
	bh=g3GmXLfCrAVgizfUmMKxxRGyQZGv8iZ6VejpQJYRXhg=;
	h=To:Subject:From:Date:From;
	b=oI/QlVtl7MBLYEdvNYPGhhSPkLZCQM1hV1skh75WzrYpnDex//fA4U3hFMoNXfDuP
	 PKpl0gPZjeT/pWUHdFy0WynrJagSlxhC4y00UsKiUOpLrxQw8Iw6RWEh9M2tjiP/zb
	 U0yEWr2IH/iIbKJ0iysaJ5j1MOBCUCsQwMebZuQEJXQ8T7vnbl0fBqPs/xUd+Aa6jh
	 ExyUoRYmwZ0LtvJ8vyAiaZrfAsjlWu/Bqm98Km7OYPqS2wimK90VfsY5NC8qRjdGO5
	 L3jzOcRKLu6sfNEJYzuFTaFUpeb/5f2YGyqRH2giiDJviS1awZJVZ0brhB9yZkpLQH
	 GEq3nsF+JLp+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F8D70DED
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282495360.7585.12738645093668520085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc1094035e11a85e653793c38f90c09442514a46c98e20e689844935a69fba4
Date: Thu, 28 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732824953
