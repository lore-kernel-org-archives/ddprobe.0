Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3973CEED8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775697334; cv=none; b=lP8q95QWV3jtMgR5NE2BxM5vNwThEkOculCNfDcAFrEscR7NcpuupueVu2E2kdGeAMci6ZHv3/2ItK2ZqTAH2mj/qY82UbO/YqouXcgUi8VHWTte1u40Jkm/lDP54RVdXYzmMlWyMqrI7sSJwafQdgGGyKd2wdtTVn3cYJREn54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775697334; c=relaxed/simple;
	bh=x64C1m0zrhbq4cjsqbZ38JrrQI6G31fdYuLANiC47eQ=;
	h=To:Subject:From:Message-Id:Date; b=dUqsA6LSTwLK56RoXi1e1ZdqWpx3G0T2ilyTwD4bydy0cZCoBBbYAUwwg44DQ5336D3CljJd2WIZVvaGxOXHxXZP6yxpvTQi+/LCcrBmSqUxdYaxl/yTeyks+3Wxqe7C+EsC27xJBVLyasf8VOqoMb+NyIDibXH5SGT+eSiZZHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdjtIk3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdjtIk3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7370C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775697333;
	bh=x64C1m0zrhbq4cjsqbZ38JrrQI6G31fdYuLANiC47eQ=;
	h=To:Subject:From:Date:From;
	b=mdjtIk3JjNaZmr9hpi7g8kOf4V39N0/FybrrbXU2u7ukmfr4byoTuRfduxQUjYAxB
	 jASvfYpmetxQS/HknjHOuUyqft6w64uUnO/Sk5w59J+fcPIPu0wEYiLg6dHcX9zHVV
	 OHVW4GOkLObNwBA///uw2MnUjOacE9OYG61ROBZ1T+SZJboQXNUwkF3Y8d7GtsJkuB
	 O2NmT39UW098Yur01MLZ9np4jyUE6pO8lrx+hDxIYubA28RixZsOCXbkBLRwwHTKFb
	 6KGbiMZpIPq+u6WjuEBnz6W7RYU9rb/B55nfoXqD7K7u4O+P7l1Pg9GLrUhci/Td1H
	 0Qz0dnBYRMWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60B110FC463
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569733370.15148.6954814056093232162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734c2730429b4f3da6c352d5a310f6b1fa02319d465e3b167a9190102a930aae
Date: Thu, 09 Apr 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775697333
