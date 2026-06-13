Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B437FC0A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781392594; cv=none; b=kGpDuA0S12uYQgl2DF+lMSf0MZ6e0RYNyYJj9i1+fiUYN+sd3FPPKHffDx0gYHG8xa2NPeFEWQwGTNviuP0NryhoJNSzpMxO2m+dKyGAPmsfb5NmlYB6g+JDFM+sgAjvJ1ot0vezb3cUilyHOi7eNvWUSVoSJBaZGrh1w1cBhoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781392594; c=relaxed/simple;
	bh=CDlirLcJ5PcWPtOxW6aEFOYQQ9DCrzdQWnA92Z1TcqA=;
	h=To:Subject:From:Message-Id:Date; b=SzDjynzJ6Yu8/1MbuzXNnrBKTg/ZrFpde98F2Cg3ySXwv4Ud8oaW6uLLYSVfPbqCaai1CzS4gvpghQsevZQg2vhtMGyeSriRdQLIvxFT41a6jZ2LbslRyOANGlLzuuOXT/C1y6axYOj0JYMVv9iSR0sQC7POkR88qmO5uAobgfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzLYBC7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzLYBC7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32E0C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781392593;
	bh=CDlirLcJ5PcWPtOxW6aEFOYQQ9DCrzdQWnA92Z1TcqA=;
	h=To:Subject:From:Date:From;
	b=BzLYBC7dGji0Bo5/sh0a9hgYZVdoNNnXtqg2E8ki3IPtZkFjIBhEKZrDEpC/FrZxs
	 dnuDl3GrT+AYAnw4ShUNMgdUuBairBUX4FERHzGiuYQ+ohNZ4FFu/JG8m03AfjeT6Z
	 wcqY+OwautLkAl2IgHs8KH/HDRfmESr2Ta/oO7Zch8NNYhFMz78jk8oo6ZXvkX1U+m
	 KRRKRLCuHPpou50Z/9oX/dyhgXf+JzN9nSSYqWh/Bt7W58QSQKYr+Hg2xcVMZnBshX
	 SPX1pLo01Z3Ql1Y2ZhJSyb084ba78yGkcMh0S650hPVqNiqz5k/w5fhb5CSlYe2IFD
	 lpJ7Aq2tIHXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8437CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139259368.17077.8004516330547243610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299933be4f6d95219b619a3d5ec5b738eb184f7c27e21a6842c087dfd57ecf3a
Date: Sat, 13 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781392593
