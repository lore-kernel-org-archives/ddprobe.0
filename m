Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FDC4F85D1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790779235; cv=none; b=Da/X173OhGQdICqiJ9ppjzaijpda8Id/HQm0dQQBSCjirE4qhI5FsHbBlAenUHZouKgokbyy0cLK76+wDv/yDGnJVeUi/r0aoEE0XCZfN1glz+/wyxge06DAQrB7Sy0rB6d4KQzJnCvU7gKCWk4Hm94GPDoYL3jD6DoVnuskstY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790779235; c=relaxed/simple;
	bh=2Xd0xcKT4zi9aLQBxWMlTGmZqnJ5NdQQnOBwa1z/M7g=;
	h=To:Subject:From:Message-Id:Date; b=eYIK95lH2aIZtcGkqdAOkfUUGPGRguxkDNYPzPpDd366QqycAx+yUY3lXw8+XMxVPEuwehLlMgG2+CCdvYQ667h6jxMuISyhzp4DBInlEf47siuuOXqBnZArBZpIpVHIH0kheZQRvlffL1ywlld4qvvvXHGxqZNpLgB+OC7uIJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLU4abF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLU4abF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBD8C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790779233;
	bh=2Xd0xcKT4zi9aLQBxWMlTGmZqnJ5NdQQnOBwa1z/M7g=;
	h=To:Subject:From:Date:From;
	b=uLU4abF4nhLq/IG6LU0A2c1njR7VO3rvIy+y4KZ0uw3HceUnDJdoj73BpcML7UWym
	 OsfdtYrHjYSH2NoVyko2LLt027QSY3RdCAUOpiEhDvqCAHSdILL8r4dAzVC0cXKh6c
	 fGwpxBXfecwHPxDc0ePMqn++U9k8Ah3DztGoKs2isy8YQxS56tuj9VtPzpRDHw7S3t
	 KZQUpgGpIQjCVtJbYCr3oY3k+joCnP5vti6AnVqTOyw8yAu8k05eRlq9nwS9Sd+DJC
	 ZptTk1+DNFcfF7rqqRK7UqorR13jzy7ho0sc3UcDFnv/4VBbXNHUTV/yJc+OZpeAKb
	 4OQPdrdZI+M3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7190CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077923373.32538.9748381294033095656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4d0dac88bcdb201c869f526d06803630ca5abc86ac7df7a2369d48e6405179
Date: Wed, 30 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790779233
