Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A48C1A0712
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783606714; cv=none; b=pnMfSx5a6/+cLD6liWapOU9DSs5zfg8zKh1BgEIid/j3g3K50IcygNM+qMkVRaU8tt50K1kcI+VfHcqjEMFtCIhu1S/QoBR2gn8G4vIfeE04yb6a83HtMP0DEikHvAOMpQ5nPWtWgUE2sJWGADy6hiR7k+64/BVfrTCbKbx1NyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783606714; c=relaxed/simple;
	bh=9IxKamkDWTFoXHqIqQBavuou4fe5ScTyOoAdAF6219g=;
	h=To:Subject:From:Message-Id:Date; b=T0JEOUWLmd5Iwv83M3cVZSNbhNqr/1fVYIkrTDwbTmHdffzJUirz0s6/UDC83WEYx19tXh0TuvFG62+Qioc3evrrDudOfTu7oZEhoF7aFM0HArPIYQhkUMK8+hzcvuFa4NTHxHUrU8ooU4RqFijPzQu1GxvA+B8zhox11ZHTNNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rh01ceIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rh01ceIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEE0C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783606713;
	bh=9IxKamkDWTFoXHqIqQBavuou4fe5ScTyOoAdAF6219g=;
	h=To:Subject:From:Date:From;
	b=Rh01ceIticlh0M0EK0fqkezEJM7DHU64zLZpewUpaY0mOOP20j6YmKMszLI31SyDa
	 N8KF9uNOJ1fV1nN+ylQcH4mHQZLVkyY6CwVGqb+ypWTS2bmy8M7uhx2tjWgJcl0XSV
	 +k0M0mStVSLZVXPmAQhbuj4kKZEV7pNrmrCZRAADn6BsuDalCzHiHf1y8CzAWI+S18
	 mlP53ls2hZl8EFpUKvrN+BVf+gUVg5lt/He4z/MRshXwY91+10wROVtyH8oFCi2HTl
	 LmidXb0fqJOr/Dpm6m/3OY9GYktx2/Y1TEX0ULoVCTyDRvyDn8W9LxwIdP9m80Lavm
	 57UbP57x6BGtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9035C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360671368.18066.14881600440701968033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6ba4bb1388b7d917765cedf040213ede2b2be4a062a05e05fbcf621d173044
Date: Thu, 09 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783606713
