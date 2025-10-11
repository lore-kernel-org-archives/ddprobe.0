Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4342919F40B
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760166594; cv=none; b=q/BLnRnZ5dt2V+zv08nb6Fz94jlHXIBVz1F3mCOjfHqJOL45PEYaX8wIwjUQGHR7BfYa77Ow+I4t3jWyJzZAZ0K0wM4D0Bo2nDfQn9XxLOrJ3V3sH50vcSuPXKkUidDyJXUvSb7TtgSygXzpZz3IfmCWuZItavb/CDZm7YYdux4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760166594; c=relaxed/simple;
	bh=sepRjrcIgOyvp+REf49xyUn/YMOPoy1QBsiFaSDkHw4=;
	h=To:Subject:From:Message-Id:Date; b=OUcWy5NhHgBKSUL0ARZ21pZDEramdAF6XqOvpxvpx3oh4ZqNqhSajMGwuOx9/Hm8xJdRnbe7wZZ98Mh9Ag0O4Wihos5a7hA35/zT9YZRqg8djhhX964+AmpH1VzuoQA4v0nzJUSEo6bdMaX49aWuKK+ETK9aigj7rjuhYsFBzyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msAWYR1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msAWYR1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1CFC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760166593;
	bh=sepRjrcIgOyvp+REf49xyUn/YMOPoy1QBsiFaSDkHw4=;
	h=To:Subject:From:Date:From;
	b=msAWYR1Q4tNhq8A+DY868KgzzO1lWgvss+D1QEPrhZvnfs27DVTIcpcirCnXWarlp
	 glbTKQVjN7lydNvMBfHjWdc+qtpNL/l7BrmH+4UJ8EgEU+3/WbuLy9xwkkWKD+dxeR
	 573yKsZLZ9L6xw2GkKPJH+ZVitA284LK0p/OSCVALvO70dc/sOX8L94qDgB2PjW3uY
	 ptFn4K7DSQ8FEyHTbImZ1uRB6xVpvgCf69nmYmQ4c/dy2O/rBpGgWm0y7g0TYQdjCP
	 ZJ0IglTpLZSEvprDCvcQWwfCIbauski2MxlUdEnLdVt50PIGMznUmPDBlLG9D4ME5J
	 Q6GP71o86X9qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3D5CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016659357.10195.11016889243893719136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77db894a29b0f1bd5aef87fb9464300e15e15517794b3c8c10536fc9569a9ed
Date: Sat, 11 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760166593
