Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85405221DB1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 12:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739189155; cv=none; b=W8emOYGay8fImF14oliLR/HLKTEAkHEJiuQQ6WpVStpXJYVdL2sCWh4W+hCVDcZPjWBWy0/qG0DfQ5ZFDWOPoVQSVES8B/obUJ2IUuDmXXEKN783Fad5w5QWdP5gSdTt3oJf+ipywiZg9SEYbOXsMsqiduYUQor5DgTvdwBZrm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739189155; c=relaxed/simple;
	bh=h7mqjQT92Oso33WNJRrAjbW+5B4Y4qsGTJRE3cqy6/Q=;
	h=To:Subject:From:Message-Id:Date; b=C+ahDActBAHmM80UOs+371o5V9/eg7BOn8pnpw5zowwiRljinZpOieoMhIy8ELw0pU3ehqnvZpGCWa/sh5crOV/zHsZRJVEWgczLIfcX9PaiuE3jIUIetCUajtgLkpKmdGTuAdgxlQT1aJASRBZ34wq8OjpLHVqNSkqiKZ9uTMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcrifJZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcrifJZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E48CC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 12:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739189154;
	bh=h7mqjQT92Oso33WNJRrAjbW+5B4Y4qsGTJRE3cqy6/Q=;
	h=To:Subject:From:Date:From;
	b=BcrifJZrqsTjAEVlRgYgpLN4P/W2AdRfeBfCvO4bI6xHoGuBMoFeB5HiGFHLZPN6I
	 BeAbS/qwaVQSurZrkjZPbf4Ma8d/0LskKu7dT1j/MJ1ZdI+URXZLb78YgbgSt+uJUM
	 227GJQ0jMwENXSXb/Z2LfWFzpqPtZku9uPUL4SAC7MPrsNtdB1k9Ir+3tTopepESWs
	 7bqd0Y2IIrKKyYWIkmy9xU748mOLK4cHoJxC4qucOjTjmoMS/WAUWbn5fnPpD0gC1s
	 2OtImOk0/X/OuUEemchGoBiyN5+kybGLmI3TBke8cU41L2ObKrB6dS+Ih4/avmHD51
	 zMC/LmztH2TAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04EAC0219D
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918915369.688.17627415502660207813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9493a3b18f3343185736ec169538ac7d5bf50e61a2b81d62d57e844b1c0fcfe0
Date: Mon, 10 Feb 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739189153
