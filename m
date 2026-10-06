Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8218F3F12E5
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791289834; cv=none; b=bR3BLYsnm+wfGHGe/SfuSY69bpflRBejHu0ZHo6jceoMstnK8NN2N5zDzLKWXWGiCUatOHf8saeSJ66ciSQ7lXtlG4wCAiyURIGh+xNsDMRlWNUehlZo4FcsUGJT3/DjrVjLWqdW+jjCPIRpQrn4Orga3THxHOLVtroOZ6uK+8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791289834; c=relaxed/simple;
	bh=x8vwstZdMhT/O2Zp14Q+OL9mEk+cfO+LollLGakYVFE=;
	h=To:Subject:From:Message-Id:Date; b=L+qK/YkvHy1PIG7FgvrsSrNYgtkYPD0s2sGPfR8kBqGBZ4/cFSJyFzCGEhMFzqkPGwDmMGN8LbTXNF+e7HLMP2fp5FRwMoZKwn8QzB0Ju798WGSOvMBjei9X1cCbmnY01lOJNzazHIh1jvkuIDPDUbApxefdUZcn15TdSBo1TE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmNDOKOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmNDOKOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AE4C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791289833;
	bh=x8vwstZdMhT/O2Zp14Q+OL9mEk+cfO+LollLGakYVFE=;
	h=To:Subject:From:Date:From;
	b=lmNDOKOLWNJfpKOvZtfrHRDwuaE4CPXI3jh0aWj+Suzn8SO69+xawS87hq0HYYZB2
	 gnDJkH8LmSLnjk1nzGrGuG2zrQ9tw1v90hH6WTpFObyACRN7EqC9xPvQy04JIQDbu2
	 mUdkquAHCUOkiDHeOvHMUuwshOr3mfls1Srt9k4mGG59r3B+ekwnR3Dr8GQY/jWxLG
	 QdtqubWFh4t4S0cU0CicUVHyw8hz0HjyAvjE43EXDwyqjiJbePFxKVQo6jRd/zvUOS
	 Y7wHDE5h8KUgHi6n1ddfc4Cj7D0NgGQVktE1EgyKUh0w8mO0i/X6cnwa5P1wPXvp4H
	 8HlsMQpW4ufVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E42CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128983368.19701.17331672942406438881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9926bd6c8af97dcb32ed89e00e3ae229d780b088c1acc18ab80d7a8383d2a857
Date: Tue, 06 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791289833
