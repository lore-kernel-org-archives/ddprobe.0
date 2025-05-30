Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3582C2367C5
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748624394; cv=none; b=JWsEWsMq8PCMYJFQlu97FgQ1T/hYU+tblTjNhJF+PauWsMffNg74nNZTtKINdaDZgEx1M4Ww5xcJDJe27JvCLBJCdSFwFBf/ACFrNwaF7ZUnBRw5Dl4R84AtdCcqkkQrHDXQjsgxnWESOC+WPzNiz9RftwPt2TafNrwTHFqBJTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748624394; c=relaxed/simple;
	bh=GmRty6TD8FeI6IYrJDH1loKlXeMKnm8/Zg0+9EQR8XQ=;
	h=To:Subject:From:Message-Id:Date; b=ClYD8ZaiRK1S/B/h+sglPrhGtJAXO/ZSpQRkoQYVc6UG97AnAD+CgUa0Y3sINnHdFHFlw2SbypgerAyrb6UTbgHyIGoziE+DSX7Kwhz2xDR2Zhpo3nvj+uBs1GTXt3D5PeHuM7K2JvuUFUNkUkKo9uj2Hzt2EmAY6RqPrdK48Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOf0t3N9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOf0t3N9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A337CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748624393;
	bh=GmRty6TD8FeI6IYrJDH1loKlXeMKnm8/Zg0+9EQR8XQ=;
	h=To:Subject:From:Date:From;
	b=NOf0t3N9apVLo7HYUYPWinq/io+6BUVpNmw5elJqX2utAJyE8yHr6zmhiXwaXYsSA
	 X7kdpWb77Hqh5YNK654y35l58mOdMHzrGAyyTm7VaYTKp8qWhwOliyhdj1smdJ26j+
	 Ah9aMrYEkaQo/6JDSik8RouJxsgVu+LSIGacewZf+21EjEtvhzq8A4EqRoKKkJK6TI
	 lADdTENno1UiZhmShWgjBtwUGM0wCvv4xT1gO+p0lXX0OPzZxsVgUcQdv5rD4eBrYP
	 nzsFPsVt7uI4Fd7GRnqnovPKyxHtmZ8jWqmmkAk69xiaEQcEmA6kY1IRUNCFiDVmRG
	 z0bsConDCoFFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92487C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862439359.23786.11555911040946369656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d7997976b7e99bce9a90d79d50009efbdf2f6c69451fa6d4d4085839d211af
Date: Fri, 30 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748624393
