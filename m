Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6543E1F37B8
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738598755; cv=none; b=pWCH8yDoG4bmuxmwBWerdsexslmO4SPILkUI8Th/lz/ku8ejB4vamxuVdr9l6xu/vw3IJRUjjhk5TnUlxwW2d+VfEk6GH4QKAlVRNxIHGN+gc/7iQ3M4HGuKbj9voa8S63Kzrqhn8n9YZsqSKw4VYO5QYOLeifHH5ka5+BQkpcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738598755; c=relaxed/simple;
	bh=k5nBtWOXyTe2ghiuXn7fg1Lyk/28PjRCdTrzeN2M2sc=;
	h=To:Subject:From:Message-Id:Date; b=WbFz0O69cnugwoPsG2fZOf5XHTJLcj9V1lem9BV+RbqBXQT668vZoggYK0J08hFQsJ7+OqKis+B0WRiArn5BjD9IytMb1vSMT4pnp0ye5QMlSpLcWJDm5EyWiF/CxE8g0jJQtTIuUdQt1IRMFt5b1moxlVY0kGdwXGC0PPvDfrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV62wPwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV62wPwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4C5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738598753;
	bh=k5nBtWOXyTe2ghiuXn7fg1Lyk/28PjRCdTrzeN2M2sc=;
	h=To:Subject:From:Date:From;
	b=KV62wPwh9ey44ZkI2vULQrbyhbaFHR4XGr9bqlYsBfMJrg4Y0kdyJW/3/oqVu+OJE
	 2aYmmtCESh/Zz0b1I2F/nPoruUeW+dv/QJOEa8OHKuYlHS/xmY1FISrg1tQqhwMTQ/
	 Al/EJlun6GJIBnZGTaE2iTG05l0ecNmWahze39snUmfdIrFKT+UO5zKSiNypk8ZSUP
	 fZwGdGNeE0C2Uf72noBpQcqS7zoeaWe+NFK/GYqrCsvJYFvIYiYRrkrA5q3j0Tviz8
	 /limCXxoLTpNHHX1Otf3lvzXdtD1nn7IneT4/v6Z7LHRgvZdAhkafmQfjF9s9hoke9
	 G6weORbqasLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F5EC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173859875364.6796.2243398696065781432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c2813a55a225519d069a2f1721fffae77a6b37b6dacd6592e136a2ba128832
Date: Mon, 03 Feb 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738598753
