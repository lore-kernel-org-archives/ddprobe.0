Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E88621257B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766273034; cv=none; b=V4nrYCtY1hr5JMIGbsU/0uu/fv8mBSnQc8rFeZclmnZPyosNPBnTgN3YdciWsg4mfKgY24V21o/NWIq8J8DoYwclgBYKr01V0BWN0kPDwGC+ketar6rPaEa+8v8iaF0D7g/YyggmPX6B+L3uJcH348IJYFl4ddT/Yz3hNdMUOfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766273034; c=relaxed/simple;
	bh=vQOz8vhH0jQHe469r9cf9yNxqvp5eKstdhgVWOtqZQ8=;
	h=To:Subject:From:Message-Id:Date; b=fcOVx/k2nz+jGCcYMjLJUDgJ6Ur/aXjBL910q9reeN+XuyF9tl4w/42cDd1kxJfyQcRIMC9xMDtaj9JGcbseOcyjoONt4aQYaDt0CnqZr5RU5YvzPQySE4X2QiW5AhxlLDiz/50xKwMZmMwT7cFC5fTqOO6udCEHRKYsbdvaI0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAqYKXi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAqYKXi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD72C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766273033;
	bh=vQOz8vhH0jQHe469r9cf9yNxqvp5eKstdhgVWOtqZQ8=;
	h=To:Subject:From:Date:From;
	b=CAqYKXi35B9hKqnazs5kn22eIQ7wFKJNlBnHFz7UllBFBd+gP+F/Fqn6xx7hqHlUl
	 FKeoylDBq1heGNPI0HkjXlW2IW7rBWKSVzrvrKOxzNoMU61qz7GXqgcVGs4x5ctTI6
	 HII5cK3BdfnQyLGFJt99DDJ5rlTJ6PRax7ryne2j5iYUPrgo2/IZdr5pvtvxc2xQEN
	 wB782HOjR/bQWCGlGvsl8sCjHn2Ipd9F3i2coI5l4fU/D+AcfBtR4ylEwPWmHVrUQV
	 MhS5KVAX2HLZ6kO0f/NFg2A+XXNdY+4E31k7DVvnBR9ssQFH74XzfL4TE903KACYCZ
	 H/GpUjhzbRrjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90296E6748A
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627303358.32600.16328911449537193503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df92b135c42b0c802a699d5f42a36bdc7b60c2de36799063318d2077283355b
Date: Sat, 20 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766273033
