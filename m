Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A8F309F1D
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777621054; cv=none; b=BhH8yVTTNXejiFIvXwuRhI7u2bIcSE0qkocrux+mZqmChUa8D+osc1QYSGFyituJv7llbWrRVLk2xT43oP6az7b7NG/eHWh6nPpY9QAdfafFeXL7xjj9x3jIuybHQBfxnYtYdFgFz/HssX4k72KQnsiCPwDzsYGmN+VRYrY0T6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777621054; c=relaxed/simple;
	bh=gstqHtuMkVomyCMvt+mt27H9naztzWo6dnJhurEBVLg=;
	h=To:Subject:From:Message-Id:Date; b=XU/U0ahdZtXVgcVU+LV2lF0loimFQJmot42TS3Qd5AcwP2tuAR93Nbx6ECTlXO9TW6I1zCBeTsG1Wa9RdfjAtC8SkvEd54peYppvXuYRVYy1SOAapelsfzMM6ZeM5C3oYslGfhp+YPh6OqMpC7poZZYjmKbB+Uf5+hMwqpsY6dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITIpXcsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITIpXcsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC59AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777621053;
	bh=gstqHtuMkVomyCMvt+mt27H9naztzWo6dnJhurEBVLg=;
	h=To:Subject:From:Date:From;
	b=ITIpXcspzEXngK8xsJn5H0zEGQZ67nZCtZmtfIf9PUNBu0uv0R0EywE51UHvSN2zC
	 1/nIxNlEZZzGvtWUGrDZ5FYPHwqJRZP3K8wtS+TsXhm242OxsozW8GavEDZCZZE15K
	 yzs7MA7DNEUeSGe07a2jde/iNKNz+Agd22SIhqmH/HH85bA0Ji+Q1SDJj2bFY/6fkI
	 UWfm64o36heCHzi5mw1GL+nQs8pke2pYuWUO/nEFMm46wU81/+Ds7hT7oZGjiq2DNR
	 whA5t4d+GJYfaCSY8usGVtqK5r1H3rgYLns+oR6c1D28LuVqi4Zp2RMpi7i1uKaTCM
	 wHLl9IKVTaFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC5DFF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762105368.18830.987585255857570608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc959b13e5695baca0a13a580b85fe9be7bc0d437059d1858454436799afd632
Date: Fri, 01 May 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777621053
