Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363A91F1313
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750536594; cv=none; b=V/Xbrkt+lwKD3lKOhp/sH6+IH7F9Fp8RLqxl3VzcpIBc/K08MqT2p1+1ffEKsG7E4aR8YZjwQ6kS7hhJfNCS5inuS3bIgqp7eSe1zPXoiqRzOAq3oD7frHPMs4A5zjbEzL++aFODzS8XU4UY/YNyoZYvtMv8OwX/HRoPChGspJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750536594; c=relaxed/simple;
	bh=6mkGH3JggQiDLSAO2zYmULpDzvnK0mY6ctZguLBRawk=;
	h=To:Subject:From:Message-Id:Date; b=CT5SUwbPDPLJcgHIZf5R/ag15VRveiztTK6TaOB7CkuTjxh/Dgl/bYKF1UTfWglxNDDLoOL8nYX2ftekw4QnrFFV0U06En0gnhRCu0VA63FgnEe+YliM5sYtIdL0Z/QJq5TYhK1q0kJTrcliw3jz54J+bo4X+7RMjlaDkADAfLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnXfoG31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnXfoG31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B380EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750536593;
	bh=6mkGH3JggQiDLSAO2zYmULpDzvnK0mY6ctZguLBRawk=;
	h=To:Subject:From:Date:From;
	b=nnXfoG31+8VXG80y9v7+6VJnmz6KSZ5BkWaUxtkRrTfmOCTCOoeBBjK4KbxcBW5i4
	 D3ZuAHvZavh0A3WuSiu2zmaWJTsqNE0A5XrF1MurHouCwzSHHJR7mo76TrAbXL+0Gm
	 8znWrhkxjxqwKkURYx9eVdVuGF8LJ3kSTMeaku+MxtDfm60dV9s6oDK7gMZ9kBPNJL
	 EppyehbhA8ux8S7h/Uvp90XrygW8UWHSksMUbNE+YjuShGLUU1e4gU7tRBwkn+Mizh
	 A02Ggq2SJIBBXaGpCP1lKYkEOVAWtddfb6Kkpsx9mbz2eV72WlB9FZS+J7Xrx9p5tZ
	 vLicje6XnnQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F426C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053659358.377.9777124751979911293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa51effecc6bed45e44bc7f16bfc92e0c1bbf2b7fde37cb9948d19c7e87c63fe
Date: Sat, 21 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750536593
