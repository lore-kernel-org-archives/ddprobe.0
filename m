Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551C241DE11
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790315434; cv=none; b=jsUrZiKgExGGIqlbqI46v7tPEmqWGDKir49PF7DEaQfoqqMbHWjURxR/t41tR8g5ULaSqqbS6VYq3R4dxqXSeoXkGciDU1ag4cSphou26aoNXpf+Z+oOaEoFVpzLPAsM0pZtFAd4x1xO2WqoIWh4Uxv0GvPyGnfjPBO4Y4xJxDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790315434; c=relaxed/simple;
	bh=A804Gvd/wxDMf6D9gexRQuZZU6CPPV37yYrjplgUJ/c=;
	h=To:Subject:From:Message-Id:Date; b=aTCyVR6Vf0LxgB9rbCW9V/UKPwOJdSknfLB6uTe/irNCPETQa2NO4gdz+prnET/DbA6l7wBTKPNdvnnx+8YXQmrdi60AWt6OJGpl6CkOwEuUQkDGFibZlKgfBFclhq4CvqLlaX20ay3r7+xmARYSb1kRL4AynBEPfOiEnsMtXgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2a7V4+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2a7V4+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAB3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790315433;
	bh=A804Gvd/wxDMf6D9gexRQuZZU6CPPV37yYrjplgUJ/c=;
	h=To:Subject:From:Date:From;
	b=B2a7V4+/9GSN3PV8VIgAwx94tFE25PhM2D/QU9QjzUkQUMpdyVJez0Ssg5bQKO6Lk
	 6VoKWxQEYRFZ+iQ00naIe65nmtYjYIck3Vj7l8DCRkyWXSfMUfJ9miCBM4Q50Twm/r
	 9nFfPKTXpzd1TIbhoXvSy/B5vVLF7Odu7Z2dQStV5HOvQWoYdgn+D2hFctnYN2zoyg
	 9hKfAy4LHg/KUPUkLJGW6amZkCZQBz4Q53RpzQyh6rmF0M/BAO/1O1ug18nYQEWLWF
	 zOfAlkMY9iISI22raVcPTq51HwV1TUjkMaPoEm2mmEmbbnBbHi0UB8AQSEru/WqX7p
	 9bwx0N7hzHXPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA276C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031543368.32259.3492352440639781843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fea072a9dd550e19fdc882ea6dd8b386860cf5547af41cbe55e9d335da591d
Date: Fri, 25 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790315433
