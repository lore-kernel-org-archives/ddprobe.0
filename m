Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1212DF3F2
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786150234; cv=none; b=KvTOkl13tzi2SqVSO6KzzedkMLqeUPjjFF43xkWHJlUIcOaRkywsSzZ+yjrGz668E8HihsOhpkG8m1EcZakwZmMwmdNV/QY/w3tkR6G5CopiUofR8JfyHlfN4UKPbnMcJ/OrfXHRvr5SsITrdwTFeCkEf+Ji95G+dkXjtiBtpPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786150234; c=relaxed/simple;
	bh=tx/aMYTZ+siW/Jdea6dZTEQ8CL0eao7tbenh2fvDJZg=;
	h=To:Subject:From:Message-Id:Date; b=HMUOKwh2cHW1T3OeUgP9DhcuPfQ5FjTbiM5ywDNWuChUqltYgaS0bYspIqCM7avuDEnc+BlP9ZzLcmtzJP+3ITaAefhu2VIbSXpNsA0WLkC5dgifvA/F2VstBgjQiFobQihFYgZBqQcQBXNJUmSnsP1uPTlB7GipRzEHQP1FrpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjb632SD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjb632SD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D57C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786150233;
	bh=tx/aMYTZ+siW/Jdea6dZTEQ8CL0eao7tbenh2fvDJZg=;
	h=To:Subject:From:Date:From;
	b=jjb632SD0/m4wSrXmNFQkPPM0ZJwOzKGOamYlJVn6KQHmzouf+9pgPAANKiN/iRKg
	 o5pb4p62Yd0gM70dn9x9PngNBuvsk1YG6xJ9z6q5Mcc/fEaUKwj/PTD9LmPze25ayV
	 qY65lCvECi+x6JyvrIx3T2yWbXU8yY6VS9HjKMfPZJ3bwtt24Qks3j5d1675qlnf9G
	 1Xkf7RU+1MPlCeK7xFDp0wgO3pikfAUm6eniLUvRZCmUB6B8/Dp6AV4yQo1UIHmBPP
	 RebpNT4lZ3J9w3oQ/K5VeuNvfCtjJ+7cnGR7Pjc0xS0byj3XiXedNSaxouX4ptbDMD
	 TZlVOz6vRCYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D3C5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615023368.2032.4956191600089019898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d2ac44de3cb0dfb220c977a587b4d755430abb0f459fda1319cc8ecb8532f2
Date: Sat, 08 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786150233
