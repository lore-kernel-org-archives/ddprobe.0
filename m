Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329092D7D59
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781359594; cv=none; b=Jd5f7F1iYbSCWwCLpkqcpPodMQxWcWiOqYJGVN6R7sqahdeP+UgrwqRc22gjzVWJPqXp/T9G7rDEySQGFlsrayIbwi8O8reEi8j0+eotP4aX3SgAW+GcOQXZsoKLb8uR7L8boe44c99tACofhOcLbWXN2QsKVaSCrdvrhAn/k4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781359594; c=relaxed/simple;
	bh=+z9vVJsM/pncgXKa+Aex5oZzyDSyY7SxJoWdcFMdo9Y=;
	h=To:Subject:From:Message-Id:Date; b=LsH54ne8ptjVLpRhbajiIIHYKcyW6cPuV57xphutDbZYRRPSPE8mHHFh55vUdGBElvDGev72ZBXrEN4QA9OHvLVXA8+jSxReae1/zqVer4XYekWdX5ywjbZc7Dj92IUZZiSGLNQB2zuBOoQCTf8ubVJjmQsqjEa/pucOvxDhrR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1NRpgoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1NRpgoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03DBC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781359593;
	bh=+z9vVJsM/pncgXKa+Aex5oZzyDSyY7SxJoWdcFMdo9Y=;
	h=To:Subject:From:Date:From;
	b=I1NRpgoaCB4Qsi/YvuJ1PYg5SYhdaAkegIQvqYND8AEm1D/IsukFs8xrqL1L6dVC7
	 9os0yWwd5DPuPnORprR0iqZiPsnVlJlJRVGiYhfv8nbfQ9e8p0EAhiSxvPORl9JwUp
	 ln/JDCEfox6ZeMphbLG7qv+GsDDjXwGvyh8gyp+XwCZk4gULxF5/E3/AFTXW9LrnfS
	 nRbj+HnockZ1NCOX84gOVc9/mqMU1t3RmaN0GXqSmI+vW1WzPUZy5ZoTpibTO71Lbv
	 G049Hde7PdPADetTdzF05wvogcaEljiro+bY6e5MfW18+y/o6yb8OnijmpJGXu9GAv
	 Ee6TaeeCLBkyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B729CCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135959368.26382.3739192068988174380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7d272478ed66c46e5e0d8eabe85a99efaec6b4c2233eb1e0c2479cbeada7f5
Date: Sat, 13 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781359593
