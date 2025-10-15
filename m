Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D319628BAB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760504993; cv=none; b=HP6g1K5GdXxSr38rbFzg3O/LJdyZHBhPh4+7MHnfsRG2zoLbjucgLQIV5y621Jj34FOhgELvk8morJvJQoWgVvTMYAkOoiUvUtcfRIjgBc8h7jStNRSsSXUaEuGlIAYvhN4y13KjxeWHGfhj5ZKzaIUV8VbAQ/iWMeCX5taIFmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760504993; c=relaxed/simple;
	bh=GfgmMVmSHLpD/ZdLO9KsEOI2qQ1caWhL6xH/kLpG8Jc=;
	h=To:Subject:From:Message-Id:Date; b=f98M5Vts8L5XYRdITrKjMOPxrrqpN29ufgJDEcSwI9s9EDULQ1I4QEL5rH5PHilSrTdmQ018VON6lFxhkTsB/YrJLf+oLaCk1r4sMXx+cHoufE1Rbf4w1fTeHl0DT03Szof7n03whflpU65JbFlQ/ufI1A6x6K5bOpkJW0e984Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWZXbc41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWZXbc41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0314C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760504993;
	bh=GfgmMVmSHLpD/ZdLO9KsEOI2qQ1caWhL6xH/kLpG8Jc=;
	h=To:Subject:From:Date:From;
	b=cWZXbc41+8z6KTMH5K4tta7MH4XrP/BpNKCxCx87MQmMthanmm+g/wDpxFK3MgGJ8
	 N/mEOf8VAwu98gArlkoiOcGB6ktRCualodgafHSr5d/wPXbHMnXehKLJleVdcSu3Nz
	 YSoXlPtYXCnZpaOpWo0E/cevkslzeIUN5bCaVD4ftHxKclowV59QKQsglHywwidXno
	 DF0jttPsYFYX4HaNlh/8/jtsFCaIDZEh+A3FzFFOCo4lThdfjKC4VXjJEUgxAUi4Dz
	 ip9G8kDNSYux0PgWi8FWACPmVkX6m12KRIjRQJj735mDlzY+2Gtff+Y0Cv9YhH5Mko
	 f5q75VHpgYYsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90258CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050499358.32331.5286852417051806649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f09e34b2b8f42da8a850fa332a9d36da4b3c11b539e26ca16da8d747fb185d
Date: Wed, 15 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760504993
