Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8B527876E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752581394; cv=none; b=g4R0Q8b/EUGANXdK9iLMcKjRVmscSpbh8mysX6PlbLeKGRT1/1tQFmWIh70x0ixZ8yQhjqmbUcLARQzX1QMDvnlbTjjJa5gJXp9XXct0WEnB0ZWafoRKt664yIPt9bVefvM5vfgwIw8RxSIZ+YbRKGPC4UyZKF+XVgaEMBclFGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752581394; c=relaxed/simple;
	bh=gVcYiQ+KoblUYRlk4mDneumIYebtB6r5YqbgRuumH8U=;
	h=To:Subject:From:Message-Id:Date; b=FMwbIBHihRO2EDI6RTzwcm9eHvNA3TFeoCi0qErMNgSwPYsTVdEwdPksHxFBQzd4zl1nIyb+ENM+Yb7PKkyeVim7ap5BA7RbAgWL/dsgj4DhzAwUtEGPLEWBlJTEf89Bnt5y7jqsNPhOaV98BDl9OCnmMT7uw51IHgpIBXw5mqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lY+Vu4TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lY+Vu4TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FD1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752581393;
	bh=gVcYiQ+KoblUYRlk4mDneumIYebtB6r5YqbgRuumH8U=;
	h=To:Subject:From:Date:From;
	b=lY+Vu4TQbX072FF5Ns78B02DOCaT71VzdeyDzhS5wKrLbbk1LI/z3P8bFTS8HA/Tm
	 HKCNCpYRv7z5aiQqCE0BdFGOuEwt9htmDD1NhqnhIBg58lH5HVO+o/tRx8lOnwvtFt
	 4N/OTULC3MOGg2BPxkBx8JjThMpKGQkX64lwgio2Vm/3ADktp1BA7QG+RxCBJGcRc7
	 ZriNck7Vm+sO8ngRp9oM/+v8JO4Xxq8J7pIxgbttfNtbAm98dDaeJVb1VZ8pfUVM+C
	 OqCda9iYFURnB06cH525KvLo4wAtMlpwlBPXf2WoHF6UMyYgOzB71lGSJkzFRjGwaU
	 M/hqkSDlT7uGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A8C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258139357.28335.7730386710721750269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d6262fdec60476ecf3200a38d106c877e7029d491721b66afd3d7f1956f60c
Date: Tue, 15 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752581393
