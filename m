Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4AB299959
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780190074; cv=none; b=qQLKT50C8SHksN8qVVHBMRVEqK4YBVO1aAXFZSovLE0dIDKLMS3minuVmJoefvGHpDWQu6R4p7+//Bd8cjjNZqBMFWfBszQCxP3YFtang8+GSoAVStXKyocIzRj0PTqkMzY5L/heP3e72ldzOU3UyHca0nJ9KeB1Y5iZVx6So0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780190074; c=relaxed/simple;
	bh=3NbmSrSLPiF52x3uPNVLEDYqh3L+39SqIeJlIgMZW+Q=;
	h=To:Subject:From:Message-Id:Date; b=m5szA8pe/o7e2tDTtt6tzz9Tr3GIj4g5zH3xRco9nZKzUsP2TZ0LwWzO9WgYJ1Y2D1wGcjUxUJyK4x5OC9qYqLTuSvGDd5ETALnTFHDbHgoJNhB3aGL9xq1RLQij0WkzdyaHu9VayF/mM37VtF3tNnUnCdU/UBIT3pbnydEeVcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuigS58s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuigS58s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E79C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780190073;
	bh=3NbmSrSLPiF52x3uPNVLEDYqh3L+39SqIeJlIgMZW+Q=;
	h=To:Subject:From:Date:From;
	b=UuigS58s7+bnlyNS/azQ1j+UHYecR96jvsCUFG+Z77hdDwcZsDvLbv4+hjgcnYyF9
	 vDqW/DwMMP5iGXtlCC5M8hfr7MDKlmpZQic+u+ql54vcUPChoQV2GEhcyCileBmU4X
	 TTWBALvGAHFp1aeqb0yq9jQox9AFsGTPkGvZny7hqmkYfk9u5r+PJPjZi7+1rYmw1c
	 mPHXduvbxv1S/OPxokscDSUErISeh9jYD3W29rz+rFsZNHlqVfuVAWY62KPv1+8b2v
	 cjEgtfZGu/juT8ldiD50Q7OwbW8mi6QP1rEUqrLXvstsXoloLhzY8BXTl0dHvF02W5
	 iyayGnaJqWSqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FB4CD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019007367.28067.17113664637291094593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a1d818da10007b93455e190e70d16aeb1e6ed425191940cdefd5011f8a4443
Date: Sun, 31 May 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780190073
