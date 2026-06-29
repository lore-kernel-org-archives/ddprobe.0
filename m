Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202FE3BB4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782736714; cv=none; b=cp1rWUZT/D1FK3uuNotEZyDIwVIP+zmFeUrS11PPoLGVsVpfIQrSlZWv8ua7qa8hliLJ7pYVJgV0Y2CU5N6B8cfFhU5Y04v7ORzbvm11vGyg1tVQsUrbuuyN1g4IZsSYOcKJxkQQSQW1MTcSMw+z+ZFR3bXOw8ijCwcogWWUIDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782736714; c=relaxed/simple;
	bh=QY86paY+fcrrvU6TaHPmavERg7sXYli6bSsbVFx/e34=;
	h=To:Subject:From:Message-Id:Date; b=LDmdlJfqaaN1fzFZVg5sD+fPdHngvYIoTxzOwlN4LFPBGbYtfEK5W3BXnONYGdz6g5MQ7+MC+tbgmMZG8v0sbWVuTY+Wiav1WGRqsOzBfo7VcRVqPRnw9S8FVm2m2eMzuN+4TbuP9cV3MjH8k3E/B5FwzzSy4IZio46Z1w08ra8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFJV72oY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFJV72oY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A9BC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782736713;
	bh=QY86paY+fcrrvU6TaHPmavERg7sXYli6bSsbVFx/e34=;
	h=To:Subject:From:Date:From;
	b=ZFJV72oYP3zYMmt4Fgnz3qtrjQOVYF0ETUFHHbyYdSmd4YAl4Q6PbhRTziyd9N3Ut
	 3APOf1+873QXou6Cp4+jV79ZZ054Gt+K5TvMWna/OCzs5IH/wdyIGPg5QHq+prvFKm
	 97Q4tDrKbrlN3ZJ52UgM5jGg+8CQtGB3voUFWY64FGw2cd+Jj86FPR8rKZ2tqLT/JV
	 3S2AI3ixwYEP8/yjOfk5MJ0L6jB9WViKa63EagWFiUBBY0qN2DbYn4V0U5gAxAV3fC
	 VlnDNgw3YXqxaNJ+1rUKBczHfX+ra+Zynn7BNBQ+sqoI5/tW3+3/UKRmOxZcKj2i1p
	 dsTg2fC0OL/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA1C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273671369.29086.10414692030633610262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679c6dacb9f54a46c0c5c7f3b78a9f9d9f1825397bfb98dec17688c5e34c9a8d
Date: Mon, 29 Jun 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782736713
