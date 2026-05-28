Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360483BD224
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779978754; cv=none; b=Xo0202ICOT08uiG3vAlOLsLSuafXlbtWIBdCzQzQ+xmXmZech2wxpdfJfw/WtXTZrYIAAfUONWt1tKyxSEwzAz/QFx20UFJ0pkczob9218kfG/4PEAF4Vnrhzz9hbqTBLMgQcurcuoGfVsA3hJPTpLL44Q7jcE5z8ZFHpV+Y/dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779978754; c=relaxed/simple;
	bh=Rhnn/NIW8b8WbJXI7ATwsqZ2OEToig6ngPaHgA2sdyg=;
	h=To:Subject:From:Message-Id:Date; b=AlvcT7KDAbcWWtutnKMFBlrf44PGDyOFlOpI4X+ZAvT3J/2UTQPGlHoWYs83UstRg4Cox3WVrCNhU6ZpqLfP6QfthEf/3K9Fmi4kMz+YZawosPr4Bdop/rfepPwthPE0hjX8YIed83FQFSmPA/NSYJg1eQOzlHiv16Hon1W4P/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3ntR8aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3ntR8aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC37FC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779978753;
	bh=Rhnn/NIW8b8WbJXI7ATwsqZ2OEToig6ngPaHgA2sdyg=;
	h=To:Subject:From:Date:From;
	b=R3ntR8aLnK29mF44cX3K2sES92YeqSafbUnSxpWDiRrP0qc0GJRTnJNC5cDP/H6vy
	 6ZqA8sF8Oq6Hw5ZLzopbMv4KJ5AfGzLxN/bHeG3oHUzAHU/Seq8A25y1TvR5W2fykw
	 aVwPijss3NlB+Ik3KcHQxijkRuboyQoqu0AbIhFSnC8ivPepMdwjV88p1OlLoCl+yf
	 yhbArLzK1BW/mdcNdWDkvhbhOccNWsjMXtHOwrz6h8XAPkFt6foTOtx2IgdScTZfIr
	 gSiGdu5zaveaE+HINBV9LNIe5kG9VDdMi22YDwHAh6fl/plke+As1YZibEaJTkeB8r
	 CVQdywQOOYv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB12CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997875369.11426.8259455170356890195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3875c3a6fc5d894d531dfcc08300341b6f61d47b96a7bb06a259f689f65f30d0
Date: Thu, 28 May 2026 14:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779978753
