Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C263E834A
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779180634; cv=none; b=kfQSroNm7H/J+qc+z88b0h62fQfEWhYZ7HOF4O+2DZRM/2ncTmNkhKDemKL6K6ntKBOmsjdf5DRO4qie5tTuaxue380KaDKTQj5PUC2aBzgdU8NFlqjMVkSORYU6gPXq//1/cyxnYkLZmLorwCd3OU+koD7eMcx4WRkhQ3/O+Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779180634; c=relaxed/simple;
	bh=N2OdI1jAHAysKlfvOS4R4KXkxVw0sIZlZcElbrIo0eI=;
	h=To:Subject:From:Message-Id:Date; b=JBLk2bjISvZBdxuUe8VX2d5GQTSVtUEHF8cqdOC4SHt4mH1jx286jvJI6QZXkOdEHmJ2OehCArnKWJgls0LJklrmz0sWMQ/Ud+ICIyhC/fmkbKRc0TSNf8I2JZ4QoUAdL31gTT+LMPLSwTmPS7fK6aN0ESGWkizkb6wZpHJ6c4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6onA0Sk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6onA0Sk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6988C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779180633;
	bh=N2OdI1jAHAysKlfvOS4R4KXkxVw0sIZlZcElbrIo0eI=;
	h=To:Subject:From:Date:From;
	b=B6onA0SkwXsK6Cf4U9y+6Wt3PU2mmlkqUwQm7q59WyRKG9w16u93qcN5sEP2OIsxH
	 Kk1NvforybmReaEi/8tCzRUmbLUDfYgTUzxlw3AEsqtbmO7lwzLjmHg+cZiK475pR2
	 kV9fxw6b7/9MeqIPyuaon8qO+jRMMBFF1I7Wt/gfG4JvO1LAMoE1/cUcE/NSuI68Sz
	 EiakEhi+QJ180e20OCPgz2O+sAe5c2t+y3/Xvbcf1Iy9/zA8gKJFDB1WrJCBTAXTBQ
	 LwpqDJ2aSIXvM/lWTl4m3DvKpDLeyxhQg66KugJiz7G2RftMIPC+PmaGEg16M9LRaI
	 g+L+u6aumA8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A7CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918063369.10614.4621899145437039206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05df32b54123174f4bd8203efd07698d15f4c47b9d5faf755d6b0b8b834cfd8f
Date: Tue, 19 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779180633
