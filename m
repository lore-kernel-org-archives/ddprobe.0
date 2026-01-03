Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF4D30BBBD
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767462234; cv=none; b=Co0H/nuBzpAQRREdZEOcZNl1XLjO1X92mVT1CsheCbUdk8CxhnbiWUe9nvEvjCNS3h+qfmk9OoHKSEA5bhjGIT6c8e6GchgeQFVPN+kAYFSgXH7D2o4qNH+/4eajMazNwI9D6lNh5q0X74nlaunbhh4DQ+oROW71httxPQqdEuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767462234; c=relaxed/simple;
	bh=hI234NiZKU68gjXsVi6vXgxVCemggvmVzeXZn9MIJ+4=;
	h=To:Subject:From:Message-Id:Date; b=T4fYhai9M5gLLuVzsjlYn56q2RgQuowA0TiLtriRCrljXmsxojWYZUPHYPNATS+f6H5achEreAiQzbrNjBLUtCUNVAxaq74rkmr1s2/M0HKKajT/j2EV19HbzRl7m2OACIyTCv+Gjg9HPPOhJXTMs+JpnpIp0hmlhd6rFtmg5Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF9VU/MK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF9VU/MK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9406C116C6
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767462233;
	bh=hI234NiZKU68gjXsVi6vXgxVCemggvmVzeXZn9MIJ+4=;
	h=To:Subject:From:Date:From;
	b=mF9VU/MK8bEUWSpD+nDbIYQZKOUb5lKMeRGEiwoOzIITmfQYBwgudq8GE/MOuD5FH
	 h5fXEpTnMQ0LHxGPZZaQxXdrOM2YtM/FDRay9IE4sZIaFcOicN56AfLsBursVN4T/5
	 qzbOFKmxbiG5iVrVnuMHPdo4yEykMPk9exn768zjfbFjnPmXJ+OBn6oXSRQ32yHiVN
	 2I6aVdnRYSabnd5AGR+iXAYWhmlkVJ+YjSBQC/cY5Fk+6RNaRLY/fS32XARruPijta
	 9VljHoctKmENYQBM09rjjdbccnhGI8iJKFc3ZhVr8CDHp0f5QjP8v1b6YkZ8iKrXMb
	 JyRXW70H9R/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C3EFC617C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746223361.407.13655851481269602881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a4bba6e9e6bf97a522ae2b5438fd049f576de52164df83d6793d4d08f0966e
Date: Sat, 03 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767462233
