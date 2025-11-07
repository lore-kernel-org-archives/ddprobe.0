Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5B430FC19
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762552793; cv=none; b=D+lxlyScyvbZt3L8pg9xBfVtvKmL9ltR7jgzb64XZp7oMY2ucQWgLB/vaTW1kSDthmtBT6+DWJdRB6yI+PYcjMjKeBqfrBHrSHylikGBS4KU6wB5Zr2Dxtm77lL7N/j8HroNKZ8FrB1pSvzNZHVMS1yuYOz7TV7vpe9GTRZ5KhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762552793; c=relaxed/simple;
	bh=GUu9TmRC+mO0sza1UMA1gpkf+AF7oi2gw01LymT/gY0=;
	h=To:Subject:From:Message-Id:Date; b=c4hCnpOMA5UGcWDnZtkbjIxCWnlHlOHRbOVkUSJne1Fca6dMWqS6NR38PRFFxpAbdGUaeDHQM0tdEDIi1IJzwpKQyZLZWt3+1BHGlm6TyYxzT/kLP72NKOxQLAYyxlugM6a/ryv85SFXVEDbZaWEzqz3MEQkK7I16Rbwnky30ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jq43yi82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jq43yi82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A242FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762552793;
	bh=GUu9TmRC+mO0sza1UMA1gpkf+AF7oi2gw01LymT/gY0=;
	h=To:Subject:From:Date:From;
	b=jq43yi82QtV20yuNjA2pZ2QiJraBAYmj5yc7ZD810QVQD9oWUFBzXcMFz7uWzMqGn
	 uE/m4C8YwtvlAvf4YSiU3Y46YVYbEyKkrPT1y18WpG5nokkKnDCl3NGefwrDGgrTwg
	 KhCFNj0NbhY+woLEzcEqNazxEVy+ojQUgmRpN25s5bOa2HUHw8vr5z93UpRcc16HPm
	 tixyhcOXcqcWpZj7LzzCqXbf2u7RfjIiwGbUv22tpG0Rn/CvnV9iOQX4a6gL1P+Qaf
	 11HFcjpDaxxw6e2bJMhXd4H5HjCEHFKjTyhh0yWQwBn64byNAWmpbnYMKQueFE2mVu
	 U1abgXnNoY1bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CEDCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255279359.12216.7789166579685335681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49163d717e2ac5c2aa0644be8e16757cdeea06c53d22eb46505588d25dd6719c
Date: Fri, 07 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762552793
