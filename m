Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1044D2D6E70
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768047834; cv=none; b=iF0cWYgmf2hsOCUUfjUlWDnDWaF4zX+H85gZ/zYnopIT4eYb2BV5ouQ6RcpyQ8R+l18KIKpVc0ALC/kRx1fFVRdyuEuusVDPBZV/EeZuCUdveboZyKLRYb6XnN6mbXECHMQ+XEzaEGOU4SHWax1nHhwQE/BYvcFqVhxzv5Y+a3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768047834; c=relaxed/simple;
	bh=ut9pK/MlrIX8GNv9KBWO9Pq4BPzcGd22bh4KYHVSDfE=;
	h=To:Subject:From:Message-Id:Date; b=BH01xZGHoYUF/LOAZkkw1I9q5u85kmR1iz2vmuChLa3tWNE2UYMbEOFCTzSDX1sXc3UaH+TrZKOmd29IcLjcZIZWyoS+O1YeKwM0kGBVQG4uCsHoeddJGQm/IGwSk5v+y8Gl4ob9xKxc9BRiK/f6ZzW1taeTUcpMaYYTnIUMKvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlxlWyOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlxlWyOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A96C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768047833;
	bh=ut9pK/MlrIX8GNv9KBWO9Pq4BPzcGd22bh4KYHVSDfE=;
	h=To:Subject:From:Date:From;
	b=IlxlWyOoVG2+KMB6t+KzNcqQnzN0ngWZtDtyQ3upg7tGsj1bba+LsijjQc+OwNfKs
	 Dkp8iu3/xm9F4G6AUbmA4wjH0B3yrRUdakUmaWeIBBZ5mnWCvyXiIwbvE1VwPZJUjR
	 9hF79MM1pc3uVduHoAcXRXm7Ccoug8lgpv2Yt+2nJ/mZCg5UYb50At1kDZny1W+2FB
	 enllpXYfyauwL6PHOCzujQ8MP5mnmUXYY1SYXoIZCxuIeoXgzi6iQ9sIALRHa2xiFk
	 jlKVBjBM3yWRMveXfyXOJvGJFdnkhB21T7IOVxs73VHyQ1E0/L073elxeDieze356L
	 CGc8Hai6lYYfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F67D277E2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804783357.29820.11323989699197233636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d6cb271d0499722cda72dcb3f4c63dbb296287f1ec9c6c8869db6755a4b4b6
Date: Sat, 10 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768047833
