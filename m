Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4B53BE627
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790103034; cv=none; b=bcxZXuSjZs1sIP7nGDUuFLmdaJNI6EtwF6dF4kDsmw3fLEZfh6UH1QgLY35Rq2mFMvcFTKJK1GMP0ZHUZpjvymdsZElNhMa+J1O4oem8z9w0qbNfze0liX/UvhbPzWNr40YmTVg/myBEwlST3p/p9AvAhLxLuFYkpwuJv0a35A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790103034; c=relaxed/simple;
	bh=3EKJrULjXJH796MoxmLqMI3AxxfUbdU0RjOTmpleusc=;
	h=To:Subject:From:Message-Id:Date; b=D+iwG8BfkedXOq6tZTlF81lxxc0qFoDH00+t8verd73dwixxXYZ1AJy3yeYJdZ+/DMSTfgJlksMkTRdp2UM9UE+XNma4JR6HyWcuICytvEfKw1cv/kAImtfWW5Lr7vHHD3Jr/wsbLf29Ep6YpWa3b/OyRvphw1xSjgBzVSoKkKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGqyW/qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGqyW/qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63F3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790103033;
	bh=3EKJrULjXJH796MoxmLqMI3AxxfUbdU0RjOTmpleusc=;
	h=To:Subject:From:Date:From;
	b=GGqyW/qkFkmhcj7J+URR8jrqV/ImLq0ARbVXOfsDuT1Jab6Gvf55ebKEahSv0RKkr
	 Uz2vZsNEgJLxT4JwKoLy6HHmWAKemLpY91BDyKy0N8REjhNB6rImjxJtFH3yWH7dbd
	 /oZqN7krvFGCxsiU0EEtn57zo49yTTEf6w4TRLc9UY8NzwIAjVqjZhOG2x2gDbIlbT
	 68JF4JDNhVsYCyHIU6kY1rG5HogURW70bntd1kYzUqcKq9wUhvXtkkNJvc8J6cjkZQ
	 5UakWHRpJ93msrFXHhrUvTOc9bI3hafmQCksu3wsBKKVN2+YNJ21j8bacTk0TWkqFk
	 szWSU/WUlwAlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB955C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010303375.12202.7287836057697656951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146468675c209896941bda3dae93a1f7ee551df943822279e9abeab0391686bb
Date: Tue, 22 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790103033
