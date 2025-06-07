Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B7D1CFBA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749277794; cv=none; b=pYY8zcCtJSE/bcaqSfRymYp1AfLRU6vj362VCaEH19H/qN2SerF6wf0LHy9ovECYk03sMA3YnRgx8decDcpn4VaSqEUZ9yPyVPim9cXuH3kcAGph/CR+q0ze7NpIwouVdTNOKoHiBqvtqWWq6+yujVeTyCUNJlo1bsID5ng4UhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749277794; c=relaxed/simple;
	bh=cZEs/XoElCsbWKw4xRBAD6vHSB5svRQfhjd7B/RAZOk=;
	h=To:Subject:From:Message-Id:Date; b=r7W1BchLKRAdFdH8sWqQ13G3FgpvdW+QNrTA4QNTYP0734+z/cgOx8JkqwlGM6VUQruZReYfCufkRDkVvlKa73bCuo8JLFsmJq6W6ihFctFBxCDtSisOB6idyrkWWSvWm8DLbjgrKr7o/So8/I9W783mfpVTvh7+pA1L/qXvnSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIHwRbQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIHwRbQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AB0C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749277793;
	bh=cZEs/XoElCsbWKw4xRBAD6vHSB5svRQfhjd7B/RAZOk=;
	h=To:Subject:From:Date:From;
	b=LIHwRbQcGLLSrZ/J53SD3AtCuEACM4bmEoGkUZaTaOQJHgRb5HYQWuESOQs06C+Gd
	 LeLKIMc9cKbIQ0hPb4znIiTwYKI5VeSXmbaR2f0qhqsi+NTf5/ar/GFw4ipnFBORyQ
	 Y1MNkq1on8EMMtMEb/hlTvjP31U6BDJDTXYRzrJGod1oQ+B1tXDYEyqKkMJClUCUS0
	 /PAC/kcxSvJIewJwu14ItFt3Y3mvtLcD9fe5dHs/qBbwXDOR0+0cr0xJmB5kE0MzYE
	 38xVqIOc3F0uQsR8B/EW5Y7E+sWfsVGsIEjbvj968R18ZqyPtrNvCqfz23Bb3hFHsj
	 7qbsup5Il0Anw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F2C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927779357.20273.14823652233334053011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71537399c08a8dd482c743e7ceab75af0f5d978849bd5001875ebecf9a6fc32e
Date: Sat, 07 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749277793
