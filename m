Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFE833F8C2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785492635; cv=none; b=SUNYeADzNsheBea09U6uEllsS6XIDkGp28XER3wINFmpGpW7lubQzQ0wqdRQ3L84i2uKosOmEzrhpUEeuDB29fNEQZ063bThlykqYXy+IbjLUAjzvNJJGBWZ2idkZyVeF/c1LGxgdiIbDGwS0o7F7Ige/RKu4iI4dTqt8Q9QQao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785492635; c=relaxed/simple;
	bh=JnbDe6lVl60pUYqEUqGMbQ+PvfdG8Nfa8zGeboshfeA=;
	h=To:Subject:From:Message-Id:Date; b=nopklJPm7+TFjgSdbW2rgHekj29eW2sSzHWFn4DT+7TCNv+31U7eiy0lj32ckTVtJzIXi5ia5391ohHdayatOgKvhsqwIQb1m8PhMNaANUF6xrsCS6tJ4nRtAW7yIzT4kO8IHThDWwBbvolPGQcQj5nKJCM+QcaCxaRMnq+YMYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdrC8DBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdrC8DBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE20C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785492633;
	bh=JnbDe6lVl60pUYqEUqGMbQ+PvfdG8Nfa8zGeboshfeA=;
	h=To:Subject:From:Date:From;
	b=bdrC8DBN/XBRXKJk6xuS5dWIvo/xVy3xZXP+wET+nRBwccEdRrkaojCbJ1egQ5519
	 zAJzNINLqUchX2XXqKZ3iv5W3XrPmWKdsvrpXZ6fMa5pAGedc8Z03uTqg+h2tThY7K
	 ZNhI7vd2o8X1VDMwhMXEUH4Hr9ozuEO11w7Jp18SCE7y7lwvyvsTzDXeQJcxcNztbK
	 dnFp8bg4IzKb6lNd6RtvBGCXbatq1mgu16/89BwiGNU1ZiuYMHKVsRv3fdL+glLSPE
	 XZ70iZG+gFatdK4mQ43Ma0p4E6zVd1gQ4MM/PbIXg1h+JcB1/P6xngdUkyrJNFRH8O
	 ucrOUtM1IsE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89A4C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549263368.15568.17253867156737157228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d37c6fd0ce0f68e9e554c38b55846eff8dbb2a387c0532595b5a4add8a5a07
Date: Fri, 31 Jul 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785492633
