Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4F010F9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737297354; cv=none; b=ZE4aR81H5UZIv3m3XR/tOdUOMxdU3t2VNN99/4sl4dQCQwsO56NHZQ3KoQJ/VLp4YEFTvQ5kFxWxu2I1IO5xFeZecWh8Z4fZn42jl7/wUnmoRhasB8Q5hodEtZVvsQXXqV9or/W3MqzYGoOVsABO7tH9UMONABBZ1EJ19fj2zoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737297354; c=relaxed/simple;
	bh=HbgBuAEy+rPTZYgTAgpChg/JFAEdmy4/jVv8Wh9roV0=;
	h=To:Subject:From:Message-Id:Date; b=EIGjuk0DM4qQnD0uiAMar6+CFl2RrRuwttKv4k9fekrVCB40xvLvXrr4rvNLheC6F/7lBMDgQXxJIpjbF1f0aA0vyTtu6GqUENaGtanDgwfKOhlq07TfSgMkfRVfdK4QZNyHxteW5hT0cghuKaeOt/n6KSNLkwxr9shQ/MOYSuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spNKMJf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spNKMJf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A6CC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737297353;
	bh=HbgBuAEy+rPTZYgTAgpChg/JFAEdmy4/jVv8Wh9roV0=;
	h=To:Subject:From:Date:From;
	b=spNKMJf2x+DfT5YC9JdZKTsyA3FNgLX9QbbTDXUMgWvBiw7w6m+GxWWEY58qj/eWM
	 K67B5XOoW1IzGfixFY3BPp4Uj2Tz/c7IR40T8HcOLX4xXq38krXDVsgqABjZd85p+a
	 xyrnwCOG16HutMeBFbEgNiYsGQRpGBPvFf+JOH5Hm2Z3Uj92ACe4swf2MCl9uoJdr+
	 Cj6xnFgrr9WIAa2TGa3GPqBO6lpm67WlCQm6fl8jHPD7zFi9NcGM9WDoDakl5CNYgw
	 wuUvJ3tjpa3SV/a9zUnHqj7bTFFx/T5/F/Gffy1+jlWYSmeh2fDJuKTP6GCIMaco1Q
	 D5TjGrGe6BsOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91272C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729735357.26605.12485382776709299099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7dddbebac928a2ef5ca3e5af1ab9929463d921a1c53b9b84cb07659217439f
Date: Sun, 19 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737297353
