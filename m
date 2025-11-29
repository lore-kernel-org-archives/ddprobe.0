Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12006272810
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764415374; cv=none; b=pte7lbPdl3RjhCM4BgdlbQfd1jX9NLFbeE0Pd8ncwl9pO0jzC9T7vGsFke/4NfwRJsySN5ulrQIvk5cT8FilYJR6zxLLmQcDynjkAcwYJAuvhR8ly5hQX6XR7uBvGdTBK0PhFGdKO8R1tA90Uvn2KdZaYtpe1uSxjWSf/iQazrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764415374; c=relaxed/simple;
	bh=dZ79oRxwqVbXpnNJ1R+NN1vsAn03m36h3tB9UEzMkFA=;
	h=To:Subject:From:Message-Id:Date; b=k1JljSaltkSJ0eWKxf43BmaZnG2gnhjLJHF11peJLabjaYeDhD1ihxnEXW4B+7fYHQFC+raKjjubouNIhGRUnJn24MQRL5N/deKcGvJ42L0NCiaQYhUz+Z2WyP/Vv6s5otLvlA68RwjHVCrk4t2bXS973hYL2GF93YrkqBQJucI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLzAhZfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLzAhZfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7054C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764415373;
	bh=dZ79oRxwqVbXpnNJ1R+NN1vsAn03m36h3tB9UEzMkFA=;
	h=To:Subject:From:Date:From;
	b=kLzAhZfklhmXHwBLZEYYV55eBwItNYajkplihK0f0zJV92T9CBmTR7Oi5Mu38jbXh
	 3XInKQJINwE3ddbdj/hhsyqUKs5ST0pZF/HZr+eED5gyW/iODFsh1X7C6vUlVoXkyw
	 Ld2MRqFxLHD7pZLH6ivS3EJncYT7+/LqS6UUXoLk/tGVsVMrbwOIvnjhQP30pJU3wf
	 NBmt3Lx1bsHohFIyLVdQ+/RyhAjK5744NZ+Q10Qqpo1wBPCf7vwhR6DL+IcEpGYgbj
	 jjJdaGJd2qGQoILZ9LDQxkClHoPIdc2+/Rqj135KjqO/VAdTs11Ct3mC6iAf5mQ5ih
	 XAhP9xrIlQgfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B01CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441537359.30946.4286882748509061853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1662f8ae31fbf4b86367a15ce1eae20d34de80fb89c8971c0ece28171dfe9e
Date: Sat, 29 Nov 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764415373
