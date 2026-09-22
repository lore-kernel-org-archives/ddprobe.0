Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E0E414409
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790109638; cv=none; b=LYbDgP4LJBxbTyZp8k3r8BtoLOy1fTGPFP7hDQvQlaoPcQgLkyChI3fWvehXkVcYH5+MdLNQXN+PhA3bw0xNIJoCfev54owEK2564kowI4tI93/I+rerW4q/xU7IQYhkvUEoV8yqPOwFxNLM08qcx9Ll31Ja/B7pXHPqcNizWc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790109638; c=relaxed/simple;
	bh=qX/dVoh/YOT6DVWAxve5xMFzKP9lEN+UEQKtL63PPz8=;
	h=To:Subject:From:Message-Id:Date; b=tVeSXjfb/RHM7jYwM4+Uaszl5//rDuYw50bKg39xEeOwyDJi79nhxv2l9tl4HM7+VM3Ie4kB44G+EFz0gntmLo3Cor+ObccZIu+KVDY/w9Z0zJSUeyozKA2DqhUKRnHkndsGxxyf1aS9jymoh4OIjgDwq8JIrfR/zDEwrABJFjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKWkgCPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKWkgCPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8EAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790109633;
	bh=qX/dVoh/YOT6DVWAxve5xMFzKP9lEN+UEQKtL63PPz8=;
	h=To:Subject:From:Date:From;
	b=HKWkgCPsDsmHkjPaB4FdqKOV+BBJ35Z+AMAIMBLyWWuVfXQk7tb7ZyhbF8VycKmjg
	 bZfcOz/VqFSY3OaltZ16RzkSd9gpwnKR3QyfTWYDbbkbJ0225CwgXcC3m3ITCkAfqk
	 idMAtEmem80Q/xlHmgFvkAGa9oxR6uVqePaXwL0tM2YV74xN/BFhuQonQb2gVowx4W
	 14YLeTOpKH1ieIP5zH4qF4RmWcr4+7/JNCU6qDfMhDth/sx/ExunbjuVXoGplr8Dsc
	 7660SHp/QhmuldBFYmFcFqfooYhw4m19E/CUDBhWBzCImDfYJ40UZXheq84Mea8Gfm
	 b9gd58Vs9AtDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B300EC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010963371.15663.13105430339458753326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcd2f6922c8d09226f3b41be46444429bcb07bf946d665b4746b70ee1507763
Date: Tue, 22 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790109633
