Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDD5F507
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752280196; cv=none; b=rvUtJcUSqskIoxdWA+FYKDQ3PrZ6zDpphWVREXLQamhEHPg+TwVhxhAhod33BMuiGrmJYPl0ixi0sSjyhowxQqLfosdURJpktHMO5Ix2IY3j4GDzNm9cEjDQSEmRq7rYFkU4JrN5CzFhOdN6bfW+jfWjkwKSnQCn0GSvLtRMMzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752280196; c=relaxed/simple;
	bh=rTqjNdz4BbnbFSz42qufOY5pQxv6YOtKq/9p4gRPJeQ=;
	h=To:Subject:From:Message-Id:Date; b=Z4BpqpCKycLz/I9+aDYCIvJdyyRCXWwv9Dny4dU2YmHui9Z0b4C73JiF9DvZKRhZOmy24QohDwi3muDE7i50SNdO3bl9sPjhV1KSotNrZG8OsUqmwpuUI36QhRJXrVUQthp/8QG1CHQfNgpB2150OLXo2rBjKYj5yhEbZ5LGSiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5zJgu4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5zJgu4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C46DC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752280193;
	bh=rTqjNdz4BbnbFSz42qufOY5pQxv6YOtKq/9p4gRPJeQ=;
	h=To:Subject:From:Date:From;
	b=R5zJgu4AuVIeJOW6rGrHSvGulJ95/IZ4QrozQW7utvb8bAfm0pGeyUCKfd3rpsR3D
	 Grhyre1Wq/D6btzCcObk+yLMAeJO/vQPxdWxx98MJbw08jkfr5w+jiCdbx+3F2TQU8
	 y3EfzY9NJobUz4NoTR7+Tnur2ZkGGCOusYqKIRWqW9wdN46VqkGa8fmEES/RWR3GKY
	 YyyuW7YdkNqA6piYpIDjiu7JPs54gt82IH7eBB5U1kO8HH/7/rzrNNG7lLO1CrXcyC
	 M01Q6+7bab0XRUlNCJaMUx5f4yFUBp5t/V5oALL11BspgP2bRE+UZVXhtmP6c3zvCQ
	 YMdxpYxOfrR5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCBC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228019357.6974.1591420011435387674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b161d310803270e35548de6a969fec42b0fef25990b331b52eb9b3ac4fa8a134
Date: Sat, 12 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752280193
