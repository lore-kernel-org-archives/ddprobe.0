Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D2E13B59E
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729723554; cv=none; b=qeWjWyfzLiAzlbYYdxzZrN8eA/AjcrsftITPC7W5YiE67NNJDL3udybDh4Vnb/tSbE2s7mx41/IdaIc3/1Xa4lXmtnWwehfsXtR423V3oDwWGpduN94SLfqpD3es7HXxm1weo/6lniFJtpokZZsosH6iFS6gouGEUIVYyXh/S88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729723554; c=relaxed/simple;
	bh=xYWRMbpYHexIf53T0TdWrJuKnQl5ptlRpNcmD3ZvWsI=;
	h=To:Subject:From:Message-Id:Date; b=cEjs3nU+XWnIChV+I1YSK14AgXmJuUWBOHZZriccBaLeX1nHzH3SEMOZf/kU9N7U5FDLQVTdZ3Ril6bt+qGcA/xyNDS1gZjeh+PSPtqWJvlNsYqw90UZ/wdkV6h9No00JxgJipoe4rrUYIOXjzPaFpwGLfm3yfe/HTjGLb8132I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWu8ovOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWu8ovOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A710FC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729723553;
	bh=xYWRMbpYHexIf53T0TdWrJuKnQl5ptlRpNcmD3ZvWsI=;
	h=To:Subject:From:Date:From;
	b=YWu8ovOlc9muCf4L/31voj3f65MQqQmUuh1GnSYzYKDl6ApPpINn6ZE8OhjoF7wYf
	 2O/L4eeuejWJwxfTd6rqluRtwjDqVcYQERRUyBebng9FbYe9mtLA/8YhwyejA53T1r
	 UlucfV39UWUHdvRc1WwPs9hx31utZgD0EiwiHHfuskzeaEPyu/eair0NXPQlKxXWln
	 M67maHs3W4rUDB/V5hpZtRmO6IBKgVq3r7U0W3DNmtBb0DvlBt4EeNKUtXafeKmA74
	 V1fUOaH9OKfyNxqMpKYJNg9gWlmj2JJguh4INRH5tsW0PmMv+udAV8Fqi1XJis27q7
	 8dnl18QrQvl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEC0D0BB46
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172972355362.30031.17905367996181609401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45d2fe34db97a9ff4711e4011f9b4367195723af280dad746d992abe01baf16
Date: Wed, 23 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729723553
