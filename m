Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E83224B05
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833834; cv=none; b=bLpsExcB2Ac/i4r6G8MAuqDUafVk5nu9XO47C0bbSCmtXD99lvoEdrZHDSp1VGng4KLcfb/1Krp5rX4teywao/Hsn6rmT6tRgJ/pCxLYI6qw107Wl4ZzG3tqT5d3OSgFr5vsYGV7JsfRW43NaOfIMx65ybspcBsoiKkc43SlzL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833834; c=relaxed/simple;
	bh=kQzivI1mKT3N8ZUtmqyO6XGAxHkfDqO1A2XtVtqeVcY=;
	h=To:Subject:From:Message-Id:Date; b=pBUM+fq460y5JT3Kn/2nv/Wgt1gMVTYDRA0eDMycV3bnREJD5efxFIAPKbjcC+HrjcjghHNhVE26ZjgxHoMeKOoTfFeUd//s4G//nkxjPktWAmCppW+JXTfhvk+ySPsoYbmSOA6gETb65bYlwDF7vRpfKjMCCj9NxNfOrraMCQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUvQhTww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUvQhTww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E966C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768833833;
	bh=kQzivI1mKT3N8ZUtmqyO6XGAxHkfDqO1A2XtVtqeVcY=;
	h=To:Subject:From:Date:From;
	b=GUvQhTwwb+R6kcY0LXaxz6W2+le7Bd6+f0gvWEvRjaSLl/amo6AizoVeJZJ8keKu5
	 +qtZz/r2wLiwAiGa2Gt/xEcFFHXh07HLMKVP1gnrzs8crG1FVlwGt06c7V8ADyCY27
	 WM1zZzfCijk4wbip99SnWVbbwvdK4HvKYAx1uevirrRdmOVwQR7psM/vCb6NRfRp/u
	 YyaMYOnNci72+KnRx/eIYhskXIai6ZZ1s7vMbJKwRdeFpScf/tkC0+m0lA4vlZxDyY
	 5PW+jlXtCM3ZmWGkX4ryegxDA+flayPP1QkBnebThuYqqgfCv2itULQG/jj4NxIjEI
	 FlhuAh2lU8Fpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9AD29C36
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883383358.31677.16785970922157803357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075ab62ebca127499b956764f44d4e25e97a1382768c00c9590f260ba915b484
Date: Mon, 19 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768833833
