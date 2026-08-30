Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F272F12AC
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788085234; cv=none; b=Qiq6e0akciczwJLJEByNEw9p7/0onFcbA0Bz9Bm2Q6ZuodEvI4gDwz8DUKwiH5MNiLtLSXKlX/XR4NGer8OtvI6hFJvOEf/mApkMVPrXlma493E4dSqbl6KZE1zlEsM2hQOMxoeNMgDb0K0s0y8LUfrdv16j5l1nWoFl4HZTq5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788085234; c=relaxed/simple;
	bh=p8fmQHUIKSXvamhtMXONWZt8akgG9COF3/vTWIk/Y7U=;
	h=To:Subject:From:Message-Id:Date; b=hIJd7UgHEl9PnxrM2ciI1WBXFortEd/k+dx3uHXCHNRdTXdk+gahnYATplVUk/xU7eMe2DpeB84xEHWvhXvcLFrUGbQ7qEL0QgFb9r48yJoY+EiAPae2ixwlNLllhPONgtK3g773mIGmi/TL0F/n/eCxlZsEmaG18JZkUoU53U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq2t1fYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq2t1fYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A60C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788085233;
	bh=p8fmQHUIKSXvamhtMXONWZt8akgG9COF3/vTWIk/Y7U=;
	h=To:Subject:From:Date:From;
	b=Gq2t1fYapbFMbMQyeywI+477qQjnXFAPHQKFWzOXbnZU9AqDe0D66JBGnHWeit6I/
	 SyR7Ib4TN2bSuI/BiJEt50TOpQ38w8KA342LeS1cQsq2mDEVdhjJE7eT6/v8kcP8in
	 0nw1b04ZAgSaCDhkiV8bRK6lTzH3DkiKSVK7a2Uge+z6xjfAw2+UXOpWLPQIPNgztT
	 cPthd3q4ulFTbBbu+vxUVD1hClnaIRhtCTx+1jCABBqRATuhiEg2Jt2OViBFn8cOyU
	 /Q/xtRiILRftHcrg4mCkoTvIKLLvzYL4m3dEyrYUyefq+WGITjdS9UhIuPPyqKlEnB
	 /LD9W8UVaR+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA622C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808523368.16219.11563394339763222678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00b3d6bc1089dfd06d93dde0a4207d1b8e113018372da9d6bbd2cd1f3810c66
Date: Sun, 30 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788085233
