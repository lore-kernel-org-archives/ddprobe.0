Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF6378F4F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738634154; cv=none; b=itrXfhkKAbdlAOioUO8rN0bbM8EyOryOTQFPoNG1IStTysuZLosgwWviyDQdBBwhSvEHQ4FrNNzz7Ucnd+8YM43lEaX7dm8IRk2ODY0ce3BrvPuiHVYi98fdTyI6E78T/+MZrWaMdg++PX+wNVMYxmwKyWT35x/vkd8LdIG2Sac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738634154; c=relaxed/simple;
	bh=iOnDIIB7xzl5AWB4IRep5BLzl5LMU4BoCUmAqBl6Pi0=;
	h=To:Subject:From:Message-Id:Date; b=K6Kq/otbdsiL3UMVtC6P1/3kCUFBb5HadJX4wpitqHklYMCYziq/F8h2OzDsFcWn2clc3bai7Tlc1SAVsA5rAABqhu7EoulbfVV2ijKn2PZD5eNODGUqlxhf743aXuD33cbY6RAU1rKHZXCSLFQhtswfPKXRe5nKbmWAtfvaBRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aey11ruw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aey11ruw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB6FC4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738634153;
	bh=iOnDIIB7xzl5AWB4IRep5BLzl5LMU4BoCUmAqBl6Pi0=;
	h=To:Subject:From:Date:From;
	b=aey11ruw1vlB+ZYfpFrk1+/GqhDYnoNfsnsIg5PJYB98vUwHLpC3p2Jw8JJXwoE1z
	 6hejfNsGa6jhWsMZxSJA6oU6IkKq9A127qY6sbvY4gw5H0AuGZLaBJcWfJO2TIKO59
	 yKxvyyDEh7k6VdZrzKez5Fnk0asuseq6BcoJx9yt6v2BtyN2FuAKqwExUUsUxw6XBU
	 EdiCVk2Pl54eFjWyvOwiXpdqTlNuTrklgOg438l8vdiVDZCRUg9eGvI1kWEFDs8hqF
	 OYKmvHqrcblYaBwuB5s3Msnxqo+re6UNe4lKr+qLRAY/7xv1CgBnXqE4vagV47uxlB
	 XM+Ix1h0x9sug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4B0C02192
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173863415363.14140.15326399913925355977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c997d5ba3b20152fd8d9bf68280a3efa0ed9ba23e97e7048a774a26e38c011e0
Date: Tue, 04 Feb 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738634153
