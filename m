Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4256D8F64
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744984794; cv=none; b=qrwoxIUpoMLMY0LdfmpotZ+Qxqy3nUO3v2ri4Knauo0WqKEIzaH6Kqc6G/3trOqmWDyXHGi1YRZ8jOK4Oi9vlSZSgdhUZ5Q1kstPybnUfaoai8W+Wp7CQK4yu4Fm6B0cLYnFiBJyTK9bjNeQR1WHm2168z1em8fHw5N9BYf2/XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744984794; c=relaxed/simple;
	bh=fYt8/lNKMxf+gqMhXtn2eDb62GDDuYrTqvVUnk5/b7I=;
	h=To:Subject:From:Message-Id:Date; b=QLhC2NWhVSa7tfTJM6/GPq6o8jDhEDzPAodoK474ORgAwjmy20aO4cjyenoaXS6csb3/AOgW4HDJXCE+vcLnlOPRz0MdcdCk1SrB66zr/0Qvncf6DUESq3nZKQ4uWCfFUnBKRezW9qjzTOGJ/D0JvNM1Ko+TEaYeudWVpGA8kCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYFAYJeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYFAYJeC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6051C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744984793;
	bh=fYt8/lNKMxf+gqMhXtn2eDb62GDDuYrTqvVUnk5/b7I=;
	h=To:Subject:From:Date:From;
	b=aYFAYJeC58ZfFA8qJRehggk6rdsenndG14oR2D/bq/fS161X14so8Q11ixoAVwbIz
	 HwwfSxhPF2hIMXV+jeB0ghcyHAVQPE1+Gb5DsYDth0taLHXcYEV8fL8vIOZBKDfHic
	 PaTIq9yQDlesmEb/k9fWnIqcaRvHqUtDnNkhqP2v5bFnhkI78afP1v+EZ4N03oh7D3
	 DrGj8zRxwY0jqvYSQy8hT3oDWtnOjJ8Qh9IMJRz4TOewKTooAsib03a4KjGTbA+Dbq
	 gy4tTtRp6aZIZd6kamioQjacrIvMe0FPN9cm6Hgd6MAFk9ZRClAFeIxk83kFspOleE
	 fAsT203zzTU0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A82CC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498479361.18530.6383793543959320254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07eb7d86fbdd7fea195efd0716c63f0a404aad0d18ae0ec7d1280e6ed1197324
Date: Fri, 18 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744984793
