Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBFB4156C2
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784050714; cv=none; b=LJEpSpl3YJKBsQjmEv2XKyxhUMlnpDyXZSkFNliz2CJ56apAvp2voK5l+OKr9MU+gRExJm2jbSBxGloYIrlQfvN1MvZ5+Fd+PF8eqWaC+lP32G8TCFXeGS3Z63XAmRhitOzpOuOIX1nu9V/d+GpRQPLOF+T6XcrafYBIS6BxtEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784050714; c=relaxed/simple;
	bh=rkjnH+vYrlsWeVHQnI3qD+NKSju3xWgPETha+G32m+M=;
	h=To:Subject:From:Message-Id:Date; b=GD6zAVdYMa7OWjp4Cj3vpqVBbbd3TkwwADBrGp8L5hE9QPtINolsEBdJHMXWrsJVzmwXMFbOVC7ge3PyfVlrd6NjlLtYkWkXzzBIxnlWoYNMJ2YVDyrnFu+CNqHvoL1pmM6rJQr1jkvTYxbRVrr2/xVgGZJW0+P7lfLFepnf9U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugqvY4ES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugqvY4ES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4FFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784050713;
	bh=rkjnH+vYrlsWeVHQnI3qD+NKSju3xWgPETha+G32m+M=;
	h=To:Subject:From:Date:From;
	b=ugqvY4ESP8Y817pgJg3yvPE6x9XM6hmYU3l9uFKUhyVcl6EiHjsbVw69yC9HfgKq+
	 lQoa+aO3aOowg4ztEhiAk+0nkoniZ2G7nu24vs9dayO1lNsRaA9Nq0vvDhHVCelCxm
	 UF0SVwAZfep03QFpIRWnmGyh1ecbO5430guZIAi42mum6sYgffpg3fnh5cG69GIu9k
	 7WSfpuXtMlC8JBmSpyCs49X0n7kRqcbXKDcyJhH7CqCZJqZU0Y86H7y7RlRskzX4in
	 OOzFd4nGb9cWw5NRZtXdMMAIqF3KXYQaESGPYAgSXvDv+veOI+c+6aRtfhCyUlHAfH
	 Iq5OIYa44x0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE540C4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405071370.28489.1455985292720723650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b5783edc6d13f5c2c214ab26079c76b25b4984ad97b2dd10aec22c7b666404
Date: Tue, 14 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784050713
