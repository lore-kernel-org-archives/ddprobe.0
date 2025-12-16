Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A8B3A1E7F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765907034; cv=none; b=M9eFthsQgqAZj9EPILKT/AIK2ajYonM3wmql39FjSyyDzWhBSYSI9BP+6JLrCH+w6jBf7tY4Np1TUKmjo4U6OBFjHb1N/aB/dwIksZeoKe17UPDoH1AYVZeL9pddI3+CL+F24ocC3cxokkBz2yVZAzwbkY/9xIDB9ZlUM3pd6/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765907034; c=relaxed/simple;
	bh=8APrf4cLKUqmejPBOuB2rSbXBowhwgcVTIpV6HclSjU=;
	h=To:Subject:From:Message-Id:Date; b=fC8O8Qji4yrUy0hhU4wxYrV+9hoI/grDIB/aagRVHjaMD7wtS2aWbONAKDxu1E3R2/XCCIMMttka6XWP1LZP+c7P4yGOzuCKm2TYrUqpxMBmSlkHBUpBuavVaFESxWuC2xJVTj0IJAYucmH8TuHOPpUfcS9/8gXTI4x8fo87Vmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHloa5LQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHloa5LQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D19C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765907033;
	bh=8APrf4cLKUqmejPBOuB2rSbXBowhwgcVTIpV6HclSjU=;
	h=To:Subject:From:Date:From;
	b=UHloa5LQNaucofCnYjYYOmG1RnHtx1LzqFhJq+MQLXmUA7YsVx3osfb0JAFzg6ptm
	 RQndaMeZppol+mXmLHqVVpLgTOYyRJK8TTb4qRtwAafKaKQPTZrQTzd3jWtM6pAwJx
	 wmwlBg6zIC8LGvG5T5TUHIEO6CZaDGD1uQxJTUuYmlwGuRWsw4sqRQDkyMrerDcwwY
	 iHCzQKiXNvdUQdfKMAfyL+ggjBcRI+/0kj40qgX/rZ2iNqWv/9cT8SOoKdEcCS1wt7
	 v8Roa9Ifd4hu1MV0P6DzqpjcEgLtn0Eo206JVIbTTE9jAq7oFUkipU+Qhs9r8+drr3
	 icT9FWtkcxukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E35D609D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590703358.25762.13678110469507935036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a27b1078766d264173e69103da5e89417de58e8bb01ae29a80d851351456bb1
Date: Tue, 16 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765907033
