Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29E7223DD6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772390093; cv=none; b=r3/NYh2qhOp8ug19yzYOeM1luyZgif+4xLbpIb8X0uIcTjfwwqikPwZuVQIJ0GSd8S19M0aXgaSgAgffFX5CIF6UP7UfP0q8Zkt6Ne7c8KIiWFzdkES1by0v3fBVPQO+SrDO+jN5ymKPEUw2+0F0JjwodHKcLTaes8tTOxrEVuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772390093; c=relaxed/simple;
	bh=s5szudeDKlAhM9UCb+rCcE6kFmwa4PzDIZwEdNMTIZs=;
	h=To:Subject:From:Message-Id:Date; b=Cd3R8MyIP9hH0aNDsavaW2FxEfphaUB8P8Lvx3ZtMAN6K6FHoNYldi1OP9Il/CCg/QaKn8K25ZvWTEGMnMO0/0KyO1YAh7RhCHgQjwcVcqqUw3yh6ZxxC47nNn8oMkRHr/C03EghwIjTUNTnR+xMxVqX0WdWSaLC6t+gCcEMrLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROMMajHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROMMajHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ACCC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772390093;
	bh=s5szudeDKlAhM9UCb+rCcE6kFmwa4PzDIZwEdNMTIZs=;
	h=To:Subject:From:Date:From;
	b=ROMMajHfpapGGs7la7PFJgdrdWJ5S+pkSkLFr8Y7GaXGhDWjgG3MV3LoE7qcfIUnv
	 0KLl5f5BT1lmSdfcHN5fABoyamp1gtInRi+Msego4mnSZG3H5L3zgh72/dz01AWjc+
	 Y9e546P7aBJHcLg1hr1ysloCIo3maOFUSRCGyVSK+xbVfPpL3T8FYvtydPcWML69G0
	 2VMIQHbpp51W+1oEU8cj7T/IGkqmvDMBw7RQ8SGrX2uZQyxAwwyZvo+Eec7zBmNsAW
	 LsZDF3GUmTxyzT4QIDFDmPj5CTkXClEjxzId85KoFOV+HxUfkXamG5UZ4N3bKChVdv
	 i62kDLpIhpKTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F601FD0062
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239009362.29831.4426670472025241474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a01296d6a0f5c647193641a8430000fdd530bab88ba963e0879fdc3857e3d9
Date: Sun, 01 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772390093
