Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C9B3803D3
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791198634; cv=none; b=Ko/LDrdm5uW51hmR3wv7c5V8NeA6s5SgzatFU7xT4KPQFe8ZkRTbtx98IEV7Yha52qGOBsFk5B033jYlYAFFtKk6qD5Q3mdBBQLRMj9ZkogYgmqyRmIutR7tU0GrErXu1MK3BCGlRBmFbSe7WhrLfXKB3Rv43FhLXvW5AhUaPp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791198634; c=relaxed/simple;
	bh=riE+5m9TaEDjyH5qyXC4XIW00GNVTkPg2CvQKKgb870=;
	h=To:Subject:From:Message-Id:Date; b=PWOsAWrPNbpBP1dii6gc1dAG3D4l/IY29VXUf88nIrkL1QqNlCu42sNHPRJgHLulScv9YzJTsWXs5xQWHHRlCOG1JAZFklXFwd6OnrJV/a2Q5IQdm/f4mvsrSwGTXj1P0U78sB6rXUDQ3xcsDPqEPHY9tgUSgQGLLcav+y/4dyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=om7qkBU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="om7qkBU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC169C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791198633;
	bh=riE+5m9TaEDjyH5qyXC4XIW00GNVTkPg2CvQKKgb870=;
	h=To:Subject:From:Date:From;
	b=om7qkBU/Lt/Pa0KXUiCthA2BeWkhyyJQA7gONEBC372Tg5V8FGm2QT9H/rULTBYGa
	 vlq6aKJnOIH/9khEoBgiXMDlnjVJTEm81l4M0Qz7WrfMkrErDTA1EBF/mMJtXE901c
	 k3zZr/x6WYG31mO+DuOXyLZYEn0s+ciCZGV2oJFcTPHrrO8K6dK0iCFWZXcM9Pdfuc
	 FAJ0ZOyng6QpUaQkEJEpNAhfq+eww9xutiEvDDet63Kk5A+cTZsQ3HAWi5viiHjZdT
	 UKlcIw6qBNOu4afXICxYhaMT/Schmmd5qJcZos0cD4Ui1RglMXkCR8CilcSSmOF78f
	 2EK8Hp2snzwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA212CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119863368.25681.8580084003490472226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e04dbb73e2a8ec8499a3ed3b0c55a51596792227cdd04f32c559b1e6cc172b
Date: Mon, 05 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791198633
