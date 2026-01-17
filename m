Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB352AE77
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768650234; cv=none; b=h2XSqrB4/oukma8ewHYSnJOVOdpvHzdcBWRlMsFT3nqjRolHabWJ8fxdSaYz1GqSRlE8Sh11zJqnwLQAPXFrCE3FCfNdKOtDACV4q9JMOVrxHLInBi/g+nTQcB5GuQvTuHG2v1qd7jEn+s1ebODDT263FfO+2Q5xhN5SdENwA6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768650234; c=relaxed/simple;
	bh=/uZJ3G5zzqBMX6agAaoIQ81LFYexRcevJaJJVOvah9E=;
	h=To:Subject:From:Message-Id:Date; b=YkZw+035QwEs70te/G9iC1+toI3qmPhUULDAXl/DE6zRovZvbV/xM/7dt7BAvkWcQUTpLl6zKTW5EVbcsSrtwXw7Kn8VDTKDO82Oj54Pe8L7Y8cHtHEoOxd+FCnYJ4do1EE/RPh5OjhYgSAeN3KYqTX56w+LdsexV+jGTfIa3Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xdx4Ul4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xdx4Ul4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC68C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768650233;
	bh=/uZJ3G5zzqBMX6agAaoIQ81LFYexRcevJaJJVOvah9E=;
	h=To:Subject:From:Date:From;
	b=Xdx4Ul4YWUVIVnZ4gUHcWm7tTVIw/+jB+jRn5c2BwOFnAwDAMW8irWO930Rr5ypTp
	 ynRV4TQDnV9Zo2hCnOgGnyYQwQXxvJmsIy+VGNs44CplcZPqQsz9HH6nW08OCfMMyd
	 oMz0jbMgZLP/ZmVHxzCKBcz378Q9JSMFpQ9EN7VoyEwT/NNG4KKrR9B1E87GzGqSzb
	 SLdq17alkoXIuxUZdbzbRlqmQd98v03I3l/ZQvTo8TtCkZP7+FJmqfv6eehrEwTsVT
	 O4U2Ps/i76uFVKNdqHhxasb2tJpN3cLrN01nvW+FdwOFbnng9Omh9DOqB918OmAH1a
	 cw1s8C2Z0TDcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF89C98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865023358.27309.5049614000216907568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01c6882d5ca81d8f8f5a3c7193a9e53142a8901fafbcd0643b10a579d8acddf
Date: Sat, 17 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768650233
