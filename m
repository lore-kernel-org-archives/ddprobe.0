Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFBD1E515
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770873294; cv=none; b=qmYc7AL8Io+19t5CU4vqkjtgxzaufhM9PspdJ4yMysxb2QyXnfuxbNV9G4LFqZ9hS9HqHHzDCKtFuanxeoSMMfbnMKgdVYR89ZaJhgAdiLT9LbJhIH1p7lDXcvhchut7zgVwUFB793NmJDau/MypJ7nihq84jlHxL1spIjYt2QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770873294; c=relaxed/simple;
	bh=91jiuHpsEm/Wt14gL2KF0ZhYPz/LY41RWBm1+kSKIEU=;
	h=To:Subject:From:Message-Id:Date; b=bcGw1pfbD36V3DAcgk8UiFKXw46M2qikpsqiTVQdgYPIei5Uaowi9Z/eiyYUXbTTu/RIEcbZ+PelMLtnuFEOYJVyUtnoeshD1bdCYEpBt/5FDFfzK6DY/zpAQsLgzN4Y3EQWxzFjS13XMnKtJXqqDfPu8OY9mA0W+I5nGjLxgUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry0/vXWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry0/vXWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9621C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770873293;
	bh=91jiuHpsEm/Wt14gL2KF0ZhYPz/LY41RWBm1+kSKIEU=;
	h=To:Subject:From:Date:From;
	b=ry0/vXWPH4Wq30zJtanHnqAGNv/QVJ0I+pZj30NcjvMgl93EpcFr1CsLt76DZiGKG
	 pXaJZYSedTC4CI3Q8EJcroLZgH4XM52uWMvepnh+uzL7fOsw7X1z9Ld9e5mphtEdHk
	 15jHjVGK+47vBPyTJJw/+Te5pK+J0kl5zdjfwV7CvpY5FdeW0qqIsyKbQyWB+DfrFF
	 XgGjaetisNxtecSgjtZXTgToY2oC/JjUoQOtw800t89TxjQSPtgd5nd/6r7fdzLuRL
	 sM6bRUGBHuXa3/sh9g0V0/j7iUeg+s2oS3GXcut9l9NQSg/fzJUTSC80edbQ9MmOdF
	 lO1l0bl+ZqehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9487DEDF039
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087329359.26166.3616410424836701237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600e4db8de81257ba0446c23136d1a6f6658cdccda77620107c1aee88314d432
Date: Thu, 12 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770873293
