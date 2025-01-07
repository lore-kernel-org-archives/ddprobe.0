Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22845154BE2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736250954; cv=none; b=RjDv1OpXvFdcq0WMVMbJunvDSyx0z4TcmRscYFfP1VLpCyPtTaB4iZ0zmGFOj3mIa7VdZuxrYjmvJL8pYRIv9QZWQaO5Ck0nYQMmHpL07R4bNj8N4nJK6uKSfFQAt0RauPQAZ1oG8mI6FgwJ8kOpSQ6H/g8aWq6+c86kO/b9Ov0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736250954; c=relaxed/simple;
	bh=qOvE7KhvVms7XaCLZzmEfXzynlpHmnsi7sOFQZCJmdw=;
	h=To:Subject:From:Message-Id:Date; b=f9G4mooWct3xTwM5xKhVrr7/2tIHbN61LJ01p98zU+LGidINEQb9qBunQMtkASqK2sX6JjZ5uw9+FJN6+HtOXOs7LFq4W4LWEryrRVkAG9R5qVNt4TTJWaRioGyYctCdIuW8Jw/6igesROXKJtaz/D/eoCqLb5K7bcI1PLuy5T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2lOZ6j8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2lOZ6j8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A972BC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736250953;
	bh=qOvE7KhvVms7XaCLZzmEfXzynlpHmnsi7sOFQZCJmdw=;
	h=To:Subject:From:Date:From;
	b=T2lOZ6j8uDhYa2Z2uXZ5+dcNqTRmRY6xbqKlRER2Jy31BQgSSPKBOoyqo4W0ehpJi
	 Lr4IPHVs0NASqgq+gH/jr8O+muS1MGoqGF+B3rcfF4dkDe8tmcLHR/JZE1lsFhG3TH
	 6/NOlo79r8TSgOMJeCR24QhWMbXeowhvhKKFxZ8IhitS67Fn4Yrfq9G2FXQPVJWWtr
	 vv6FCazk1axSr1lHf2AYWQaTQ8K0EBDX/tVjzMEEkR8bnCNJPB7I/HjipChT+8pke6
	 oWOllJj9BR8/b4nwIPcdeyKiwXG3HZWtpohqYbcAwqWeqqRETxtRRKqqKYqWi6hxF5
	 YLp85z871n5DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9504BE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625095360.30782.16505458947857363322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d626f825066c42c6caf3b4232f681fc6c89e531d90d1381e06762b87acce35f2
Date: Tue, 07 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736250953
