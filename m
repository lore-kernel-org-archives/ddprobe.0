Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8053DCD95
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785914434; cv=none; b=MMCP6KeGFeUVNwXA8R1l8YOzSwcLlcoyJayiQaIL8xDU5UmMSCmkZ0CxKrUhNcmwQY7DdoZ0hlq6s02a/V/z+KZ76Byp2ZoWL02OxQ8hy9SNln6Hfbz/EjZJcY63eNZP+zha/zYVfQym0meXX6Eq8qDspGoiwcm5Fs/CTkSqYMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785914434; c=relaxed/simple;
	bh=Fnigx3ytZLNL9b3wnbS9ZCY7aIKwcuxcH+j30SzzhEE=;
	h=To:Subject:From:Message-Id:Date; b=g7H/mrm/WA+lS+iY1yOmI+kwD4y2dCeUWrNnoLisNZlghvJcEmSdR2GoiilkQLlNcfRjpf38qtBOcLXSqrboSJOPTh1n8mE0guaS8tkLpbf++WDibRSK38uYloejuHozXBtz2eiqsUyh9gK0TnsLacB5War+vl+Hlx2VQBVIBQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/YWLsWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/YWLsWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D901CC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785914433;
	bh=Fnigx3ytZLNL9b3wnbS9ZCY7aIKwcuxcH+j30SzzhEE=;
	h=To:Subject:From:Date:From;
	b=T/YWLsWoB0JQ0Zn7QHHURUyrq2/rg91dR8Vk93CjsU2JKH0sxLQvpO2FBgJ2gbf+H
	 Ic3gLez1x0KXSui+eGQxzWxBqlFPS0td8cWuYGH2s+Gb84FhfQ9sA7xOteQ+99imDt
	 9Fs06n4bHFCzYQGtNwqAPzfIpYciGJ8zF4PpVR87NHgStbFR5P2+D4itu2tcp+LDMu
	 seepoxlEkNhiQGY9ZVLUXO6HhXiWjqp1MQorjYsGlPfjjbtC00l9oRy6dztiqyHHf9
	 980FmVmt47EVipnM0CRGkQ94S6MeOB8++FvbSUhkNN0G1fi0Cnk5WiTFOYHr9tJRCM
	 ArEZ5CR6rE82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4722C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591443372.6641.11963954327963075268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01050b620559175d806201c38aec1aa89d5ab302405ccdc72d5b92b64e3ea148
Date: Wed, 05 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785914433
