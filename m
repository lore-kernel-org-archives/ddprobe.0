Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EC533372C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762361394; cv=none; b=M9j/RWGBiQ57ZjMPSNsL6mnPr17UyUwIM/nBNWGxmBbOjgZRD2enfXuBR14EB4gMu3yK5P/Nr22In728JV0YWnp6MCHHkYj/jF7HVV0fgvoSoUs/U52+jR5H7SUwRYcKfnuDStMhQ1p+N40uVgZShSaU0ZDQzCSYSoMsSGmzc4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762361394; c=relaxed/simple;
	bh=op15h4m8mOw57nxEwxwoG0p1Zls4lYuvRnjDMiD3NyA=;
	h=To:Subject:From:Message-Id:Date; b=lRdKfpK0QAZNIZxhHsi8RIDzvzvhDd0yxJdLS5+EhNlO+bDmhVwvKu28USCkZ7vcBcpIEQ67EflfiA5/UgP+9PAcJCbB/9EFajUpotXnp13jvbn2ueZZpls3p+u66xeKRMIpj3r4vXEJpODfcAenyepwLNJJzofP3NRcWzWnxWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5vV07A9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5vV07A9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCA6C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762361393;
	bh=op15h4m8mOw57nxEwxwoG0p1Zls4lYuvRnjDMiD3NyA=;
	h=To:Subject:From:Date:From;
	b=B5vV07A9+ouj45DyGs+0g/fsfHdPtLtoh8ws/FVWy198fe7FNSUBxPKiZnw5JcWzR
	 ZyKP+Y2qfSS7HMwXxgolX3gYXrD7kOLFROCCbsAttajDi4AdY4z6kP5pp1Af2LHjH7
	 BS6CaiM48SxaE3D7XP3NVhTFyYAzgnFjhweuCORYN5QFc2d4QsHSw5TL7ghv1rVgsJ
	 EbM2uvk10tOEOGzHtFo9z/btZ7CiDtaZ0wfkmOqAMHMOQVlCxkod1WW7IHTqZxMWiM
	 7ZO19g+U3TJ9mJUXV3yEu1lBKZXoe9xuEI9+ds2iQgqI5iEh1SXyuKy82Mprb/mgtz
	 2gHiLY9p7Qazg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB87CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236139358.1992.3522292348900365494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9256088abfcbcb7d3ebe412eddb4155805c136365a78f32b5c2e23faca6dc4
Date: Wed, 05 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762361393
