Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8753AD503
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791280234; cv=none; b=ugqoCooTNIrpYy+JvL3sT2GNCMzeRSzMV0YSf0HVGiEkI7zXfSUnFHKlZym0LqvXm6qfQKp+t4PQu/j37hLCCFx3QwV7tYQiZ9b5BUe0z+dbqLKkN3u4P+7symTDUciJnu8qgmev3JZrGgXzkyEFwN4pyN96qm0HkxW3QvjngPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791280234; c=relaxed/simple;
	bh=g3WTBbgzu1AgYthvMvbf8+dVgrkTPZQPIHf3JL0huas=;
	h=To:Subject:From:Message-Id:Date; b=TDQ1izr7rUmrIXTXW2lDSCJSafa/+fIZEQPesLmPhpxWcNnUvKeebltLXoRej/TZbUlTyuyH9188k5KqAr6muTyr/UfVVwo8Img9Hb7qZmqfke90dOHmRKZ/sjoUU64Ep7/JgzPMw0W4ngz1GOdXllQnQWArP1bNwvkON9fE+lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chJNOoxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chJNOoxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D779CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791280233;
	bh=g3WTBbgzu1AgYthvMvbf8+dVgrkTPZQPIHf3JL0huas=;
	h=To:Subject:From:Date:From;
	b=chJNOoxXUhTcEP4KT8UaPzqiKBV2lxmlrKQ9IZnROiZh9XrIzYKe0VMHfgQieudNS
	 aSq7kL7HR8R9ngnZJISrkCG/JGW8aUgB5yE4apOFfwvALpEg/uAvNpSMnRHGwE6gkK
	 g8yp/Pjf1t56xYI3tl895TKzm63ZUCb9rPtl8ExdXAW5JNQG2uV6HGx01nbVzJRgKB
	 A4hvgqlDdTIE7rBo0f/SVkUR9DrCEH19W8hAD3FsnEgTQue0xY9oqW4U8flMlwVeGd
	 7YpPrPhqVe6UGkD8DbwulsmZbihe2rDDxZLWVHzXcIS0Swhar2PkSN4fyexDVK/h8u
	 sbRbFFXRKktzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA124CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128023368.9587.9326796383004206481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386183e117630fc6db381fafe2809967ebff2b4e8bb49f4ac48ad8efbe66093f
Date: Tue, 06 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791280233
