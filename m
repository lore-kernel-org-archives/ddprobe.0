Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F682676E9
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753353593; cv=none; b=QJtRTbuy+ERK88IHFpPYYtYhtsVMLBQW2q69RpmB3YwhNPbPXSTPlCAhgGzhnRMIkc3XZti0T1aMOQYUyE5hNO9tbzRLK+pN/0yEBqiKMUYsjX1c87CdmsD4ic5z+ijc5zwLwgMq1OYSgtsRYmtyeX5OJFho3p34EsE+UnXxA9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753353593; c=relaxed/simple;
	bh=pSXYQm47xRnVRhZkhgWztHJHeog4dkcjMatmO3bpdEk=;
	h=To:Subject:From:Message-Id:Date; b=RSgLhGmSKL+0rXL2oNMC+y+LFJZ87/7+oKP59yVzEdkTXk8A5Ai29EMHaQWROg+/IAmdgUtqLUCZbWQEQUpM4mlV5IUIULzdc9r1jn3np8UP2Ld2YsDbJoPFlF9PIyfjOC6R/yYCTMG9k6CGlQJRPu67ycMkzINqb7xYFmgZo+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2uQUGQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2uQUGQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CE2C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753353593;
	bh=pSXYQm47xRnVRhZkhgWztHJHeog4dkcjMatmO3bpdEk=;
	h=To:Subject:From:Date:From;
	b=s2uQUGQEuNx7bkWRO1joscxrprqU1TuvvDWSHN6qlj6jBIFjMmASZRNseZABnhbRY
	 krMH09ThGQuNc1GpEI4FMqsbKB/7uWtuOBMr0vB4IO3QcSpDDRJzn4FiugfkE6bu7N
	 2qlwDDGz+7rUZjmCZ2vShmjt92+5bHjoVPDZaHXtkxzVNXEnzGbZvh4CFmtdZlB2Q7
	 stbafjfkt+4xGohXk2pQZy2LyIKFbruBRtkvfS8eb6bzwcKi665IZQvhoCHpNtaFWh
	 /btN88w5gkzBlb/PIAo9DuS6K0QRosbYjktbZz37g/ylGcPXxxJ5L0Ay+VTEqMUeut
	 Ceu4T6IlFDqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA9BC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335359362.3663.11385671407699105256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87979679c3e3cfe4175b19153bb48c0d18c0a8eba4ff3791c4f32804a7a82d69
Date: Thu, 24 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753353593
