Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3378436D507
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764729174; cv=none; b=pWWsimCtOCS3F1GBbXThqjP1D/t8RqUxiWAiyv8HXkgJh7oMGUEi2+zfmZJOYJS2uNIHdYnmmvAFzKq6SPTJInkOdGxVOZkDC1YHt83AHvgBXp0t7KS6Rq/xLpvD0RUMVP4Wj+HhSUiAfblMJGrygVzDNcbNtDQkjSn9mAALDAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764729174; c=relaxed/simple;
	bh=6vavib5OLORtcsvuL3fluuD9MUseCur37kqcmgzHs38=;
	h=To:Subject:From:Message-Id:Date; b=Fp82/iPyqMjkz0EkxM2d0B5Qvos1XKh2Pfd1s2SMb1nPboLjOSHPZwajh2z6C8EG/IwW2cBd66h6/kBrYeZAUOi6qVv+lUORJDljKybFvcWybU6NLFOmlha/x5TSvvibJcm+tdmJEuJyNCIaUGQ3Ld/d4weWfcG4++o7xsgor2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSNESQyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSNESQyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD394C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764729173;
	bh=6vavib5OLORtcsvuL3fluuD9MUseCur37kqcmgzHs38=;
	h=To:Subject:From:Date:From;
	b=GSNESQyLRwOQETNfCN+q0z/BqoQl5qvzxrNDnxYoNv2LNz2m+cWF/cJhVSfqNaSYw
	 tlNNaqhzIS6NuYD5iFfRglmLfqBUOfbc1qcwzqftgMyb6Vzm1Jyt1z4MUT8qJzhFp3
	 gN4ZApZWeBjPphYPshzHVWTr0rrW4Br7sPVRkjdrBPxVhaxVJaZcUmyQWnYu2rkT7M
	 2OIF2cNGJoid0BZK2g8hyCdny7WoYwAqexLx2Z78XJSM+LZ6K1E0bI3LexvfZzYF0y
	 8xq/gx2wA0lgQFtQ1ksFXOVUZpxcHTM2xSRh8G3nCfMukFNtnW3uCMq6D4ORzanX9i
	 vg60gPg9PNlDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DA8D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472917359.25801.3843242504932065322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8c72b12ca472910cadd58abe0da850b8c038312b2d039102a585fa3bfcad6d
Date: Wed, 03 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764729173
