Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351E428CF53
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747135794; cv=none; b=Di/k9WffljGIeyETtDDFsqvuIf6BqaO0oZw6PHaBeKD8Nc5sxNwCf4Ps+sXWImaOs2gDxqjhBBGs10NIv8jnflCxna5OGrkSiaiFY97ufwppdJEwq+AOKWj/yHlAwcZ7kgqOWG1yiy/bXeWoon6+nz/f8FsSFLLZBvSAS++AOns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747135794; c=relaxed/simple;
	bh=oWEs3mmysZHJTm/xxmKqjqTrj9HW9FIy8oqlfwK4wn0=;
	h=To:Subject:From:Message-Id:Date; b=SmREUST8G/3uN0LkiZLZ+5vzDtPyVyauzuyrD1RlgZaiTe0zJJvolaCFMjpPZ/UHE33QONDx19D1INg5GcM6JOUY0ZJJCC+egMg45+MMbMbqoOdWoGufhN+bYyUH900ahDTqo4CFZsBsou79qlpbb7SHdat8a4y2VM4Ri77G3TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyY6lo9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyY6lo9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A303BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747135793;
	bh=oWEs3mmysZHJTm/xxmKqjqTrj9HW9FIy8oqlfwK4wn0=;
	h=To:Subject:From:Date:From;
	b=ZyY6lo9mlyGsXtCcnoItznhft3zjxC6UHzdrQUJTGKqXoGbc+Ye4wa0/VHSLw3TYF
	 SxbhNlh29BXgMzj8BCrKQ7HYX/EbV/Qx43oCvg7cIeQPq9/oxgdxk8KHkuVJZQQNQG
	 4RjrileMcyfRr7lFpUcHVm+Hx9VgSg3ETX9TrunmQdSfqd5IFP7s0ifQgQeiIwjp5A
	 6yFv+AKXJSzUxu3Yk0XG7s8LiNuHkZMugE9AIJLTbwxK1PzBQbZh/BcEb4AIH3Jhd8
	 T3xuHXzCgqp8Uv1304JVn7aPYusPZKO6cJK+sttxahJ98pRhNyhNiOY7Ia+FVrpGtl
	 f3wGZe7urP2Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E6C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713579357.9774.16481799923827881496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c081182d8dc64dea90d4abeac567f6621e9ba2e51c51e006a244eec2cbd345
Date: Tue, 13 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747135793
