Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289D923A994
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765669974; cv=none; b=aPoujYrzYcM6p81BouPY5UPbMHtcJEYgGwrQXL7lPhJAVaTBq9DtlyMNlrToIJf/ioKJvZSXtknC9SmN/b64hPsnfE+qdA1nT/k8zRr2fVsepxQunLdFzHdbOHgy/NlcY5p7VP3Xf6fMPG1vpsHdOGbldRx+hAq6y+eQKrRIxXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765669974; c=relaxed/simple;
	bh=aAaW+22gzJrI+oEzXzLmOIMLVuZfkXm6mlLekeXyWE0=;
	h=To:Subject:From:Message-Id:Date; b=qSWYNt7LuLmD1X00RthHfOHjJexOzpAAydAkBZY+vw6bV0ii9iXxa6cc3RiJiMDk8ZIDH2plYrBtigcu6Fb7D4WiH7hNmgC9POYPHmwjI7PFEk5eiKUU9uMhGiJa3l7FK3zKtqhDUHAoCYsI6AIYaW03GFXvP6kNZbnds2+rWzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcvIWP+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcvIWP+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89FDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765669973;
	bh=aAaW+22gzJrI+oEzXzLmOIMLVuZfkXm6mlLekeXyWE0=;
	h=To:Subject:From:Date:From;
	b=NcvIWP+Rlhi40Km7LDQKmwtSsUfbj75wqUUuz4N9dRYiIAMfBIKzwnf4/2qABJEJ8
	 Ir7FY6FSgADvbICL/h/ZWgO/w0jVsaW83CaUHkTGTO4faqVO6YgdVziaHZDTNcokoQ
	 yp8lfKMN7gDReqHq1+90NQppHEOZj55t797bOa+9HTOpJZih2qFie5jSTF/PNSAzEx
	 XDAxEk/JiEnEGiWTD/ZFgL5cRGpJhdqWcIVT0G+DlzG+CgLsT40PfuCJsVOTrRylDw
	 Jq2EbF3+dqs55p+hE0Bd7OHQWu3ozfgmlXuhV4n+r0knojqFr9RqR0Kaol3PhVWOX8
	 at4wYLuUTdozw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991DDD5B169
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566997359.32250.6092906120058490249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a391b6d4841659d3edd724cf73722b746a09f83682d91ef6ad271cc9c8ec8c09
Date: Sat, 13 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765669973
