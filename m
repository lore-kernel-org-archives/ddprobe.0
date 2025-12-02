Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D70309EF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764666774; cv=none; b=IyOWUHv+uoKxWp0BNhrWb7AX3W6wMEE82qqNyQ7t4M0GhAKKWKYjzD74cVWdPM0OkRHPWzA3lExQ0Xjq6pzioP2LW5je1cUHYNGvbYu6n1S80spP0Wp2TLiNGg6b662zGxTNqQSDuiX+EV9e+cnHVjPLiPxo3QznWCD0TUc6w0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764666774; c=relaxed/simple;
	bh=LBc07wor0Mfd9+VGdL2FsJoa+YS3D+4dgHTYBeKdZas=;
	h=To:Subject:From:Message-Id:Date; b=CM8QT9y1GnOKuo67oRUgnwblfSjItSOEbNjm2c3DM7MVdRkY6OdSoSEJfNeyQPmWtcI63ra7IHPKwic9WnRlH/3mtKKrw61jdGgZVbHkWrXjKpL1+MEbGQX/CH8Dp7SDB3GkaPKOF9fWtNMOsIfITFOVuzWduod5akT00BYBzbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lV1mLOE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lV1mLOE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45DEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764666773;
	bh=LBc07wor0Mfd9+VGdL2FsJoa+YS3D+4dgHTYBeKdZas=;
	h=To:Subject:From:Date:From;
	b=lV1mLOE+nKVk4HrfmFQNWfRZq+HfGWd/0YBJv/VYSLzKNZFHa8cdYg1oqFOxUmvcL
	 dNi7+uf0XNPO6zE9TgMo7maDoNkPboZXlVfrPQiD4nE660ESsQCC+kUJIszbjXKXD4
	 5Wq/0K27euf42QNqvw1FSS3gpYZ0xBdGHN0ZPwK5FJoxWyvbCQCmfp/QyDKUP8JCgN
	 33vCgpEuIteFJQSGf/JxWtG0lm6Zc7tkp/c8M8wwdpME0R5GAqeOUNEp2ipHtKtofZ
	 smHDKKjtdKx7dEgho3m7qqGKvc61SOiitg4IlphqEMQKJBz7euQIiN6DPnRQElw/wX
	 9em7bdcHTMDNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ADCFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466677358.11533.5429097297488362365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885df24b8f74097dc6256f3115a34c33fbc378352af3790c83a03262affccd74
Date: Tue, 02 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764666773
