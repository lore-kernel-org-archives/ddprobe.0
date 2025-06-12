Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EC9198851
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749753594; cv=none; b=ArtqcP3pdRUSuixaSKd5/Ch01QyLVfw8M1K6tzIK4CTwqBM5O/RwqYTTp34P4cT5hniBMw1rWo0XXztPBsvq+AdW9GRVOH5WE3VtFt42XSTo0KU+CBrqqQrdv+zbmxbfAezRzi8Ei/2H9DJoFuDQfcweZgbphv5F9p0ZfyYJ42o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749753594; c=relaxed/simple;
	bh=cCeW2szP3RenHfV5/DXLDHg1PPoADQaJwFp8UUJOFp0=;
	h=To:Subject:From:Message-Id:Date; b=cbDIpok5S498p3kDglMFMVDZjwqd06DgYHtDt0eNJTuJOOx7/2JFC3OxQrf3iayfFSSYwKtxY4yGbHx+T85XVNk+o8lfXQ7rcccfoVKhZqCEdjSU2eSokzFtfPJISTEImllrP1zayreZPo47ws/gwLfoU8MBVzQyVJc1xqCKfx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4jl/Gh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4jl/Gh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01DAC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749753593;
	bh=cCeW2szP3RenHfV5/DXLDHg1PPoADQaJwFp8UUJOFp0=;
	h=To:Subject:From:Date:From;
	b=A4jl/Gh8NN/F0a3C4KHn6RVCe/vnnibBA3JNWFXMLud3fBi9BpX99LtW1/HEQE5Up
	 lsMtN8VrWJS0nbwaBUBYX+k4CXbe8H45PvkcJ/sm96WBR7Isf4QXp5MeotjIdh2NRE
	 3exvsOjllGZAu1xmzKZLHCpWhzFp8DuOE9lagh6SMOYTJ0yrRNCOU7G2muOthNLcWd
	 mw9NVr4PNeRr53i/WicH87mexKeMP4axVf7YStHg3DyyLxLUlihypxbXZn3Avv2u/a
	 15DMh+L9tKI14tewNrGSRQ2L8kRbekHW88HAFtbPYIttDfchB/8yc0nkH9bikJ1Bvn
	 GLmG0w+11vKig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD00C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975359358.15139.6173796540952354805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5a738d94dfddbb7070b1a7151d7350e9e0b2c39cc5cfb1943469a32ea032ff
Date: Thu, 12 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749753593
