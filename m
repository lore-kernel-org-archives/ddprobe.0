Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3288C1392
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741403934; cv=none; b=Cp+ITrm6McBPai/+SThyhkKHoK0eVDCWmcCsXL/1LGC0eNOecvqS6CwvOKVIWSAdnxzdkCQVlgpxvf0+i/MDIu0OPxtXcEEWwT6IbCbqsHtEjNglr6VYSDEVPshqeXha/tJA0TDc8XDsFefJjPaKGOGy9AB8EsorA971jAHaV/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741403934; c=relaxed/simple;
	bh=0DThtPUBIK3GYWQOJdbkquU336B0ulAkXXamhgbVgrA=;
	h=To:Subject:From:Message-Id:Date; b=V9fU2wGIfvDfJTjlKVHeXmmmZz4XIoPquB5K8W84VXyxEEgHkQLEdopYl9ONtZ66E7Q8DR9iwVscZokrTBIvAPiIIJtOv/OHkX6s4OxzDh63rKhYGCxx9WG8uv0g1aj1Ft31bnKtszzaAyc12JlsvtKbNEYDnAGZE3SBLyy4enA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7R2eJ7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7R2eJ7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DF9C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741403933;
	bh=0DThtPUBIK3GYWQOJdbkquU336B0ulAkXXamhgbVgrA=;
	h=To:Subject:From:Date:From;
	b=J7R2eJ7tcJollz+GSwnGDzqLFLnZzMhsB/6AxlQIKYUoJ7Azw1ASZsV7v3tOsJV+m
	 8CUb0ucrghQFZKc9tvTHA7UrsJho+3KOUhMDtCFnFIOdebuhTBDr1obG5WxDuDuSmZ
	 LoTxbZMZMq5qPQUNWECTMu5oP6FbDuUco8ffKGn7DoU30HrULfeLzQ458MrHI+EihI
	 MXfDsiKZ/BfYmNy0OX6jkd6zAERAindq0AqPR3liOsx0SXt9Ug5nxIJpq+v9Oyo1S2
	 4Tu1zI2TB6BKcZtiW1deFFbSw+GDT2SqxmXBdMOmvTXMUEn/vfYkZyfDLzYBdkSHL0
	 unPxEaPui2oDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E4EC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174140393358.9786.6670643619415239756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7afcc0c0ad9cbcb3e48a6b13b0f5bd525ad9aaf41e7315814a869bc7aed969
Date: Sat, 08 Mar 2025 03:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741403933
