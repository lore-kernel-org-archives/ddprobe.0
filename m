Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430473B28D
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788676234; cv=none; b=bB07PShXumeAF2zQblPxV6LTrFzI18Z77OoVp/2TGTjRCw8JMKXMJjiJAQCHzYJHdV5hF/4hE+1epOLqTXTiUQfwlHA6BSyloTLbSD+BMxV7cq2si4azKU4r584pF5lPrm++hzWrqHQu/XI1pHcMWw7z/vPzNRxOoYaLHQTzfV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788676234; c=relaxed/simple;
	bh=EZ4fvo0XKTTSHyYYpheR5l0kFo1HCk94Lk44kBxjz5g=;
	h=To:Subject:From:Message-Id:Date; b=fWGlGcon0wNZceac9ki6n99CNHSLPRkE6yO7n++0cU+sbmCBSLjFVlW3qGe3ZdGYIc9AL+wKrSfRmeY8FIid+99QWpq5zxe2PpscczPV3mw7zgzYn0GdA5jQzXLHSAmQDsjYc/CAVKQGHA+E2wZQqsmDyY/FlPjsW2xS6ypVKfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2lcnFSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2lcnFSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19B4C2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788676233;
	bh=EZ4fvo0XKTTSHyYYpheR5l0kFo1HCk94Lk44kBxjz5g=;
	h=To:Subject:From:Date:From;
	b=f2lcnFSyCx2GLIdFptx3rFGdbb12lI5ft+ZBfHNxFeIggP6WI8yoQ521hmy7yXnN1
	 fOFwFcw29skic5Q/3PvHP8eJqYdyObsZfh1vdWFjpalO16kjuAQ32WXWOOYrSp2Lui
	 AuFkJkvAqpa63ZiJq2sGZfGgFpyw/fzxd8tvbY1/gbDsHyYXyl14Vlufv2Bu+B2zN2
	 yInl11hjAA5u25Fy5HXaQTap7MTUc5cn5h5ydS9NsZiwj8bCHnTu6Do4EhD9tjVAn5
	 fumytC07CZ2sGABZIGIeKLwhMtZhczQLV0PoomoHrtfF8dzFR4k4ZWTQdm4uqSY9iC
	 zcJgr15ErtYrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE90EC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867623370.13131.9892976055696444343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7077ca41711861ec1846b2b76543ca59b8237e4a1655736d391f55c8a3016e88
Date: Sun, 06 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788676233
