Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C7FA93D
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720278383; cv=none; b=ravHcXxHsCkteAZJ8BCPHnoy1em1ODAdR/99676pc1HrVh5AGIu0foQO27zf3xXE5uU0bwtkiDseiOgCmQXUxh+EvhO6b7Q2MA6xr7VMBj99cXAw4CnmJzxVt3WRBqCVgkHXHh5Mpidc1a4/sS6NKR8TLkAZxbwtNGBjFkvpW9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720278383; c=relaxed/simple;
	bh=ykBRKYFrK4fciQdkHiajpO2+ugRJ8JNLSrwzXeaHvuY=;
	h=To:Subject:From:Message-Id:Date; b=hJup0E/dtDUok/yMMpZCVNKnqpceH6acR7/jQmXP9nhk7wRQglAVfv7Gg+2A1F7F43WGZDGJGicmPIYVD9ZGn0zOVaATJ7ZIiVBWIyLcGvCCYBmXJeXdi+fTQ0+upfHY1BXQf+9Fsdv0o0bTYrNVf5YJX3fAT3mHTMPq3n9/130=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2zc2Mg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2zc2Mg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B77C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720278382;
	bh=ykBRKYFrK4fciQdkHiajpO2+ugRJ8JNLSrwzXeaHvuY=;
	h=To:Subject:From:Date:From;
	b=o2zc2Mg77ywskk8xry8wsxD/gmyE+zYuQ4Qr5qZpNRuyFVb0vuGxbSAqX5MUTmZj+
	 L/wPMHQC5przBgJS0IWvAmC6UNzBtRIoQZ9QqYHULzLbtJp7ynzopEVHtSBspjRUxA
	 egdmQx5v4++HRFs638dpEcm/ubo1TYzZb4s5rTi0+TElei0vNDuT3PS1x6pZFx6MWJ
	 L0VA5omqERAikT738vnGLLJN4sNEKEw6W6a+us9HcC4WwhcjxnFAtGzCZ9eEmNbq/5
	 R//u9pV3ZUjMUnB1qCUs22IgAH0OHnUeD53tO1Ru+9GDYiJvjiJEcC+XUgqkFmFn4G
	 BKZbut2Hr41Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF00C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027838276.3360.17554071041184226306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7d309108ed88b3f9d54a4f33ef6c6b7a9f50e9da5ddfca511cafdbadf99b98
Date: Sat, 06 Jul 2024 15:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720278382
