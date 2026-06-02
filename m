Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354B43876B5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780392274; cv=none; b=UD6xueOixgFfkWYpcoDtzpQ4qkvlcGDcjw769wSUDokRaOSg3rAUOEMWoQBc2g8KPB9/ow93LD9ljv2LGvvLwADVAgZhmou2nwkudJ3jRg0qwMTopXCRZpdkGrlF/Zxl9rKLMAx8t2QshcFJzFBFm0RhPNA/JbbOtOhit4mrT88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780392274; c=relaxed/simple;
	bh=8ldziW047mGV9iCAhcO1bEdO9OWZjR1DeJzeg6MrcfE=;
	h=To:Subject:From:Message-Id:Date; b=Uy19XIKkb5zz5BcAP/0S6kCu6phgE/LrVMJ+8CFK48KLWGU2PmmO7PuWL3Ao778YGtCWrrKFNPwDTeVgKnr05NYNhTsvfqyqsUZ77+CyDYEJ/UW501y5boIAHcnZ0KdcARB1CxI2ibd3ZCnMLAF2lGUk/SuVxVkC+3whQTh8Djg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afWE9O6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afWE9O6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7689C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780392273;
	bh=8ldziW047mGV9iCAhcO1bEdO9OWZjR1DeJzeg6MrcfE=;
	h=To:Subject:From:Date:From;
	b=afWE9O6fyO2TSMj4YzZSOVe8QYb5JYv/BNosESkkDsQwYOL5i7iDi+DKRwb+1FVlQ
	 hJg1jbptqcXw3OAF3cKjvEFpdZD04cUL+iWNWYfv26XhJDkTc3HwIQVZfIAhpeJtHq
	 FMr3qQkrzhikYDkK0L6lefzCJa1ihEYiFPA4alYjEThiqWYfw5mmL21zpChQnAMLpN
	 NEg1JGAqszHZqzjsWpSwA/6D+/c1Dd9e7zBh0o0xuSQGmy1SN6ktbSsZibh4J9N70k
	 q4RSvlYeCud1TLKpIM7FjFuQSH3XxtDCQFoX8YD/4jHnyZcrgL7CjZPGPHRy7GeNFL
	 Kp2MrmqqFCWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC59ECD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039227369.9825.14292800828367537797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af8a1491fbe388d54efe70137e0be76d48dcae935ba38360837b19f5a308cc8
Date: Tue, 02 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780392273
