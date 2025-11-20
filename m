Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC461D555
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763604114; cv=none; b=EQpwGBDdAsH9IuR+V6P97RgVjOHafCaB+K4XuYOEhyNEomtMGrJhPbrk6TGurPTB4Bq7DM7YxSepk9MRSlmyYZukLD5dEp15nCKVIwFnYTrWQ7wvfLPYjpZhCjW6+QH70KAq+fXjbzYOhwJYZkiDypl83geFbUyDo5X5+9bHRqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763604114; c=relaxed/simple;
	bh=JNHYM6GyKr9f3YfHg5ulWzUGa2l/UgSZwt1jorOimG0=;
	h=To:Subject:From:Message-Id:Date; b=cTsNhpLBCciC4Luxtrvcq6T3QaNgqqfM4d+Jv2ItGb6QTelQG6mDqF8ZHZT8e/gt+f3oudxFEOskQEVmyMANS1KPuw1qP4QnmiqQFQslDrABguCx28j7gFBaUPX5Y6t0AZ5SRKd0qaYBFGImRZIsA+zc6aIYVtn2QNAvj60bHO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLtH2dQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLtH2dQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8494C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763604113;
	bh=JNHYM6GyKr9f3YfHg5ulWzUGa2l/UgSZwt1jorOimG0=;
	h=To:Subject:From:Date:From;
	b=TLtH2dQUeQqGnfK+Avn+u8iVInSeS5gjsL+0nOHkxjlw1pBcvFaIT0WeatkwDFQge
	 SWlgkZ2bALD+jamSadE5c79QI5Rc7YvvfeyniaRl9Qk8vz01JC+JVMwpW99veJNhpN
	 PBQM5bHdQ86l+hxquhF7gpULmsv+wiv+O+3iK9RJN9dP1NzX/d+NXm2L2yRQExAb+Q
	 feiu5GSnAq1MemkPd4EexQXWWZSSxkMqI8Yt73u7EFTmljM6H1LfzPJr7Y8EgJZhFC
	 W/JLN9/qzEabYRs2H1veqWOKPa8M/3nZ9lkifPIAP1C73JCctOYRx/RODvf9uWX7Cc
	 5e9YsXRAs9ylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BACF58D1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360411359.25794.6500108697426362989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b31e6f2ced1363217540e94cbef296e13bffdcc8d1147783085b4a72e396ac1
Date: Thu, 20 Nov 2025 02:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763604113
