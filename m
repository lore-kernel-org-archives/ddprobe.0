Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A59F1FBC96
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 06:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739340654; cv=none; b=KJM5sXxFrfLviyPN9M951ruXrfdotJb1AxHgptIqZdUtCyjYnLpoxOffaIRRc+f3wH6Qi9AL5Gu0/wPIjkLbo4J6K5ezZrMdi22UW6xC07/jG/H8A7DCuYEc7PPT8AZA8Xsug5TpPYU1S/l9iv3DFXunDbJSQGwIOOzw+4Uy5sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739340654; c=relaxed/simple;
	bh=mXQU1OMbPmMmp6sEBFzuvI/7oXS/rxRtVwLpcDVycQo=;
	h=To:Subject:From:Message-Id:Date; b=u4AHRNTKiNhT5+0PM4a01uTLQ/smQmPwG3DnepZ5srC6qx3YgWazf4Qv/u8AhaFwnplG45kyYTtt5Q388gAXuKkIly+q1IXMCcqVtk9o9/udnd2zWJ7gyluV/kz02VLf4w3iW69swAsxuq2Kv+M3P4LM4ownBqLCYQzvUaViKyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfBfb0R/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfBfb0R/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 140FAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739340654;
	bh=mXQU1OMbPmMmp6sEBFzuvI/7oXS/rxRtVwLpcDVycQo=;
	h=To:Subject:From:Date:From;
	b=gfBfb0R/8swjYBMhZpsAiXZNsCONXQgxAmBReI56qisfm5j2JeGlcNMBPoIU0bQwk
	 NX+0zBA1Qd0zQEwJxlA7zSwwwjOQ5tlS6pniNycvPveYjZscBdJKTaz7l1Ue7J6MI9
	 bi8tJvIQjNzpgOPLeJwxv3KhtTPSW5j+0yPhtVavp5Bcwzo9saTLtcaGCDNfLtwovB
	 X2mQh1mEXzUCQp38RVGVgw3XIDVhDb/U72kTz/qd93J7FZ0GrEA0wgA8ciolR1yrQp
	 UhENRNoFTPeUssaZ3q2SXMBR+plCGXXgFn/Mxn3O9kisNJz9EuASIvW7OKopbXL9Qt
	 c9IjdZ65hHtdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D244BC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934065372.12045.9811496880632305851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f33f6ae4be65172295862809d04df89e6668329fa54b6e5012075aa433b10c
Date: Wed, 12 Feb 2025 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739340653
