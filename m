Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC5C30F951
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760704194; cv=none; b=CwJqRGa6mKOjRIp06eCCvxmPi2PJTeA+0OrXRT2jw/6H63+tJHaKTIhgnNerCsafqyzU1xxvXmLe3SzuNikdHgGELgSDwFX0VzTB2wplbW8+97H/PzM91JiSyWxYqnoAL16vQettzITEvbblh4qHsEU0jYoYQDtOhaBA3vFyK14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760704194; c=relaxed/simple;
	bh=uJezrwRZkmY4EcjzH4PGgKSG4++NzA1awww2AX9Cp9E=;
	h=To:Subject:From:Message-Id:Date; b=JdeeT9AakGjEnOA7/pJ8B29vkUEVtE3M77CYaNfD0SklqULmzZOBXHnNh+CWRf8HJDMQnR9H5LSvX8Yn3w8EeCWfF8CoSwZRaypb96IlDQ5Sbb6JpvwefrU8tD8CJlijwzuTfX4wQ0ItXTAX3NhOP/aEXJKAojA3KbEyxqLNOqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvhwzkpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvhwzkpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A245DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760704193;
	bh=uJezrwRZkmY4EcjzH4PGgKSG4++NzA1awww2AX9Cp9E=;
	h=To:Subject:From:Date:From;
	b=UvhwzkpVfUeXcf72phvq5N1WKnwPg7fFbpRjhG83v5UBO5YCFP+38Ngv/KCTnlXs6
	 IUCaj6TbSoHlDKE5w844bbVVUJ/UGgYbqBBx774fAs4BzSa1YlFUWrXPKbgzzO3qpm
	 +hYNP5467vYzHmQPuv0jrZnsyaruOwIHvlDo83TSq32AnW0U5J5M7uh/3/JloEhDpC
	 AtSyJe44Ij67GpYXzXm9XOfU1OMXtlnuuAu8k9Kvtey4vzs29auwzZZjMmGDXL6m1Y
	 1nyj+IHBxXL7PtZ0KNz4/PMBrtcPZiFMkOFpoYoq840HaOwLN1DWHp8+BVIQAiugSY
	 mUvFCfwVqA/kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11FCCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070419357.4827.18115302934230817721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0decea4d13512506508bb6194e60f93e13ffb859064c5dc2ac64d416a4ce46b9
Date: Fri, 17 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760704193
