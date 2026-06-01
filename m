Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EDC2BFC8F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780331674; cv=none; b=SrKlo1RcaWic9h/VfstOWiTcWT1GjYl2rc4qigrJkDH5OL7bwvmt/L79NCwgJ6WbX1GheyUBBtR02fvtw1+3ShlZWiKs5WhtttyLLy8B2ZrvzyOqkvz4NxkorI2UaWe8t4rzviNr+R8BUFmAO5VBzu7HEHqRjFZz3l27QTpCeNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780331674; c=relaxed/simple;
	bh=Ox+LRlATrnRvDwFxGBybb2k8LGJ9/Q7NSro7csuO92w=;
	h=To:Subject:From:Message-Id:Date; b=mLjdj+tSWRXA9ar5wm7wk2sAsvzQmX/aLXnmTzIzRK1gYi40i2Zles1U4KoDpsNqnoCcGl0+oxrzk2HotzpEW3hRuuVbze6sjAgB6N7D6obKERKYqre2+BzAjnmr3iS5bq8mAx0ApHEJgmVpXS1wHAIo/a5wz7WvYtLBMvE7Zio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFdGDZ7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFdGDZ7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D22C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780331673;
	bh=Ox+LRlATrnRvDwFxGBybb2k8LGJ9/Q7NSro7csuO92w=;
	h=To:Subject:From:Date:From;
	b=dFdGDZ7rrNReGtZZwGnJ8U2KoCGf3DEqcoVoNs6vaW6uOazOvpni9Roz79ow1a3oo
	 U3ypbC8qn+NjAe+R79cmhrkyDfSMy088JFPJY7ykd2dnUi9YQHq1vgfE/b5GIN/wOW
	 23WHFKAMx7od7CV14ULKhyd481obEcy3U3rRg5mvGsSvxHkVThjxGQXoF6an6/K4l1
	 oomF+zOLbh6JGRbSb/ZYxunoQ+rXvRCM1dDkl+w5ZD/l5xbSSahmGvm7cYdxKHCex9
	 miazv3vibbQkIbsD6os1FmzPZjaeXlYC4veeKDfNJqiCwn+NtyBk607fl4BB99t35Q
	 Tfe8ySrtkrp2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC40ECD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033167369.18375.13730504606914426721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f48b51deb28842192de4aa9f6e1c5076c172ffebc151ff0ea8e0d8a0e7fa3a
Date: Mon, 01 Jun 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780331673
