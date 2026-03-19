Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A8734E743
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773905094; cv=none; b=CagpJd6QCFjVymqjdZzrg2OpejwkC223CmJEh4dynZsn1H49jcvePhIaYizZoQb0nyV8tjgzM0L/GVpBsL2upZgMhB3dP6sihrhQjm2+y3wCbb9aypf90QBQQ3edjslFrcrF5r33MjoARLOLBZIrXd6OBa3zM3VyYRMM8QB90uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773905094; c=relaxed/simple;
	bh=3r5obhitlTTim/4gZ15vZPTBSsTfa3ug2IfadOBFgqk=;
	h=To:Subject:From:Message-Id:Date; b=ja5voFZZkgVXjGKw5Gq1PyTwhcMI2BFBBW0qUomiw4zjtpubOzl6vA/+DCK5DPbYds7cN0AJjrXOGQtppcPAO9S1sPmdzMhWLxTZRjZIfkH0AsA8DCHc0Jwf5uZZyWtldSss4zcFkAjnt0lEr99Pz9XolDI5yhltIBwp0+KdpjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVXoo6JH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVXoo6JH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00D1C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773905093;
	bh=3r5obhitlTTim/4gZ15vZPTBSsTfa3ug2IfadOBFgqk=;
	h=To:Subject:From:Date:From;
	b=TVXoo6JHvdccWsDd6EqE0TmVmVUODRzInlECj3oiTvOUIq8mnVsL9SihBFu8E38+M
	 MuoCHQhGE6tlUjxd6EEY0aX+X+gEX0tR2SmyEKSMhL/9VIGLJ1V12itQHTwEN113m7
	 UMsw98iH5RfOKOUPCa+3FZ2KZh6lyTkl4QFRpEI79xifmI9UYGRX54WTYTtaOFeEvP
	 vOr6dqwTEwY33SEgbYhbIK1godswDmqN01QEk01/ImYvMAqwyCBiBQ6wv1yaqyVbES
	 ir1W1ALdyrdGcBdUxZNO+Y8rLt2G5JWNfpc1htKzVQ/NR23OJ3EFxzXKrZeQ2LFwV5
	 5AxN8NTfZoIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020A107526C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390509358.6375.10705850709933489332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f851023dce41851172ad6762d35b18896ba01f09b6b390c38fabb74c3c6dd511
Date: Thu, 19 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773905093
