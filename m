Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269BA316909
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764234774; cv=none; b=Q8VYPvnBndOiM9Y+RKGiX+y4VCaUdRrsmmx9wsGhbVtM6D0gccSRDYcALIfk4gr7eYI8hqTOcmsBHoPcACQ+kDRFlQLeEHHDI8tlrGYPeULHAgk61UpqSm0wF/tmh5k05+wCcpuQmBWlOgEBEnF2wkmsGM7Ld9YpY4QqxdhuqCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764234774; c=relaxed/simple;
	bh=J4dR45CPItD8S5CGMBZEcQ7WmC+qcd1jmStxZertGx8=;
	h=To:Subject:From:Message-Id:Date; b=Kx3H4gT/K6/6Z5fsGPz9X/JTBDPIqop2G6KD+oL8N5jQesldE3ogV/aug4ABmGI5z7ERRRj1EBmpTqeWWZsolwAfvGdgFImtprvry0t+qqlQCGferfYNLXZVE4O5TwNVwFtEJyaIB+rQt9Qgz9KI4PvyrCqb/t2xt8weRqw/Mck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kt1I6Z/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kt1I6Z/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63ACC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764234773;
	bh=J4dR45CPItD8S5CGMBZEcQ7WmC+qcd1jmStxZertGx8=;
	h=To:Subject:From:Date:From;
	b=Kt1I6Z/c8i+49pbzmUaANOyaayGSI4R960mcET7u9veoHcc+OM6Tl/pxrC621VVTM
	 6ZRamjnmFJyneAeXzWTIo6oawMhIenHpn+lp7cqetSKnWkO52I5iqFMiEvxvosxIqJ
	 Lr+YT5cNDyFx5nXEBQ03ljekdcnYURf4CS9aJD5V7dxKs6XrR/GURo6A3cJHW+kWi3
	 l7MHDsihGxtX2tIp3KJatanRohHxoaSBnQy0JNCy9/hnQZzTpWwMU4bBiMPlw24fvy
	 Ohm3QpGkqCk7OpdqV910fc9HBpcM8ZpIJnb7iKQ2XyYL1uAQKrKiC0uP0tUhylBDke
	 HLfZIBGdZQIvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535BD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423477359.518.1318500631999797932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a059651e83208998bc581fa4f97c3ffe17f104535ec968a1a8f41345f8e5cf37
Date: Thu, 27 Nov 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764234773
