Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FDD32FA2C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779143434; cv=none; b=lCC30Ktlx8tVcU/m6Qp03UTK6n0aKQgu4wdPGItsqXgGTaf59eWsd/hv3Zos+tdeBh5rdhX5KPFWC41nbfUuFtIT+Zb+FinYCm1lkZ5wy5+BMS3sTnzLuaL6D6w9euhkcxW2tHwCzkv8FE5aPbbdNtzwCLIWV54XWrh9Z5WD0sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779143434; c=relaxed/simple;
	bh=IhdsJJyZXXlUQmEfnZvhxNSCuNGtc+EyQdKDYg4F5Ps=;
	h=To:Subject:From:Message-Id:Date; b=AEnX6hE200B+f09hgUkebTClLhjsRwQ4HCf6kzh6dqAmUFfzvLaHh92v8nQOrBhMKIv24bazafB7UGjBThZGvu+yMXUOKNxZp8V8neE7Dn6u1jJ0cuF2+ZWQ5tHsLfIokf7hqyfk8lvy49GV0ckn7amCUU8KMJVIbXw2TgpkPUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB1tGI4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB1tGI4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC120C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779143433;
	bh=IhdsJJyZXXlUQmEfnZvhxNSCuNGtc+EyQdKDYg4F5Ps=;
	h=To:Subject:From:Date:From;
	b=uB1tGI4gEoF/HIzumUnqejRHWbnXz721XHTxo6mEK+43WtA7buXQsvTPensd5Irio
	 OL11HHWzsPcJPjQFSrJZRVMJ3EeCgPQZDKh0ODekTOMGtVgzbQHhe1Sip1ZpYCSmWd
	 sAXcewG+Oo22+iRtHGHABx9O3skib9YUU2YSLbkfxs9lzGyICAUPb9jQQ7a4KWwfJl
	 vnXNlTCP9R2cYpgyOueEi6FWIh45JEg2FUaAmAYfC9bvvWomxdIIEJyX+IY6aQLdyB
	 QymzjD7+mlssyZqPUaZngQve8EWyXTITDMRv3mr73dq3Jl6LQcXYu39paN+W9dsHkC
	 2fuTDDVElkVQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE22CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914343369.25054.10672384020193639541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6369c431c70a0124c78f1053fcd52f9a83e22d2fa44b032efa3d91da04a7eb
Date: Mon, 18 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779143433
