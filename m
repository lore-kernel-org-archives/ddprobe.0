Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2242ECEBB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769204634; cv=none; b=YCSFZdFRwcrBb2L30f7p3y5oqbN+he9DhV4A36wGnoeRghkAjI+5FuuQ7mcxJFCTPeMfOXgOtjpaLEVaCtUkCnMo0Vgf/jDupriXwHlBHdXn6PmpbN7YzeiY0+84+wZIniIu9HSZtBqaJ+fknKvOCcrX4n8Ei2CWPA4knphq1to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769204634; c=relaxed/simple;
	bh=lqZJIdxH1Lp/WavS/PiIj7bRkUNvkh2kbh8gPE/TdAE=;
	h=To:Subject:From:Message-Id:Date; b=uA85M5nlI1DhwG9X8KmYhy9yH7Bl0nAcE6vAlcnJkbhdd33QX7cC9jW2Cq6IDtuVucLwMupv6ndP15+19GeO18su2ssWejNtvrfvTziduN3U3tTI1ztngrAs8Cq203g24RwpV3MgRP8y2vAJLHibmz7772IkDRnHv2NDOYO90lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGWGuoeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGWGuoeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769204633;
	bh=lqZJIdxH1Lp/WavS/PiIj7bRkUNvkh2kbh8gPE/TdAE=;
	h=To:Subject:From:Date:From;
	b=bGWGuoeYGdwo43q5bmS138B426zJjvN26EyWw+WNbdomhGmvQB46uiTkL0LL8Rxwh
	 tyolVqMf0FYhZwCXfWRNVsd3d2JDSP4C/1Av7Ek+TjE2UabQRIKPILgZVs/5n+u56N
	 Iy+sMDs0ZFHRwU6kufX9Jto3vTztdArdWr6zh4gzzenZbWvAjpzmdH7elKfMwSclpB
	 flIlXmyyQu/bAvBG48wm6kUAkSeyTIct1xrdArv92gMkW2OAZgUUwOwq0KfyP22mBI
	 v3fOkshqdcRo3hfcfQe6Y6uNc2qpxnB7QEXOpLdKdnrdiMQ7BeYL2BAjH7E1WWXh5Y
	 O4SI0gJMhKLxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F42D778B9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920463357.11231.4077765107264732113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56be3996f7b02c016b44a7f46ab1484be3d8c51df85d5a03b75557956107eb6a
Date: Fri, 23 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769204633
