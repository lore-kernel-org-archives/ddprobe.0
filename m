Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355442E11B3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749834594; cv=none; b=MPIQ5reP1FlIfF/JWwUeOTWNBnKf+QOnozFfL+P9dpGGo7+0uauKbAfu7lpwN227cnQgZb690xaX6jN9DJNMkgBramgtX0fXBhr1SwbL3F7sW90FLSG/o5wWwFG+duqisNka6/i/hXO5uSBW2Fu4PRcDrQ3jsFw0q38528FS+30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749834594; c=relaxed/simple;
	bh=o4sbSPDLP5k4P9euLE5i3d3T/4v+IvXmZ0JWxdx63Hk=;
	h=To:Subject:From:Message-Id:Date; b=FJdTPftblNsn6Au5Pwy9uuW/nMu6w7d+TJZ1AP6zvUQ+ZHbaoXQvYHOOZcWxEoitoK9LlZjc3lvWhiLHE2r1S4zMkvF85TeoDF+DXJ0G3pIgPqiaYwESfcoqBY7oYcwFMUlXBeWi8JY5B175TV9N93PFFufNC9N7HAnF0UqQKl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxYJpUBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxYJpUBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6563C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749834593;
	bh=o4sbSPDLP5k4P9euLE5i3d3T/4v+IvXmZ0JWxdx63Hk=;
	h=To:Subject:From:Date:From;
	b=HxYJpUBeTmNa4Zqf4I1D8tVztgtEQwy46hJa8a5fp1OoJ5980jSRyxwOH/F7JRnzH
	 YsZbhu5O0SnYvX72h9bfNFZRfVBqB4yd1c0qavN61hx912MRqLYsyK92FjZPUvSE9G
	 EndHgY62ygpCXhwcvtxuMqP1mjRd5zSZHibQvAIllXybK4dab/BQe+iKYsGHVOfRhJ
	 C5apHTA1tRUYNwA/Ey40+payW+bbmJ6uNcMZ+seCvwcB0+AdcSn9wdFc25Pyu7eabb
	 QP98w4IRU7IJeZ3WI/4nFd17rre/aZ0plzDKqKVcxczY9aDrAwNrzND6eqi8e0bhg7
	 2ZNHb2xpapaug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91448C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983459358.22036.17850950627194267342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8842b9391763a600ef3caa0f604aa66bca1dda180bf1eb289cac028f880d61c0
Date: Fri, 13 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749834593
