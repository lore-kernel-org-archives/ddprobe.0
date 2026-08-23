Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C55949364A
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787491234; cv=none; b=Syqi3qBnep3eW0Y0/SFUvPBqq6Eb7yaa9v6WcReF/RlHG1R2zeTZg30GCbsDUkQGBl8Z8QIFH2KIYep5sK1Xq31J/VQ7QUXAJnWoHSW18DFn0DeUgIa24UrFnWJVo7LSLXZ37lSG5KN5slAZZCAt9JNSzldST8zS8AKMMdkxdq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787491234; c=relaxed/simple;
	bh=0YEOmuFGgyQxCfpfbpVkLKWjELeJV1Ziv+a8yWLa0Pg=;
	h=To:Subject:From:Message-Id:Date; b=h20Yo5tnto+gQUGtMleA8cieYyLr5+2bhs9D0+mMUzRbshdSZS64fsgIq2MaYSxowQuPo2R00AgM+8tXfR+ehFoV70ZWFGnxqCr0MeukAlt0Mmkf5SjrU7EI3IZsD9bgy+Xll/m9gWkubu0714XaveotZBRKejKPbjYybtdOMfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oit+uwmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oit+uwmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2A0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787491233;
	bh=0YEOmuFGgyQxCfpfbpVkLKWjELeJV1Ziv+a8yWLa0Pg=;
	h=To:Subject:From:Date:From;
	b=oit+uwmyh/rdaZt6uMvFWhlf5uAHhG1HFtxRC9FkkHpcFIIG28RPY3493LjX1GGne
	 U9n3C6Ol00/0xtB2qhvYw3XfJiW9ynqiGHPnlW9KyZo5NtV+NttA4yqMRy1NZ4D020
	 PEvi9TMPeTDi/NpteBPAj/CVSM1E5BQLXnX3Uf3MVr6eWkC5+LXD6CXuYz8Y41ytEp
	 3uyyAiJFwy5Z8ifmjQ10obJgROBF6T5+nJE81o+PYJGdJvOrDJ7wNZXwL+kLcmAU35
	 IEmZiap6lCMesFM+PJm832KUFC5L5LUrO9EGNOHg45X0TAt5osRG/krAcGeGwTzjbk
	 W9VaiXXRD4l4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA756C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749123368.7617.670064107941589074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca342662cd9a5a7b8b2ed92db227870eb46380988dc375715fb03dc5486322b0
Date: Sun, 23 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787491233
