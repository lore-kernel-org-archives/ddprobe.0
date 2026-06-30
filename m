Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E463655CB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782810514; cv=none; b=IEk8KXdHRyq78Ufkt5u8MLgWhxnf+fFzyifB1xs+uMYCnVHTlocP9D01WtdL+3OT97ElINbO+y9Uo7FjYR+FOAd3OZfLj3JZ29Z8rRWPe2ivQv3mpU+fGumuWILPio7QEBzq7nCvNv0ecM+0wg+XGS0z8pRGONRSU0IQ4DRUyP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782810514; c=relaxed/simple;
	bh=qVQCp5jG7+ixY9StFYzW7yUVR3/pLv8Szi7iTNYT0Zs=;
	h=To:Subject:From:Message-Id:Date; b=VgVDfZfoYxm44Nk9U1nEO3DUyfqgFhqr/Iz5zwtGOgNad5jcSelxYue4dKbBAKW7yseNR6IxWYWILTX9ZjYf4IAwxrIO1pjV6ELCkKHn6pQLZHb0dPQoyrckVMxzHH43kGTiPyOzEFcRBOqn6ZEB/+86e4eUYFdNokgPolwEBr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl9QpKrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl9QpKrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AE5C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782810513;
	bh=qVQCp5jG7+ixY9StFYzW7yUVR3/pLv8Szi7iTNYT0Zs=;
	h=To:Subject:From:Date:From;
	b=Wl9QpKrZby561Paoziul8im5YBAvGm1GerizLMm4HAefrka8uCVYr3Zw0NA8Ud8qc
	 31OpongLGfkC6NfDOCZtFn6uICUzirla7ddLaxyYysmO/gVDtV9851jh5D8eHbbp9/
	 0d5CnEzcAwWMBlSRl0gs+uWsbD7DgHbJ/r9d8VMrBVgMoUhN2dIxs6cAql30xEfxim
	 YgtbIpTAQdUBbNUr4lDBjQoLVmB2mtV1DUTDXmK0Z0WOlVCEFquqbS06UA5QylSLz3
	 1UeSYhIilveZ7UfQsAIEjftwcgwTRjcLHjVTpvvxnEHWdBYPEF1FFLdmvh0ysqhXIX
	 9FtO8RY1M4Uwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A849CC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281051368.4145.6467637581564140394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6ead766c32c6e63d4615ca17cc8c52dad99fdc29b27dae73f50d2b4903ba95
Date: Tue, 30 Jun 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782810513
