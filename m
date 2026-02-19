Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5D1E9919
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771507494; cv=none; b=X3YfkOCgk9VMsYbC3utAdrrzB0X0yv0wN28LpGHpOnOgR1b54cGI54iWSmoA/LyQRNkeVHfNK3Lz7ffOKEJ43obYBUNxDiTLRJHm+dOQvXTNnS76ISEIkvgoLan95a49r/AiJKk2CTlKi4HEAXsciTAiILunIUAyllkdTbqoQAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771507494; c=relaxed/simple;
	bh=dZj+aZr8z9GUv0VWM/V6yVpiu1RLZNSWuP1oKGiH4dI=;
	h=To:Subject:From:Message-Id:Date; b=bD7aHa9ntxcG+htf6OMHiVDgeNfi2J3dlGJBxvOYRbHpQerqSQ9SFVyZarRT07IG2eL/kAdSFBzLeljTnZ03oHJUSQCCEXS9FuDp0IX5Aw4D9VI3ql9Goi7HCiCADm9hnLuuOAtPcKEJZN+hXgFZWXk58+3FfEqQxqLZQXroxZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqxd4S8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqxd4S8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB54C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771507493;
	bh=dZj+aZr8z9GUv0VWM/V6yVpiu1RLZNSWuP1oKGiH4dI=;
	h=To:Subject:From:Date:From;
	b=qqxd4S8KNSZYCtrAme7zuF2hf8lf5ZeMyeuW9Uiekf7FI6sYtPyowmQUFKhXT5AYQ
	 ioNYClyntuOyzUA2gSLn6IEeYfM5/r9Tee9b3ceIXPiuitGtIgNZN6MJPx6F93loFR
	 AA7MbWGAeUmWleGhYtqBtbpzCYO/YNz5tQo/Z295j6edO+5svFq4iFeYKhqFWWQ5Uj
	 4C9lDUIpDPkig+T7b7DkTFHWPgGDxBCYAgbjrWpcBwHHk4ipRfjqaXcfcQmEokvPgd
	 6w3ew5Jmapk97LaG68BNq/htpIf3XEjw2htqUhPMrgVsvuB6w5oRpp67Oiv6A2UbHE
	 t4OwVbuTt+ThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDF4E9A049
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150749362.30602.6417179177824009595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4006ed81aee5dddbcfcbaf247de51957e2288452fd873d08db0d2e7fca1a7dd3
Date: Thu, 19 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771507493
