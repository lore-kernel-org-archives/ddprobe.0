Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E742BCF7F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786824034; cv=none; b=oFrFLDjZm4hh5DAO4sFFTvSbE1PG2tjlPVfiHD4NPp89Gna3gV261obpE30leP7NZ+2h729nI7gSlIsfb0NipAGubwOHpgBnBm+liV8hXTe5Eja2Vd57i1fL96VmWImMIKGV+JWPRSBHj4ZXwESwhj7PSYO5SoXf+Q2GIYGWL6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786824034; c=relaxed/simple;
	bh=Oq3Kkd4Pw77LCSKdDlozYSw8CPqRzJq2DCFrDR+91k0=;
	h=To:Subject:From:Message-Id:Date; b=r9fxObH2nFwglZHdxGVQz+jKpFH3KdtyBLLSj/4ozkQ1wo6TBULXZ5ShlqYq4xtoZ2iNiB9uLlJsu/peDZBuh4ShhYpkkL9C2kJIrOo2jIuSYEe+UL2UrNL33q9rP6KMpqfjxNjVGLkRlQtcMiSuBxsKIlmZoPLJ7YbF7HyNgT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzGWaeLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzGWaeLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2878C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786824033;
	bh=Oq3Kkd4Pw77LCSKdDlozYSw8CPqRzJq2DCFrDR+91k0=;
	h=To:Subject:From:Date:From;
	b=BzGWaeLrXTrzbgbGUCCg7WerwXcbY9rBVurmBy2SmDzRl+l8Vv08jGYu4WGUu1Vye
	 5ODMBN8DZEmV6Z2ip5NDFaXCRPlH8SiKTyMUhU8y8P3u6ClaO8Q0g0HbKjiD4aBxIA
	 tXVq61DZtwORi0Hcap89IcCfH6NlHdCUA4tJp0GbuyG9tWRAdtXNuvODBDlHkONf5h
	 IJwmHm5v6t9py117jt0x+kfM+u3iCrGlt2isjoxiZvUDR30gIv7E8XzjlWXC4i46RH
	 SfIEvtGiig8xY4LpcFi2acZkIFIcqe5c7KN8mMoJO6vDDwOI5duxGawlXOYI1viEtw
	 CIaz+gYo5Rg7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F5C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682403369.13555.7460748295082084654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f34026ab68d115ef542f15c476bef44d9f72a8583c9ef1bed66e9262a6d9e72
Date: Sat, 15 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786824033
