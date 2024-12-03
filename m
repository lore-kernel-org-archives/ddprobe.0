Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370F82500BD
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733211354; cv=none; b=JLyLXA49eZXWjVqWoA8nWpIKesjfcrHw2KbWktD2zF+tYUWXZdndWk+E9DG/7gHYzw6lj/ibLWfAuRmsRJzpA/GuHc6zvnqzVbJgGwB3gorh6MI3AKsbqDfqxjIegpPmTa/t2WMrnVn030rjjyL4+ENJIQCJWKdNA6rCnBJcRN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733211354; c=relaxed/simple;
	bh=ERAxro2vjxUOFqBUG+JkvcLAwF2ESrqWEdmyQLEO238=;
	h=To:Subject:From:Message-Id:Date; b=IGjaHAVrmOG5tMFac0wbkZKJmrSJsGK7lf9ReL/5CCPiBjb7dhKuNQseLify5Eq512W9TjA7S5lwGALjP5J5ge4nsrjScULJA47KakmtHnpsw/KOZRCmUEKeCI3OOiHlgJDXSUGW3Sa125IMBwyZ3WQ3KAwY0EaB6BMe3/fpfGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtYJNO+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtYJNO+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BE7C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733211353;
	bh=ERAxro2vjxUOFqBUG+JkvcLAwF2ESrqWEdmyQLEO238=;
	h=To:Subject:From:Date:From;
	b=rtYJNO+XoznNMX8s/EYdxsdtOcOyfJnepx8NF7mhYBrFudcmfAG+IfNwwTm0vzajv
	 s5lhZGbtXkz4ncBozF5ku+kr4M4fOruhrEqfxkkKd9GG+WWRcCa3cwjA0ltl1FnLIn
	 Q0ajtvidHLDG84SfaNn9ndz2IgqeTbQLMJ1ubay8F0nTQslC55VKHCtA/13aHVu4qN
	 P0QVaB0hq2fvsu3EjUL3SAD67sOzsCHl08Qo+OPIdnBIJQx+RUEanCK11O88i81aBx
	 ak9zqMlCFcAcx7qGkjqkBlyczXEMB0ZEicJa6a7acmTvjb8KtXuWkZhx5sm76vJkGk
	 0fcbOGMH7tycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16A6E6C60E
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321135364.16622.7608292973400447569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ad295da47e7cbfc66d61b4467258d973e5fa07865f2b98887878e075390f23
Date: Tue, 03 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733211353
