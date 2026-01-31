Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231A31F0994
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769863434; cv=none; b=clVgBNsoHR+jdufx+mtcaz+UEbShmhCADF3LVyMORSDZjXtHcwnjAApw/UW9w5SARUmrPC8JC1IRqUQP8Hmx79MPMqI6i9ftZsBejXZ3/tQQb8iVdDlwpKmFVJkoVKut7NfJuFIuAvVyoExAcAmM1GiyZxq/P+cpzQ0EfvLlD5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769863434; c=relaxed/simple;
	bh=jA6gV+vaXkx6ghNOZDOFP70VNmY5VenhwhE7J+ROk1A=;
	h=To:Subject:From:Message-Id:Date; b=VS+LcsQa4Ekvn6RtwuCdv3xqtNyvd4LbArwszA5lzyNrrpgWWcrGBpgO9ihhksBR+3r+/Igtmrafv/x6200ltGub/uZN2AK4Ol403VEhN9jl5pnH3BLHD/MPPgl1VoRP7mzWC9raCxp37KDVY3TDrZX0ZrCxUfxxvHtWJU9hcio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEmklhnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEmklhnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5000C19421
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769863433;
	bh=jA6gV+vaXkx6ghNOZDOFP70VNmY5VenhwhE7J+ROk1A=;
	h=To:Subject:From:Date:From;
	b=DEmklhnEFzmx4mccydM8V7XFkyyDSZo5S6KCvd7Bq5iacWGnXz+CHLzlkA+Kg8Ymc
	 YKc5AKca7c7tVM2a6eiyqwiYO4OwPKJCYYKXXuN6LGTqhkf9RgrjFqz2CK6PF+fBho
	 wQzyEoH3uALH+Z3+/qDW8qaOHdJzoXTMIA1Q7+leJkQyzjpuJ3f6wg9EN31llvkSnB
	 jNZaPg9jEgwZ//8qNUsTL2NlEJsHJcxJl+nzihRPeXI7d8aWCxA5WvnKUWV0rEItxv
	 j/HqOszJpEmeVe0zZ2nfYYAQMKzzp9JQxu2OyPjKKeEAPhT5QrhSnN3c1iiK0oS/lX
	 ETgFAToacx2Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3DD79769
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986343357.23444.15414853309220203537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2204172df0a17ecbbf9122b821d005b198a9e8286a17ceea5ea34939e7116b7
Date: Sat, 31 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769863433
