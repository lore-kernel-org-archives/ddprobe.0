Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC2F3D1CB1
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779090634; cv=none; b=Ad9gzNzkTH8PrYx9qQH54ovUBmIE1sGnM87QaNNJk0PAyTbOCsIphJBqjI83buTt/3viX4IUMnijOgZMZGj5JJ94zKSbqCzXjVQeBXrAuh7JPjExkAvCTh6KXbFq6n/2q4bIkXRBbKxmMK+nAwz7FW8UfagyZLmz3/d+d7oYs8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779090634; c=relaxed/simple;
	bh=wZJvw8SacXGDokq474mG40KolGdTDUGzpCN/j/I+n+4=;
	h=To:Subject:From:Message-Id:Date; b=QDyEoxo2ReN7h7Rya8n0mfX5c5m5DaeLLngBJ77b6a53LKUl6B2r52+PGAybUuMb1HtZwhNfFeaoz5kTz3KLHRz1ZJXfc2K6Wr2nvYOFkEuT0BllF0OgOFxOoornskhl9vlkRaoULHCyxIf417G8dFnLFmMqqdL1qrFOg2RvCKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvvh2QUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvvh2QUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D422FC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779090633;
	bh=wZJvw8SacXGDokq474mG40KolGdTDUGzpCN/j/I+n+4=;
	h=To:Subject:From:Date:From;
	b=tvvh2QUNwfp5EunxlrwnzZ12sQlfrs8Zjp9JIM12DXVZhcjRQV/b/O7xkCH9zTv2u
	 tWRX0AFEaStEPQESnlAneNaUEeElq3Glyjkds3rtJSTCFLw5Us5eCfSe6knPQaNNnI
	 9Fmjyp187enq0VB5xFcJoXQc+kGn24cVgODh4GZhoUNB0lpFs0SN/zxtk+lhnVGIvk
	 4xnCkcFpuV/o9nrUUUS8N+lE7zFS5W41C9ph5yGJD4MneMFUwyCU9LHrELZ8pu2+E3
	 sO+J5iS+EI9a3OdOdswdl8TzaNphRfMfPsqDbYQLnBq0EJs6ZFYexBDqgUMs01qqIo
	 TZzOry+e/xhfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE141CD4F48
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909063376.10596.8792968453872404110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b86c1e58d7bf8ab9b3e81abb3284e93248eb47f9ae559e3ffd9b35b765fecf1
Date: Mon, 18 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779090633
