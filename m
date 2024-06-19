Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531E915ADA4
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718839163; cv=none; b=ZX9NKkNPhGrPpqKFYytPdX3PgH9dyNCoSEfHR4bzmb55t2YPvx0kKQ6NtdqRCdHVGTm3CQJKf4kVcU8yx/kWfGQCo7H2YizSyw1deaCL3G6+z9oun+AQj0mJCkniUK5TMD3T0usjkgrV1Ia+zVJwvLgQAMxaEJNAaF3o42mJGvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718839163; c=relaxed/simple;
	bh=t0ReAdlk0rx7ll4FJ+8votlNQNK86Iy5Nm/F2rCJivM=;
	h=To:Subject:From:Message-Id:Date; b=S5OGbgkwIFtWrX0RUbjEpaJk+AZmDIRNqt8sj357d5QkLIIj8znP501CdfJyhljjMT1WGZLlq5dWqeGHycxZJjEsWXMyCZSb65DkkKNMKgZQYbFqyLMyctUFyWci4/g1NHwHd3ypFRqrNzdasdXWYdLGjlLuuKV6yq56LrlhVXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTr4DrON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTr4DrON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9C4C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718839162;
	bh=t0ReAdlk0rx7ll4FJ+8votlNQNK86Iy5Nm/F2rCJivM=;
	h=To:Subject:From:Date:From;
	b=QTr4DrONJv9TRUmHHWCTVkiUgOe/dc19Kqs27JWlZAY2dhL65o+UIJYwvTXGfakLK
	 LgCOWozMigES0am0RSTYXrZwAGcDydTvDH/OES03SKNZcW8cKQb1w2BVExwgnpnib2
	 Ys0LJXLwrt1a+ZX7cOHZClNJGtBjNdNaXhDK5S35naDwIK3oHAklaMeNvtL6aDTC6x
	 OfsserNnAFUMNg3Qi7I7bk9TsuYafQnH7kzBRNh+Opmh2+UEmL+aH6HPt6jSUlM3SS
	 qMSNzbQa4twb1K1TyOb2ty7k6ptYFv22NZbZAMAOhqZXdfy3soI3I1d/pUL0cL9HSX
	 TbQO6BcCuGJSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADFFC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883916282.2511.10604426108086081207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9cb225ae35f5995eb027d089ef0d5c7d15c8d28d33cd3650c413ce0aa4675e
Date: Wed, 19 Jun 2024 23:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718839162
