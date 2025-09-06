Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CC43FBB3
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757159994; cv=none; b=e5ko+pzwES9wNGvCJcz5Sv+4sGt5WW4uvWE03k4eSq0w0gKOG6uVWNq2HERSxmyiDeVMOwm2NnGa8MTuhh7+i43bzyZ7SHEGxslApWwIj3FFHJ8RUGGhhmoJxZqK0ZyclJZRvK/D4JAwES0440NHD1EUUsJBYodiOCxGSUUBYYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757159994; c=relaxed/simple;
	bh=kxkEEV9CMIO22s9+8aKDaUV7rOHnPMcqzfkVdXJhF+o=;
	h=To:Subject:From:Message-Id:Date; b=Ex7f1AyuV0luVUM1b7RUFXD6VU/ZLTXBM4hTGPwINrnBWqQGDvUm+iD+KCoq3D4rf6AaSqpWPopXhj0gXRvBeKeNFl0Sm953rmWqGYGozqwhZ7OBFkRZCc70TF7jhrYArSctogAC8M7r0D6WEJs95j4NWqV4S6tzbfU+qS8qt6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWWgNNuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWWgNNuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3A0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757159993;
	bh=kxkEEV9CMIO22s9+8aKDaUV7rOHnPMcqzfkVdXJhF+o=;
	h=To:Subject:From:Date:From;
	b=jWWgNNuvqaPrhX15muKerS1oDPfzviatmkG5BUphLdDiWWBJ07itZFqyqpGU9Phsp
	 fKGuqhtRRbE1soxGe6C4Ijjv65PlBHdvF9/jZQTjOg4A6bYNXXhzk11JoqK/M4zX1o
	 DhNFV10fvw1PQWP6JB7rtEmue9ydDhEVdBtjD0kmcXLGIvWKlOfPRZUU4tEZg29yDH
	 7cuRWL6tlTaH9cZonGuNdHsliTGjH/uzQS/VcukVmhZ5jet7sZa80Q4Yf9538zT0hd
	 TGJ9AEgm3Gm3X4rr27yCYqIDFPlK5DZwMW+yrbK5LhDwgKJBvvr+JrfGywcQTGkQzK
	 7iZNtAwHGll9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F839CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715999358.1318.933990019539400838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464d126d69b214cebf111f251febbd6826592852d2ce954d1ba08df78acd7dbe
Date: Sat, 06 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757159993
