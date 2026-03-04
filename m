Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1068F351C1F
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772649294; cv=none; b=QDR9K18ioWBm2nAgiEyf4LsNJPhHUjdtzzpglWVFvozuou0CSw/OFwil91ZLDhLh4dClZB8zijWuW4IrkSOGlQBQ/FuSIhJ9JoDZfIAqdJtwjmy0ep1EE+gTp/Ii8nB96ju5rzH4LzpCJBVZ9NFqFFTKJwYeNq21TEy74xraF/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772649294; c=relaxed/simple;
	bh=uu8GlGYPsoeIXlRJhZW6GVGcnuR7Da7lR7M6VQAuRnk=;
	h=To:Subject:From:Message-Id:Date; b=PEnAdn0ka6dXoiiNUBBGLJwOP1WpQds1mPi4b4vr5qUmfUAzX+7hAba+3myob8WZqS051oeaqxgXyL966L48KIV+E1B/0/1Mgn3j3sla8Ut0jU8/zzRKqf3W8dDjtSGxEYg22WI8J20F1tDiDuSZzy3q7cTuUV3YClbuaHl2j88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M090l8Wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M090l8Wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99A53C19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772649293;
	bh=uu8GlGYPsoeIXlRJhZW6GVGcnuR7Da7lR7M6VQAuRnk=;
	h=To:Subject:From:Date:From;
	b=M090l8WdGji0ln4dlkyAAYjnmEXk96MNu5cEp6Aw9g8xY7N4ZOcLniAiKsVcMw73v
	 uK71bZQWyStFlGsbtogX9eziedKT7ihdIuU5VydbN7N1h9LDgk3bs6XIpcLaM83Lhz
	 F9BlZMB7POx1qiBghl0dsl43RIW001x98OaD1J86wQNozkEmaqNY0ikMXgyNWMWehI
	 stw1TQCqgW9qdlcGiUsdCuCoVapQlgDa2xj/rz59kGgLLUFFaneWKCKoz5eRE+kQXg
	 ALj32ZMhpGDkPSLj0XU636N3TRjc2kc5kdOzg1qcZF6/dwrhw7RMPzmELTUnJsaYC0
	 qZvJVJYOXl0Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F8EFCE38
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264929360.21305.11629623231448705295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9bf6d0daea77818c8d2fe44c3ff560ba74d43d8f9e4f7ea23ed591f0bff4b8
Date: Wed, 04 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772649293
