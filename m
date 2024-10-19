Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BB9623
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729346754; cv=none; b=oTPGSEZfsnrVmxFGVXv/ZBMTPL/+brDJYiYsqiYY89LzMnjCcNkc3r8CcjjUdaqFoUFKK7sybTcySPB8rFGKSudUREEac5TVCvRGdhiI0zACUXvke2H9WfNX6LEVG20qkIeVDdvH4whymorST9eqSo33SIKICEaadp7aNUTh8BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729346754; c=relaxed/simple;
	bh=4RcXxI2sWIIG2q8t2RXksuDw6AKi99834QVwQG8xxcA=;
	h=To:Subject:From:Message-Id:Date; b=GvlRltTxd++uTJQ1lp1KiakavxqNxCLJhiInBUe0hTET2740FVbHqVJFbWsXrRylfRYOdhYc9xQ9HR3YfNYNSZLJ/M7HCKHJ7Uy842PG5Fbg54smq47hZ2wTESmbq+6m8AZZuEnEEmrvdshpLaN1cQOaZrHFbVhRsxnJMurAkaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m74yb5hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m74yb5hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9C0C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729346753;
	bh=4RcXxI2sWIIG2q8t2RXksuDw6AKi99834QVwQG8xxcA=;
	h=To:Subject:From:Date:From;
	b=m74yb5hjC5sBT5HmVZGuzix1i+yi8IV247DSFeYvq7hdnu1OGbGq1tfJ/PrGE5Ukp
	 MLoZ6H4mdHpdBqTkFIce1aFuHKprsy0ECF2uLLDGBI71M7z97XKZ28QWPjmnrl+3e9
	 G9JN7paUjmnT9pYwWmAAjCfhkjJib1LuIrcvRuMbEzhzliu2sVhkfPCJ2xF7HSvQlU
	 xNSTo2LdTb/Xp5Fxy2xTnj5WZl0U3pxM4Yfy1aVUIKm08KmU9+WXkKbjiuxmtG+H+S
	 8YXrLN0JwGXxZEeHmxw5CZJkviF04i/Va11QM72fIPlAKzXpREigM+r0+b13hX50G5
	 EX0LbX+UNwhHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971C4D3C916
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172934675358.1226.10089601317164705168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5499130d3e6505e85545b262bf5039e76252a5474fb80dbab218d96835c169d
Date: Sat, 19 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729346753
