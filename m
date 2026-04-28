Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1951431F99C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777350454; cv=none; b=LOt6VTSk3esM8LG9p68xNPvED8aADSL2qHviNI9Mh2hwnLS0E92ToWk2rH4Na/XlHfoM4Ym5ZA1W2ikvYs0dDYIQItJ2hC8AZfvMt8k73hA+74Qv24F/hDjhlF2cN0yNISMDDZptAI6zCxsK90YNGE8Yh80P9PtFZD2adPBhkxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777350454; c=relaxed/simple;
	bh=hJ9eqHhz4P2bQ0Qt/UxNpMagpIVkROMAGVCfCI5Ip2Y=;
	h=To:Subject:From:Message-Id:Date; b=pjXHjByqEhvEF0b92U7RFyUCn01bIufQlkhfAL/OgwJP9mdRTX7TrgO0/w/dC/J/2s9ZsmoR0hoAJSmvLrapd6HJKk4cPahaEgMep+rXxX6uuqX0FuIy9bVwJthZFlzc8h3dBUhqYePRtHJVb8XGh/XTE8BRluEB7c48JHl+WAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXbYboP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXbYboP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B484CC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777350453;
	bh=hJ9eqHhz4P2bQ0Qt/UxNpMagpIVkROMAGVCfCI5Ip2Y=;
	h=To:Subject:From:Date:From;
	b=TXbYboP9hhUI7cHoJnDZ2OgKoYbNOY3JcbzcubS5fq+yxep+tAj3KN3na1Mlb9fWk
	 RROLOYZkvU8tPj/xU3HTQUaTFU1JQ/kfCZUonPpHvNH9f7n4tf7cl6F5MZVn5H99iy
	 fOUMV3E0DwIrED76sM8VykR1vQdLTMzFt8ze0z4b6a66xWhsm9FBNKO4ZE8yWJqRs6
	 q6ChAqtY3WtSRwY9AyHC5ARs8rVsqHykqjOS/5IIOIKFsPJWcqvJlCJH487MbG/Vly
	 CWjKZLKDWX0sYJxlGGWRlKDqAI1JqgJPLyuxvsTe+lO15nx1IPYq3NKbqm7TZC6B/i
	 IfCISX3CvuSVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCA3FF8870
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735045369.22242.13028734500626468031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0944f9d68e4e2d878dfd25026a0858b9e15214a4238635d4da9efa1c36e485
Date: Tue, 28 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777350453
