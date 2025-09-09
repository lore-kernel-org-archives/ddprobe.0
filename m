Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FAC2D23A9
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757412595; cv=none; b=dZ+g/fat6Nj8lZ+kKda2twkdWg10dJyMX0mU+yNybDf0ACqYt/gTuiQOnHqzY3bjOlQ9m8JJxzOTM8/bNRVc9zNI6D4nluuuQwwbttIrqctfxATQJ0VW+wA1LLgEPoGmf35pxML23/i6/VpNj1wutpaGpX/JehslK5ZKY3iyXbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757412595; c=relaxed/simple;
	bh=xRS0NuTmdd0hFYT0CHcrDt+UWYF5F+MuGCQMCxGoD5Y=;
	h=To:Subject:From:Message-Id:Date; b=PnOaTyJz+cPwHygot9zm0rJ5BdQoiVv2H2bwJ28L15EtZ34MjTrfT5Da8WNT10uRDcbvByyRNvb/Rd+d6ElUCGgx+zOD6mg+fpzcjksHCcntS/HZRnWPzKYuUNZ/t/KdDWQK1XVC0/WFrlnafjxbC0fLUnElHcmFJNh6ytJ3/jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4tSJ1P4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4tSJ1P4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C88C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757412593;
	bh=xRS0NuTmdd0hFYT0CHcrDt+UWYF5F+MuGCQMCxGoD5Y=;
	h=To:Subject:From:Date:From;
	b=H4tSJ1P4VhWd/lcJ3NUkl73sY4mDN+KoBNZS6kQkKX6l+nm72leXYiyhuLqK74R4E
	 B/bhEvfbS6G2x6NNBLHAYgRTRW7pFsUtc3ztFd+q+go39F2ia0n7IAnixaMUci6/wi
	 USs2b0K7KHqVTqsNqbDSYT+jrb41J7aa6ZvxgyLf6V8T7p7udHV5R7eT0glwxv5jcW
	 77m0WA/InLr23ahwKl68+g3ZRVVDZxii93JEHdOcf4S313B7PyvGTflSr2pNEBDo1d
	 LAjJKRK6LmfGE5L7FPISUpifKwRjbtaPXaDns4hQuNfepVt89MAv5tvVX6WYwO/DUn
	 Tv5aQjsh5HxHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F0CAC587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741259359.9595.12685204030787894844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10f8bbd9a79955981a58157a75920e81f5be368180785bd573945f5d659f2ee
Date: Tue, 09 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757412593
