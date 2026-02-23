Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A06CA52
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771817094; cv=none; b=DdKZ2EbQw+aEYtjzbwEgstS7wjw3pHzl5ABT70HZiPMqV0Yr4YjYNuSUXAfJSkTY075WTznriAXAPr81Yl8zqn6GYSqAt1HYEEBSpA0qG+QGmjcwlmCefN+RlHJLQJBa43LRlfLccdk8VZE0VJlAnwrJxpYTZFA+tH9v8zcK9RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771817094; c=relaxed/simple;
	bh=dQ6SaFYSKnxDl5LEbHyccKhbBx+Eu3b46orUiqk0HXw=;
	h=To:Subject:From:Message-Id:Date; b=LDJUdp9bA+6ZqOnH8BJNuLGIO8trVqdzqTrIL9C486vFPp/+HGjpcz8nmp/2tylQIRO6Z7bA8C3tTTvxM8ZH3Fmriuf2CNmMMbWeCmr6Dw3F5/3qXYKuCSBmPtvhXVF6yRTuVDp2sX4GEhsmuav/7sCG7ik0ALWZUVshxSukYlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiyrCYaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiyrCYaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A866BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771817093;
	bh=dQ6SaFYSKnxDl5LEbHyccKhbBx+Eu3b46orUiqk0HXw=;
	h=To:Subject:From:Date:From;
	b=jiyrCYaMUJkOn/vYottXpUOHT0URwBckBsXRh9XR3sSqUQwQ/Tq1BZiwrR99cHzG6
	 7be4rMbClu7AxftPcwydubKmiyL5uhexPEtnAb5ydrE3NnAN5PngoqSer3R5/UISMm
	 ysfpUA9laKp8HqGhc+LuUsvzD/SBn3fFK8mWYsuGgCunrY5pQYt+p/xtJHFwk76atJ
	 RB3zbikhwxl/qjmkkzbO4SBtgbDT0vi/gtJbhtMiGYAbGCU9JogX2dbboBojLcCYTn
	 cxhz6ESeYD8AgOn1N/HxQGBZP7FMJGToo19WBs6VM3AUCKp/WkX5nLm17urydaBzMd
	 nzRdRdIW1o8JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94357C636B9
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181709358.23670.9740613109187662712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a092c625133d49380e9c4542760500e792cb64769504228c02584c90e51a76
Date: Mon, 23 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771817093
