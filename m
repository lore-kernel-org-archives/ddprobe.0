Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3168F18E025
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764403974; cv=none; b=SIX/7JN2MpBpCm4t+gwnJjTS8E0XUDtus39CBuRp+oiNq4u3vorcw9PUfzCHfWlWSTzhfNfJm5z5S5NNXPvs0+3Mxgj63waUZGTrog/f4s68BNkem9rZ1eudeHmZLYlVGwyuAmBzMudKOsNAoNauubvg9bW1RU8MwFSfD8bV4yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764403974; c=relaxed/simple;
	bh=lssIKIs/mwbWHM7P0Tfa1STv2NiI9gDQxGMzG+zdPR4=;
	h=To:Subject:From:Message-Id:Date; b=MDRDpxM18Td1WEJKm75BcfEOBmmrAL1dvAtoGiU0/Ug2D9aXXz6C2bu6qBkDTeAWWtbzTXl4j1a1hEJssUz3cumdavM75+UmEydBeqQlhsm17Q+mrv3P4nwcPLfLIcK4ftTA9i+AieWRcJWr9XwY446Pp1hhPaeeyV4R4yZ5hSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZG4FALy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZG4FALy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA714C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764403973;
	bh=lssIKIs/mwbWHM7P0Tfa1STv2NiI9gDQxGMzG+zdPR4=;
	h=To:Subject:From:Date:From;
	b=cZG4FALypIeQe+TrOXO9dPb6DHKIPqVJAay5OpGpy6z1q3DVcMSGY1MrTMDEpMzV/
	 GyLarUskVc2HJnPKy7PqRE5K/nqjYGSrG5Fg1gnL/olydmrWDvUeGNIqF2vdxwy/BO
	 KfM+FCzHGNDAn2OXyJ7a5+X6zVT8T6g0F0n2l8pUaNdYAAJWDfylTGC3IqmMTnABA8
	 TVZBJAYlks+O7oEKONnqvEHAwOca0DX4IQ6aDRs8TFvBZ9XHsTz8T7wSanjiILx/qV
	 3hFqiP+LMD7KcOLCvlexgB+F38ueVYMX1qoSme8mY0i9R8ChDyii2saXSrIQDGrz+r
	 +xGpiMdntYfEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AA2D116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440397358.10202.14801101364442818438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4807f71e0732e398b7d93d245d3f468dcd28b355acd5ea6d74565a1816cbaa7
Date: Sat, 29 Nov 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764403973
