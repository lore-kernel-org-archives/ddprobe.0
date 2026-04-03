Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAD8313E01
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775195134; cv=none; b=qhBtpZX+BfQqLt1E60o1BZDXkL6bdKMhJv+M/WtgFaVcxf1UquPOKOf0iqcErqjJPyscBgWN8x9wmwDGgoNH0KBwieZJrCn0AWEBS9ahdg3dHCcnmntzeT4HqFrA+wqHmqLqvGRYCnYubm4Yl0pECxwKpH/tQkQoEej75ladvI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775195134; c=relaxed/simple;
	bh=fl/5vnYI7PBhDA89ou3R2xrhUV313ov1LPM6ukVUH6Q=;
	h=To:Subject:From:Message-Id:Date; b=Gtqi75526ryFvfCuhGV9VepNHehiwwHWM0LyX/S/wDqOq1fu1vNumJ3hxWqJlyjUgOy2oAvIA3/HWqJP7owVEgPH9wSlpLOR97KrKsW3u/zTRiYD5SuAYc4oV6VqxdlWhrhKIZ6pPpABVQ5zjAZZjdilHy0mgsNYJy8iqT1XPPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcF06vtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcF06vtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3143C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775195133;
	bh=fl/5vnYI7PBhDA89ou3R2xrhUV313ov1LPM6ukVUH6Q=;
	h=To:Subject:From:Date:From;
	b=dcF06vtO1QM2FUJ34+mzK7XD85eF6LsbRIK89Iqf3UAnBYGYqbOPRrTm6rwsmyUuR
	 G6sOhZA4RxTZqnbAmlD6HtjfGbcluQIu2LADcQOwmk/pkx2fCG6qZsldky6wBCjOIF
	 DcmMX5PtlGjmdUORS6nlVO+tXpxW7AB4fXX1lntw7y1mvlMvoQQo2Q8CyUTQHXka0P
	 gZD/FuN8fu95ZPxrwAPEPe41u9oilHBKqBAA2aZvFYgJROd1Sg5sih/p8d8EW5TUbN
	 pLY0V0sUTq0IenhXrJra7Dq3ywcqs6XihSEYqT+pGt2omv8F1XrjeLG86BXL09epwk
	 5GJ2PiCr1xq1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A98D730A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519513368.6594.3363133834008179752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9cc2a2fef5a78b5da303233df12409e4ed503528b5e0609d134647d1173ecce
Date: Fri, 03 Apr 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775195133
