Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FD01E89B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705660097; cv=none; b=G80kJToGewbp0t5HE5+DpqRcVisE7Z+iwAC47biBaanjl4CcBJegVdkTe1v9aKJILH9p1rfmfauvEq1/uqBnYHcJQPPQLVFOhpuNHGKtkbZOsX386ya60CzCnoGPMSiOxbLjJo8wGZnIChkXkGTZzFK68Tv8SgF81hf7K318Bqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705660097; c=relaxed/simple;
	bh=f6gc3MC4BeK3vx82gwqr13Wq6YL4Ivoxls+yOLmcEy0=;
	h=To:Subject:From:Message-Id:Date; b=PXxSyClgrT1PKE2ttd2cWwkj93ApFwkMRzBgMAGb8lmuOk510rAHpgLpJ5T85X0Ddxf3APdtR54Mui+LgcS164fBbp1zBeh4MgOelL9UZ4hL04aVrc9OORuSP8a0eFtjEM1BEy1J2APOYohi4x0qJ0Fo4eSbiI/5+TUfbn0/hTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PocJUNqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PocJUNqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA4EC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705660096;
	bh=f6gc3MC4BeK3vx82gwqr13Wq6YL4Ivoxls+yOLmcEy0=;
	h=To:Subject:From:Date:From;
	b=PocJUNqsy34HzJxBvn6+hZ57ldgn7CiQQvae1875AbTnSYp0celBX7KDeuOvNUenc
	 BAbW+XOXGyz7FncncO+mPOd3NDXQGdyFHnkfCaB9edpSvHdA8HQn8axL8wXguDMEi+
	 S9/AT3144Zwxg5WogXxloj0P8+garfMEjOQereH/jsZET8uP49tZZyk/m2wbj6cwvP
	 9I1WlIMHZwcxTPMy76B8kqHxyyC5dQp95mQYbkwh9P0M7cAr79hD4hlK9+mmvjWtnb
	 HBiI9oDAPKgl6Xq3SI8GjYEL1aNb8B9uvyPTIobPLL7PvY0eZbWsUTmvfYydJuvRFZ
	 NlrsS7T5bwBaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A13C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566009637.14719.14110196595274592908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3599b7662efefc8a7edfe0d5b64f884566edc60c6a1ed62765fba2b2aaadfd25
Date: Fri, 19 Jan 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705660096
