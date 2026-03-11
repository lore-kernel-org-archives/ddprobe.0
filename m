Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C532D1931
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773218694; cv=none; b=REzLqxpHK1b3oru/nwhHl+5zNLUz6GDFZvF2Bzl1L0p8gdGCwkqent5l1sdVbokP4SF1I9+sg8KFEmdXkPrO3i7ezMdVGLN35nSehNCyzHvufYb7fKBVe6ALoVaMseiPBeOcRs2SL3SJTgm2SlOkoBhfw+KAGMzdM7LDLI+b+lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773218694; c=relaxed/simple;
	bh=V5ya5dI7JTCPqpjpzzV2uKHw/GfpoOy0U3DEs1wqCTI=;
	h=To:Subject:From:Message-Id:Date; b=F9lOaUlxHzl+GjrJIGwHuVyPRQVRXOlR2bHlLTFVF+nbtOZmuJQ/NAbHats4fuX8F50UYDp4r/r7XNdbhE7PAADgisDbv/nZ6BQyukwOl5hwnZLma7i1eLRd0wRO2fVpSjG37BxsyMDXh+HkMRX+m0J+zPSChe+GYJx4xKyfTvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owNxUfW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owNxUfW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A017EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773218693;
	bh=V5ya5dI7JTCPqpjpzzV2uKHw/GfpoOy0U3DEs1wqCTI=;
	h=To:Subject:From:Date:From;
	b=owNxUfW8KheAM0ZrvQ9VgIc/es8AFtruKot+uOrqXXa9Vi60UH3IZjOUDpgIoTrcP
	 IoygIqEGbhrA0l676CyOXidY3Yx74NU1MD5sSDa8L5s1OFXoAKT8+QqOGtpOJzKcD1
	 SDCCzB58cbvZSCz4OgPdTkmpcAMUjjASJIQmSjZnG4H/LVdyNRtxXOsuRghssB8CyQ
	 6a7LDCPIznJhxrYyufKlDzxp5DzQI4dGhStJAAuqW0Qu88E5taNxkK0jrSDwKBnkNE
	 3ALu+OExJJjSpBVI49axu2gVVsOvOsalwrksRQ7Sn3kPPBlxKquI/TjEXrFdXZ4M9i
	 AA2r8HxuGIv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA77FD065A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321869358.7061.5970068307253629435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a73b3ed0c5f9905c32ff464cab762613ab6abc09a3310ff29c7e175231926bd
Date: Wed, 11 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773218693
