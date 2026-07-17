Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A59539281B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784297915; cv=none; b=fZlmnLeapsklVNtTCDyYjO02lq97zKI2oqg+tTToNNb0qmYAz5GFEvmenH6ySXhzenKvjF1XzdwJSd7bkn3YcGDUY7NPyGl4DYnPWDQlO6BgqwkWfTeidigs+zTbiLA3jgYKpFWCdmTVzUxq0JVdpZxrW3rFjsr3W2asGwi/lS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784297915; c=relaxed/simple;
	bh=kd2N6/bmPxxgP0NOaw2fEOLW3fIUt0kWQJbYw6Z0HVg=;
	h=To:Subject:From:Message-Id:Date; b=cnmVvzMvCr1GInI9778PqdXxtfceUtTAdtcXhib2050fy8juupEVCmgFMtte23PeN95KwLtcJYtBg2HXKxwB6G3vr3TQ4ooVV2bABHM8y9HR5uuUCW9JvcpAqzlaJSPN2Iq48M//YAKnrxnyALPAuyIwgS9vqaMzSrPT4S4AQ/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1TQGmKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1TQGmKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7806C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784297913;
	bh=kd2N6/bmPxxgP0NOaw2fEOLW3fIUt0kWQJbYw6Z0HVg=;
	h=To:Subject:From:Date:From;
	b=Z1TQGmKa8opBt8gPewi5tRCzoVw8nnruhq0xL2mkdPqeWmvLihreknmdFrIYUAlfP
	 ocSPz9obahe566zCgKkHwRR6hGuEPBkZtnL/NfqyPP6oLxNWV79nvGoF7uxHYoWmXI
	 sgz+hq6aqr268Tki3zz9QLkG0wEsDhFjfWKL3anGLNvL54MgndJQfapIHZj3zFdRMa
	 ZYyKuH7p+Fzv55esb+4Y2gi79+94ADSNs1Lha85T6gJGULDf0QYQ6XJMVX1GlJOoSc
	 YeQZe2KjoP7VGk1DVvAMYKc3UQQ7XGBa0uRiN1Ain9INieOSnxrlkIoG0Huatmmdxe
	 wfuSfXFH/Mx+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02CEC4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429791371.12332.17870317713569757345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1261b663adddc7633888b2570f42f0fda09a8a21d621a98c20fc42902bb82a43
Date: Fri, 17 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784297913
