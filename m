Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFA45676F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717095863; cv=none; b=Dn9KMKhx9lhZ2At+PoazofGTkSCkCsT36QNRe2h1tikgt9Mg4mMEmmV9NLV1RAL1Ww5CtYSAlW8H8t40s/r6HfL4Fqu80gmpNgrWb0oghu18tq/dlcaECRts2v7JOCh9lRdVFmTrmLM3gq2O9GjMUpSVXf4TuF8Ol/wgIwUf/m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717095863; c=relaxed/simple;
	bh=ZVOfV7WXEffa42f8RaiBAbmTca8YorsBVRgjWeeNNd0=;
	h=To:Subject:From:Message-Id:Date; b=f94AT8aQDbEB6qyICeKGxYECs3geOgJ0+9gC+9mNy03NUAynx+uN3hK6tiZ/EFAadfBf5ipPNlUV6gDzSKv2/tsX2QIg1xCvcbgBmkotkUz6y2l9XybkKh0/smMrsKlo5V62/yqwFaSB68AWtXYJZ7Yl2tTJKF4mCL5l1v/4lIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALfpaoj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALfpaoj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFEE7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717095863;
	bh=ZVOfV7WXEffa42f8RaiBAbmTca8YorsBVRgjWeeNNd0=;
	h=To:Subject:From:Date:From;
	b=ALfpaoj0nGYmOKlZS+6g9uEGM1R0Y8IyOLWq5wusw3IrGkF2lTy5E+C7mc8R+dtNZ
	 wPNvx6Itcw4T1qIPV9j06kMcHxJol3NkDIY1gmz2gpRf08xfQTcGanXHh0tNXDHV79
	 Tz7Rd5WvrOGamcgBXMT0rMIosyrXjghWP/zdxej+qJsyO36hxJI0uRzI9F0wOduIG+
	 X3UXcUL0UgvGSv6Ss43ssD5nsY2F/Nc0s7PD5ZiFvHyGjkiIQcLpp4KipjZ9BrrDXe
	 6HEUSDrbiN9aApi4rNLq/KgGatZ7kmikzKkG8soZnV9IFnC/DMCjEnaTPXgxf2fFYf
	 ZMU+QTmyYx8FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D415DC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709586283.24001.1093986480768339979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2227694e7fdf2f7226485d96208a9a0428e96ea6ef3e81760da1edaed30407
Date: Thu, 30 May 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717095862
