Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A83242D72
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760593793; cv=none; b=CNw1Sc+Zhc93P+fRA6toWGCs+3rVPCcDwKI0Cp3BxUXzExQBJmZ+BBkaKBnQTp4UrMETqmfRzShVCiDxIMJBvjWdNxZOm2hhy6t28zlCFKwlIt0ZaKCmx6w4eRtKDpY1lJ47rzDh0zaQxD7gp1jtE9l5uXyQG9YQhkqNPE8i0aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760593793; c=relaxed/simple;
	bh=IegSQKdfTbAodOYXG44XIxbnLAN3APZdXlWZ8Ab1YuI=;
	h=To:Subject:From:Message-Id:Date; b=XkoBE+Xu/iRyBMlpNoKVuRSq8JQudqO53WhPUJVboZe/FKFlY+gWQmaVD9R5i1EmUlMqqRnruMyenNy7siRGkjPjkLKD76j1RJknUWXvnGsT2zzLg/Oit/48n955bK/+M/Wb/ErFo99s5GjS/vyZ0mhOmAQw1mW2ZzAJkSqWN+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdXvck3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdXvck3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB6C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760593793;
	bh=IegSQKdfTbAodOYXG44XIxbnLAN3APZdXlWZ8Ab1YuI=;
	h=To:Subject:From:Date:From;
	b=DdXvck3grKuhbLTcg8KWpM7ALdosZJBmt90gL0glFovTr/Mf6wBfcQItRkCdi0WjX
	 vDJTyXOd+sBlhMPc7BiAQvj5lnF90gpxlIptk/eJ6Y7fPlQYuZKKvozE+oR2LQ2oen
	 I+z111BUKmNdeeviqYjz4Yx1uDlP336GrFjvVku4crgboqnjLbghHecw3NAFfbJNKn
	 Ev54ouYkateIelC9bpT3V34X6pjmDtxVwE7cuECR3FdVoba9uwGWAx8Eqm2FZ0KX2/
	 sc7OwKS71hpyjHL+Zd5xZ2HYN/6yf8Fje3uK9MJtqbeO/iqv5RgVgzF5+MEPxUleon
	 GjO2ht6y1cgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F0DCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059379357.19410.4473218686064576251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58946e258865e0434712e3c44b2368cce77a3b53ef577c1d0ba5165f2a21b596
Date: Thu, 16 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760593793
