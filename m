Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D74155C82
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745809794; cv=none; b=AZejoovWyenqpKsQxBiZMmT5YZ4j+1QFEXYrx7o9ngEEDNUmzhBl4j6fIW0ZszFa5jx6/jbgUF46HlZjvbb3XmJ2GX9AnH+nwYZPJhqOTzfapPMWugnBjxj3VDUh0N6G8/f6IKuvJO10vsJlIoieO1byy7XDQGdKYfwCwl2apww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745809794; c=relaxed/simple;
	bh=oSVzKf68S17Ig5qMMwbQQzkHAPIwvZcgfvuy8p3ZLUk=;
	h=To:Subject:From:Message-Id:Date; b=MOjo/1Rajmt+O9jDBosSfD8Pj+rjrOPDJ/bgypaVNg7RnIrCxrYjwJKBielNe10PqAgcYey7Xi7GxBLSKoUKWgP8G7PWT5LGV+NmpK07aMod3z7NHW/6VDoJakFOhPtGIyuduk/9HevhGQN9OA9M96J01dstdaRG19O+2f10QnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Db7Q6oIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Db7Q6oIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7222C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745809793;
	bh=oSVzKf68S17Ig5qMMwbQQzkHAPIwvZcgfvuy8p3ZLUk=;
	h=To:Subject:From:Date:From;
	b=Db7Q6oIR8i7hJbtyW7Yq+S1lLrGhsYpi6jFwz/8s1/gFkdOG1Em+1g0OKQoLhz4Sv
	 cmoyL+fepZR8LQhih9+dPsemrtVaXE5ppol2o/zfa+KU6u0rk4Pw+qJBGyDUQq0O6C
	 6NsFJhgaibyDQR4d8Ak0jRKtquIvwLlzdc1jQPmPj4K+khh5yHIb6Q2/yGgdjlp8Zi
	 Ax7YplKMxBr9GdCdLTtLVwHP4lh9XZHxglSVgaLafIhDhfRrFVomSRlHVs0r2SRN64
	 Wh6YP1xfnJU7MXw9npl6ZNgdgQL1u7Wlj4GPLz1hqb5pa5SykXBLFGuuZQKVA7WxQ5
	 puFGy+OLO7UeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D8C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580979357.19832.9109418165559947829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853eb5cfbdaa5734e3cf8a9b3d344f56a64ab2ba4e6a592f8b4eb4a17bfeb849
Date: Mon, 28 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745809793
