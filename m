Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B7644C4E2
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790265634; cv=none; b=g3v4jzgvSdrVdCviuxrPGlw0hrTjFDBZh5QkzrTUqv7hYd0TvPS/72dgsTxbSDeG0iSgxF0CuoyqdsotXthNDdpXGlR15zPif0LHJRgYMSemNC720HKIwQTi2OMyRRhBy76pdzm701IT16luhhfoRiO0Ze30MK+/Hdv2OeVf4Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790265634; c=relaxed/simple;
	bh=FKc3NUfYO45sltU5ww0E5/A3BqzilY9umbe4FmMM9SU=;
	h=To:Subject:From:Message-Id:Date; b=sCQl4nsM79bXeYH8yhRCd4sdw3WsgdhgnnuC+//vr9ArgZJ+xJMY7+qRyDFy0MbFMdPvLtU4gLzCjYJfD3SAda37FhVpF7O5FvLuhuz6uGupX85QTKfsqelCNFOzj5DoRREfofZGylPtBFjG5tW+0oOcc4oxxPVy2ZSz/1txBgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keX+GIZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keX+GIZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA745C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790265633;
	bh=FKc3NUfYO45sltU5ww0E5/A3BqzilY9umbe4FmMM9SU=;
	h=To:Subject:From:Date:From;
	b=keX+GIZByv8oFYNj+WfRP+fJIl/xmLTgnD5ujwrm/ndBzZORPTTV8ALSiO6lZSMxP
	 6ez5b4UQ0oD1SNYRKJdZMjJunDifPoAv43Pdq+seDdLnq2YA+Sf76twAV2btVuTAY9
	 cDbTac3bV5kdrOVEVHTQBgEoP8nTmnnpf0gi4VUgMhpbuB0KVtcIUufn0AzcYSgSqC
	 LclhqwcRVXPRgWCTrAKHXI0Q1tUNKmvH7qhuvAz9oYbkCk52ITk8Q2xXJGmvF6NIX8
	 UQiSlr5GeDRSfNswaTFDuwRnoDOEBAcU6aB6xs62JRkq4gmJlv4VHZuCbAFi7+KNfm
	 E6V1N9h7TNFmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DA2C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026563371.24451.367969249628436301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d900a6922526878ef424274c488cca81699b0bd9d3a887b18728e26ad5536e65
Date: Thu, 24 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790265633
