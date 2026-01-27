Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC32341079
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516034; cv=none; b=j+3QYuCkwCSKh9qH/HhiMe/qGl8Kv64PHfdaByxzJHe7/5Iv5CItivNfOdziUjy2M2Hl6vFpf6hzUcf8ZmhCRIw5P2SlS5ex5V/shn6NLy5Hc+1ndIxcIQCOu8gsVcHoYrt+ymZ7AY8SucSMamuUZrlad1ourc7zZieBvS+Ynsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516034; c=relaxed/simple;
	bh=BcMKnGzsF2aa1ePZqn0pb3ZISmqW9iXfYwEuAh363hg=;
	h=To:Subject:From:Message-Id:Date; b=mUs4rgXloqKqOHSbJVyMVAHY9FAi33gNuxHA++0HAtO6mQOfyVsJUX1dPgKnnYtjHEA48OYJBdJicKEUWzIA7xXLTy/8+0rTQObt1xs1NQnOkg248jfiP7XHXzSLHLrVRYwbMH9o9zuxEBlQxsZ29Ztzzoif0+t+4WUkraC4rQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZRbMome; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZRbMome"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41B0C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769516033;
	bh=BcMKnGzsF2aa1ePZqn0pb3ZISmqW9iXfYwEuAh363hg=;
	h=To:Subject:From:Date:From;
	b=iZRbMomeAg8wapT7WGJJvvx/Pt4lkoRALItrRJCJLD6h675rJNWzph/uqShlU0EY+
	 kYJ8u20bQQH4tUCSxo2m/q3LNdGEgHFh/aR8xou6yK97/rURH/F1DZ6BBMKUJeUEyL
	 KYFBczX0VcxrB+w8+mJ6iCBvQ9ux1Zokjmi/FfKrJJhGMOfeuzXPDb95BJhnu8a9vv
	 ptSHVSgJbz+FYXzR3itoIIKM5qSzgk14M4Mw4mqN/6Svk8bzIBAkv6NrlO8wD0wn4U
	 lUvbDWlkC+a7BQ19b5gsezd432I6ePOhFI637r04UBYlf6+eaDJvz/RTG0MfMzbcX7
	 lEUzKtzMGT3IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D741D2F005
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951603363.7769.13170538648047576406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67241deed997a317caf495d9362e292484285e7b75495f55410fb9328f165c80
Date: Tue, 27 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769516033
