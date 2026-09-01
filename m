Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435C8379C55
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788223834; cv=none; b=CqNrpZjBeamLx/falU7bCYLBvqNgIiLsYpVkjLPnEPkTXtcXjNPC2fQJcPNKnUVcwMi7SXdU5rjotHm0HUd6Z+l2e802HwxbGStPa2pW7YV5mvr9ArZ1KGtiylocv3D1D0gt0gjr92jdve58wwvQ0r/nDhkBe/dt8EF5Jzc7BoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788223834; c=relaxed/simple;
	bh=X3kPPKVMaLSxqFqnkRnEHC+aI9oD5oYZfh6Dsn0XHHc=;
	h=To:Subject:From:Message-Id:Date; b=QSw4fT03joz77TUa9WTwiNhe8F0TqcWb/5N/x6hmmzI3to+TCGU0NTHKuBdaL56hr/BRwuvBgSfR5kpF7l7B6aVtev61cxUELCEfheEDMlVzBS1PDwu1IkVwGaG7JcExSBnhKCMMlpVivPxbbuP57hjX9Od3iIS56gwDSWI7QdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ft87xmLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ft87xmLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD426C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788223833;
	bh=X3kPPKVMaLSxqFqnkRnEHC+aI9oD5oYZfh6Dsn0XHHc=;
	h=To:Subject:From:Date:From;
	b=Ft87xmLj/YGpwWhQjCKYyjejECB/VRpffy4g13ZgRIWPAYVVgOWR+VfuzAfjMZPHi
	 37LhJDXLsK/QtTuWcIg4iw+rxGslozqpXeCoQEDZwRHR5aE4NVnAd3WMIiUXgZT6pe
	 jqBXjIClbbx0nkfDN7LwtdaUlKvfaY23AVtrqQM3PMlHuTez60UgWyy+lQrqxQFhTu
	 M1gAalI/oWDI5qtyHd7G9Ju/DTsDUGgYh200mFcynJW5IjHvZCaQzriCmQacSafe47
	 sZoAwc3UUxJIWptDvHsNZU7TR41UvMQ7Yj5Y76tAxnfLeHMBVywGI0pBZ+KzzNZNuu
	 /KbHp909cvcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22AC61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822383368.30715.4289340942615900411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30879a049801eea08512195cfe836bb8ce19d1320e5ad00b15bc943283b016b0
Date: Tue, 01 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788223833
