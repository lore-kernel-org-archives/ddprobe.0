Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660222940F
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742447395; cv=none; b=Ut549yt/5fa82J+1ADLJR2WB2uPQuQMXXeexmpET3oJcQH6q1mCT/Vi6nXqiI/0TbfnzzGINnka44kFBNz8RUpTaaPqG7KAEm/c3Mr9zdP82XzrCa+1uGgDCBD6EeIC1hjLKTbf+7aNiNV85CXar9kggmvQjJDkWk5iKvnnV13U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742447395; c=relaxed/simple;
	bh=d6gkBiZuefxVvJLM5Duy4c++S7WTvJOpp5MHeJCx11g=;
	h=To:Subject:From:Message-Id:Date; b=rJmMazUe9e4b7VWbVPOUTkJF9twlaH2la6SZHrNEUfyUChc/mI7XKkTQLeejXZxIJ/KEL40e5tfqs5Af+lmWEryERaxmO3GMQS4/vA0aGcg8MGny+59dyc2mTOx5BIHPy22DMMnyqhCEKPomj4262wy7ZFOHk/MWs1AQAzNBcoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYMzTm6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYMzTm6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCD9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742447393;
	bh=d6gkBiZuefxVvJLM5Duy4c++S7WTvJOpp5MHeJCx11g=;
	h=To:Subject:From:Date:From;
	b=YYMzTm6L4UQiNdEANHfK7QbBIFJxySt0WgcrElavPQ3Bn+0a2p/DvcM45YQa2MvDW
	 fVjOahpgcLEYd0Im1H/RLLQo0leW0BnTWuDwO0RczV+sx9BEgcIOU5G0FtM8VwHUGw
	 WF2UhWIsonkbwaKVD3ycYTdYjCBdU6O/+LbzsYnXeYaIyAjuOpnI+Z+HemPE5C79Rj
	 3Xhi5uScLTZPgK7N5kralFRYhFH/VqJhEjpDnxK86fTyEzQBztvFjLmI9FfVaWoigi
	 PLQX8U9hJJkfXDVG5gbSGfHcO/0Xo7iYP8plgOtr+2mtDiqwd8BAgIn5edlE09kmix
	 3qPclqcaAaRqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D434C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244739359.28511.12986314976322324631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511d1fc4454b32f5b65039cd5fe7fd64c0b2329b336296e23a11a352152b3e38
Date: Thu, 20 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742447393
