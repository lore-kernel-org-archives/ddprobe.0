Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6391A17B50A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785093034; cv=none; b=Tx/c2B7sryrxi/sWJCFe/DTU0u/XtFkSM0xKtaNn8KEsLXX3hF6J6KdN1hj7CLRybaeI1TqAK9I1gHz9ZY21emX4btC3hX2NqZEnhpDWs7LBiOGYHw1xKi6GV62GOwbZ8PPDjTpd2G1FqYJRrhzWhVjme+UUVqZbxb4doMtQ7JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785093034; c=relaxed/simple;
	bh=whD1IOZW1uzvDYgGyGHSihZfFTr51QJtBrGzBtpWvWM=;
	h=To:Subject:From:Message-Id:Date; b=eKpzl4z6hIzEVEC5mTUM7jnil7Ta1pZAH2/Fn3n7LSDl0LVGAAGZxdr0ZPqVgnLp/V+0KAfHsYEkTZOwBXlR4irHpnaavtaQE+DOa3tF8TwGWOTHlY6waomE+1Ri0EKXRiOcfR0jkrwFFp5hhnlBb4BMGhkzFIuSgA3AkFPjPQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7cOqaiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7cOqaiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02B1C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785093033;
	bh=whD1IOZW1uzvDYgGyGHSihZfFTr51QJtBrGzBtpWvWM=;
	h=To:Subject:From:Date:From;
	b=T7cOqaiNqHaYa1t2zWCxPm18uMknm773d6LgdZKbZAPaq1pOrMmS/XB142YaOQL0W
	 Iwl/jmXhKE2aKAU5zwWc3yS7sUaGQjqCTUzS3LyLkZ14lMULSLSEQMPSx/cZlfsgYl
	 rH/OzSUZMFU6suHH1dzfYFHS/4SJidJGAwjW7b1Ta3NV2k/g3IPxfNAHgYe50zCBDX
	 YLyWBkwplRUP6EIOy96z2ms22hUPmBUQpt2AFDSZMp5hvc8FxHXYvG5447+YlrH4H0
	 pc2W5A0ySU4xKYdBGymeAVetwE+GiQDZgz323XJhhi1H2EPFV+x0pdox9Yl1EVlCe0
	 /7crqPMw6HVNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD515C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509303368.3911.780589640217741829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c0e239ded4305009e8bd6f5a5228abeebdd445fa973d97682244a496bb3e70
Date: Sun, 26 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785093033
