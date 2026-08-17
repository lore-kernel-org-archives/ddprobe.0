Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A6142CAFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786972235; cv=none; b=uxKUM+smiiXdhabCXlnO+J6lXXGQmmC0alNWV2+5MCVpsGZTNIfojzTQk2z7cl0QtdXpxCE0CsfqWLw7CA8JDsOyqIue35SHwoXYbY9vWKjbQOmVTS5r1QZTYZXb2oQRY/UllEmBy89lys8UCj888LNa60Zu2bpTrSur9obW0FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786972235; c=relaxed/simple;
	bh=ctMpOrUu5ycxFI5Is3yZI1QDg7suAPW+9AzqmV6g1zQ=;
	h=To:Subject:From:Message-Id:Date; b=tfNzfM8CXw6GhBUPVVJ0UNBEVWBOF54llWtJh7T7ADrJJp+1w4GPwgJyWbt1CBNn9EpjEi8QjK0KxxMPB6HLsUnjQfJbgvvXqzPu9PZF2pw3pvqL0xaDcXDT/Dbv9IBe5PoMNmVcXWV+E8PwgbznvisdEFtMr/ldno6qEAwH1BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw9dnIVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw9dnIVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD727C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786972233;
	bh=ctMpOrUu5ycxFI5Is3yZI1QDg7suAPW+9AzqmV6g1zQ=;
	h=To:Subject:From:Date:From;
	b=Jw9dnIVdyF9gZyVxjywcO8U8k95ZRSocgWtZ8tf+WHjrX/q/MUaOhkZHA+xZNDJLI
	 xURljlhYnYZeHrGT0lH8xQiZ0GG5T/zIRTt1dcRbySKLTdGGQ6Iu9Tu8g8oNG3G1I4
	 AqLyTRT9vOPw+ASGz/RHQ8ajQ3OxtnL9uVQE5wWaRsyg4gjn4rB3c13lkL6C95PmOM
	 eiYKeoUoJ2dL1bREduEz0duoqc6zV5XlFnrTjQ5Ir4TaRl/y6gXyhg1oPyAjDEJNid
	 QMFjv9eOpEUa9C8gcl1UkNqxCsOWUOFZTLmLu4SA04jZ5uA2OPpKH4kSKvzCB/4YcM
	 UIYldUpPhQnHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E9C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697223368.31210.13729700821611663030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d34f55c2f909416675b41c7a5cd2a140c670b53a2f0ad5e813542b7843be78d
Date: Mon, 17 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786972233
