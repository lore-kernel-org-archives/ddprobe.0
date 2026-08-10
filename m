Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5864A49620
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786321834; cv=none; b=CvcxL7ON0j1lie1bPLdTKwZfmGswkENOqHAGdlolcH/1ebXG2sXwXrYBD5/xFCVmWvouIAVK+nVYMbFReK7zlVfLAm+rqz7NuxN1R5hzQtfHB+qIdWrevIQqp68f2POxvM08Y8lOEyHZ1VZXP9TWzJJBx9lzuLv9zi/BMVHuD3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786321834; c=relaxed/simple;
	bh=G7m9BXtfjo5Eqqk91Z2Vgxv1mEkSdcLzUqzeEu36WRI=;
	h=To:Subject:From:Message-Id:Date; b=opbfc3qu+sQOCBpCavcUCJT8zM0owS8AdfBMSzvKrc3ecy/BFQLF869FWyJVQ5jIAbBH23S6tVLcqEhKn49mpGMgZrm5l5n9ic4SvCCUYqPzgBvTSgJDsG8C31Eq01uc8p74dryk4i5GdbirnAhSUE6YuOUB8neaUm+GiO65fJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGp9kWP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGp9kWP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96CCC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786321833;
	bh=G7m9BXtfjo5Eqqk91Z2Vgxv1mEkSdcLzUqzeEu36WRI=;
	h=To:Subject:From:Date:From;
	b=bGp9kWP5sbs49bE6UunE1p2bX4vR5dDVIu1+P0lxkUV8Dfb+BFUgdS4ulCmr0GaoG
	 z/btyObKo4BPp44lRLe1iaUeh0esfZjb8eP8/dIuklVy6Ev2/dYLuxQ5idoQkwBLai
	 PmrJ/UOXVCvWu/0LyJHg8BsyI2f3IZIsZS7MhKHOOoPCwKH4+O4WWxw0ZM44TqEQd9
	 mQlsK+3JuJTdIccyKBxSfFqkrzcY/xRH9WvcmCwX41XVv4oSjVCJwmXnfX+W5jdzwe
	 AhnDKDfe2Yxa949fQZKhzNzXBCHJqxkXCqQ2Jnc2XiK365CgYrA0Nj+q4fHDGT5BjY
	 vp71BQa8YyB3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD13C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632183368.4582.4421212959604839498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8294e9f65b238d2f1da33275079868228342349e5a8c83c7a7d2e59680040a2
Date: Mon, 10 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786321833
