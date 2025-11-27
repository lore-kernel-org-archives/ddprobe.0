Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A5123372C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764232974; cv=none; b=XKgLikV9G5IrYEpPYVGRjr916P7AW/DM+vwwIUSH5/koI45TiqBK8fRrCbKbVpTuCJjD1rZpKeOduUwlRhBH9BTmJU+rrUn7P85dEFWGq3flI5KFwIraQNz9OdFxiKjL+TLI1/S6HEyoYU1YvIYD93fb5dq4xkgc/cEahVnL43w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764232974; c=relaxed/simple;
	bh=7eIk5b4y7/6k4N0XGVyPHejEQICpVWbJOAVkiowl4XQ=;
	h=To:Subject:From:Message-Id:Date; b=mXMymA3bFwFgahLxKp1DZaa8FijKorAtd13CRNeoOi4EFbYgdZ88DjXjxwP6I2yXlIaWrVAOhQZx1y328r9duxUxxJDD72wm2BWUovUoS0z7/adEiwERUCwxsj1wk0rCOHHXNynKy26QuqzhgCvqBebH6PPGebvsuRdRXZ7ycP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJP5Q5pK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJP5Q5pK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCFBC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764232973;
	bh=7eIk5b4y7/6k4N0XGVyPHejEQICpVWbJOAVkiowl4XQ=;
	h=To:Subject:From:Date:From;
	b=SJP5Q5pKl30UsSc5/Opr6YTdmoQQhNhbQKT0rkzkB99NNva89tbUaj4sgoz/EZhbw
	 ojXgcUtFYM77mqSvt6RZRFOYdH++69DYOO1hyY3ojYCgFFcBFsk0KZDWBAGnrgOqrH
	 IaAnwqOOtNfZlzbBI8QQqh1raaTadVG+AJQKMBMfqi4/wJBXUuPxr5VTibungFOHQO
	 KGzonf32jnxnZ98FZSAolXE38LYt9TFjcdiuE04fFHNxIDwQeom2swi5o/ZE2jESnJ
	 KqDbOiddrPkf3p8hwV8mMv4jjD3cUYoOypDEAQkTenFhoP4xZOUZl8RTXRYnKl3Tt8
	 rZB5lGMFVvASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFCCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423297358.11541.85940073938442657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66f096cd22972ee231c6167efa3b3b0720128d2eb109ffa486bbc0c758233ef
Date: Thu, 27 Nov 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764232973
