Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD0613AC1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737682554; cv=none; b=Cm5SnC8Bneh8zHncUqvwxgMaMIUx36JYnQXTfsgvlvMLW16qYN46cpnPLAcL2BYEpEZI0+5I8nSljSUmu289J03eBI0zz3eCVTMt2JliGd1TLEydf7PspRuCdD/a55/gJBhO0hM3haxO7cTT3TN5I96swAZ3qJyu9Y03jX48OO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737682554; c=relaxed/simple;
	bh=3lv4M066hp3bZ7lVGy51evGp97kyCidCBcQ9+dNzIOM=;
	h=To:Subject:From:Message-Id:Date; b=cgrncL3rwJ5L2oE0tzZZZLY89tvskYLF+8DLlVQYdOR32lpcE+FU3sgVUDc4FNlVaRl3MEVfmQC098/CvoBZKsY0LcXTdn7iUnRikdqG2ZTHmhKzHzxAgwy2XvpiUTSsC+sWCmEw2BTCku7opRDFouc9DT0LH7ZpB5/9lhohj4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPPqLqMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPPqLqMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1AEC4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737682553;
	bh=3lv4M066hp3bZ7lVGy51evGp97kyCidCBcQ9+dNzIOM=;
	h=To:Subject:From:Date:From;
	b=HPPqLqMyFqdy4FLm16sjIW6DNHP636awQaRRbCeUEqXFUDMT2JVzak5k2eoTcsOWT
	 53HuRrtyvyoDHS8uZ2dQt2Blrqt3T7YWPfqRTmK5j5NDWBIoGbEcV8YWSfmlyAdUV/
	 W+6C6Yr6K5P+kVjj7hMcXp3Zvd5FW4UleY/4uNOgZdPGtWGrcbA9suMyfTfqPZYST/
	 XhM3Efx5QlDqzekKv9R3FuCo1sC2f/gzhfEkckLrVy4Gsds6e5XtwsTd2Z8qkFB03E
	 x4/wAPwX2j9dGltk3cCiS035xY5feZBGEe89Id06CL22xlg75a53Os8AVGyGN7dfg+
	 5D8kx/Gkpcs1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91344C02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768255358.3066.13663343202335346874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c466dcb66f4f5c23394581231b8ff16f02c722140c8709c5217a1178377d819a
Date: Fri, 24 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737682553
