Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD88246764
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748015995; cv=none; b=gsoPq4RRdA91CqZOfJ2zOl4vTfVrKUAhRfW/GTFbCrcMJLQZfO+NcLEP6vcq8NZ9aXCdscPtsovWd6bVIO+kwh/XV3v+lfHYsAbHCWdnEq46/arKTAwDXqB2YjQ3rM8vz0rwN/pq8N6Ygv8y15k77uvd7EVBO89iq6jAG6eT7Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748015995; c=relaxed/simple;
	bh=ON2fDP3MPF8EdgUEZIcWMa+kezLExBioR8QFRPPLwro=;
	h=To:Subject:From:Message-Id:Date; b=GKdEKAeE67drUx9QPwK3EYO0fnfBSA5p5YZrTryScCyGI8URP62LHdLnOyPsEhIBqV/dqe43kDF5bta69ynnBFS9VKT57WqBPQCpuqKebw3Jjk0azFnMUfP2hxcIdn/zUaj42MuJ6GhUV/tjq4OPAH/UTztijMRoONgC5tHRK6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCNggB8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCNggB8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F012C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748015993;
	bh=ON2fDP3MPF8EdgUEZIcWMa+kezLExBioR8QFRPPLwro=;
	h=To:Subject:From:Date:From;
	b=fCNggB8RINEEts3yjNi6piScEl3g3uKpK6uVcJh1MCkYqeCB2qiLNg4aM0MAgemk8
	 ikriS9CVOT0fuW8DjoDVVyaR64qTGAPW0ZI8JW+9kWEoJmpLSto5AGpV9zuowVNVIO
	 XcAwIvIjoOf6Z5xhhDWag3WCE+qTKbET/P4aQel3hdVdHgDUJ2JpWOvDeV1g2A9s12
	 3kYP9VScr/Ul/E36yU0gjLg77gHtU9TffOK4U0GTY429b7ydRolW8ihaDnxuREuUUc
	 DHxTlGrWCYbpyptm1WFnk9UEhLkMlaSgkmm3fy3kaeYiQT55HG14BA/UbxKvWNbihW
	 nj3CdbtTIahnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C4C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801599357.17365.6316118861536465641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f204a966c96a852a3835ac0c995d0e7225f5e3bff377193fa73d28308a59d29a
Date: Fri, 23 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748015993
