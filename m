Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BDE2264AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761158994; cv=none; b=aN7N9KBa3X8W06e7YAlFS3negGHJDV7TVjmM3eGZkOY5nrM7jckute8G5UZtmE1nhYCK0ouxVaeOJqanwX3lWLt6ew2AHg21yEtC7SHo4k8jVo29VgMDs1RRumQT/72ePLzSBX17ooiUGL+i1ovqIJITVJpv3LVLO3iJxQBUF20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761158994; c=relaxed/simple;
	bh=v1GB2Quo9ZFkU1v1/d+VpROnbux45R75XJQ6PIe1lNk=;
	h=To:Subject:From:Message-Id:Date; b=fOVRZdtde0A25p8qzdTCGff5l5UNVFK4eRkPOBaGWy+7FFXZAQ8jlzesW2zEB30aJ6XoNmx9F2DPa9aGQfk7mALDi9uQLpPoackUWD8S36TjguooF6OisWoMXo3Y2M9UA7aJ29LeyWZfwjOstjDMp0lfnGPe6U2JpyNzGGFPtBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/kEApK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/kEApK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E425C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761158993;
	bh=v1GB2Quo9ZFkU1v1/d+VpROnbux45R75XJQ6PIe1lNk=;
	h=To:Subject:From:Date:From;
	b=M/kEApK61DQ1uUb0/+akyD6zl+I8FaoCTvm+lxpbnBKk8OIdzGfs55r5cTuR0hp+y
	 cQHkuNr3Di8UIhqQpZP+d8SEGRjRr9bC0gQyVEDhhM6kGJr/88TGbH8BqqoZ3Y9+zK
	 8IeTIDolyuhmv91lLdyirhc9OHLR2xArjVRS0wAqeuI+FG45h74GOk/0qM4P+9Qm/r
	 dgqb6ee6TuvCDFz3vhkIIu9LBrrAce6SRFsfeQ0Brs6PJcZN6gLLSGZRGlvphn2MMi
	 YV+sSAmZJOnOcEbMXL3ndkU++JzDdwgyp5o3G0EhiDHTbncp8eCnYTrCKyBXb1pJQk
	 L53Aqk3k0sgZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA0CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115899358.13213.9234881976868507949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a66fba2c126e7fc66f916a75f00eb8582fa469c7514b9a392f5cd21a5edbac
Date: Wed, 22 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761158993
