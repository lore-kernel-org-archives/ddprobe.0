Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A0B3B78D
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713280163; cv=none; b=fJl7oZKR7leeFyW8HGOtmpg0UbCX5Xg9vsqvZe0bU8c3yTIX9Uvi4o6xeM1IeeKjDGdC/Q3oExxmL+aRBQlX4kIQtE47EJfkhJ4ySpFTI96z3S+OhjoKrnZxfrmPO2C5kx+BbxesXo3BacqmLG9mbsRtmxd3oq/mOj0yjmKWgTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713280163; c=relaxed/simple;
	bh=xvt01Jz/bwtWe8cPx6VWj9U5aMKX45/jLpvfHJKNHZ8=;
	h=To:Subject:From:Message-Id:Date; b=dwwCiWG+WNuvW0dQGewX44JY/NFSDqrMIaQRKhDJh58wWm5gEFObMvGCF+5fX4LGlQJUKTJMM3SCxMRqVw0wQPtAUhvYljGDHohewgcMscDUlIJUo7HEFDQ/qX8Jd14mJJqE1rcxSytsvGmKEdsUMLlQZxQZ2ZTBeIGWAzNHD24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9NTuC0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9NTuC0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B7BC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713280162;
	bh=xvt01Jz/bwtWe8cPx6VWj9U5aMKX45/jLpvfHJKNHZ8=;
	h=To:Subject:From:Date:From;
	b=N9NTuC0ed1LQOfmNrsRVJM7vAO9JfE9LeKVsGNGdW+DDKaBQsFBYZw+nMFoZ4p+Oa
	 ZrWQHxmj/OddkeiJCZutL3MTRYJgm1E3wTin72sfpYwrBaA38pC3HqCO5nVI3E79Ji
	 yTbuNHl3eWm6/ErKFmNGJTILVyHmvkQix3k6j/T7115PRJV+Y6kU8dlGIbS2WylcKE
	 aODMztm/XANPWQhBHh4ixG2PQJdedNcW9KMBJ3zKv42Gq6/ZRxQYRnjNwbHZ5iWFIb
	 muIo2NGsB5f2UvAAsGGtgTRIkbNW1FISQmFexsDWApY3nr3he+mer3bW8irw9o+4Db
	 fVxaBAcl3m9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97EDC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171328016281.3128.9489088727014328376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e5a9bff593bc9b32eeb1dfc8611aed69e29c410a2a7ed9bae57b01aa9570eb
Date: Tue, 16 Apr 2024 15:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713280162
