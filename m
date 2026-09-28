Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB553242B2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790568034; cv=none; b=UFhZNt2WqSwVKqPfTbjBnsmfSoliIG1DmmSHBoieNcPVgOxW7lvqoHbUukzTD4jPw/lO5us/OUzuKhGoPDCW1nChhvow/8z1LzNFp4s9edOc4mz9BI4Y2qQvwa6sS6oVMrYNbjQmlDqxLTEIDHSyYjcz2NSZiP1yJ7Mmvue/uhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790568034; c=relaxed/simple;
	bh=ypNYa7EHipwW3R0Y58sj3rGj6enx9TFho84wCXcFVUA=;
	h=To:Subject:From:Message-Id:Date; b=XbcDH1qpru0abMT8SrJ3fjGEXmPaXBL4Ls+koKb1n4ogDdQjpUuZ6DK6b7vsfC3usObPHuauvE6SkBKo7gBbcnh+8KPKJ7Y69vUB2rJORo+bnS4X2ys00DrhGnpTe/Tlqr3Kb/AD3tXYw98VK2hrIJ8z7SpUt0cjlO4YRUPEuzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8v6ZJKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8v6ZJKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C2AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790568033;
	bh=ypNYa7EHipwW3R0Y58sj3rGj6enx9TFho84wCXcFVUA=;
	h=To:Subject:From:Date:From;
	b=l8v6ZJKesDn+7+DRe55o4Pgg5VFeC05/QIE9CtU17AHCjFoxI1A94VfvXGzejNn8V
	 3zJxTsI5/ahuTtkeI9eIfWi455ykq7S3x+4Kkw0a7UfqCU3Z0Y9LGctBh3r80yB7Rs
	 M0viG2OqvZ6dEKdqY7tDiA/YPSUUM4N0yYXwu2tKbj+gyhKl3lDSED/NP7IHVZaPWA
	 jIppbM3Jri4SCFO8CZ61gpqqSM4yKyg3h8sEQk3bTcxM2ZbQbQPT5Aax58o/p6QuE0
	 yvccbRCgzLNQ/sSSTqlKW0Q/cXWjnHQ8dYvwe/G/4FvlkR84AyhpR7FKWbY0haOqFq
	 nnmI4W+Ek8kEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE54BC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056803373.5053.16348154399183143649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a2913d225bc0ff847e04fe3c4f898bb68bab6474d2f6bfa7e52655de11e9b5
Date: Mon, 28 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790568033
