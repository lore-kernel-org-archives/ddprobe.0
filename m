Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A6025FA26
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744096194; cv=none; b=nKxJy9f1TZb32oF3HBN84N4zzws/fIbyigAY1lo57iM3TRz/fo5qO0hWTqh45ozdQV/vjfoml0AzXwB5cNL6qwAKmhoUYunX8IHYKp7oWdlwoVZbn5OyPMqvLmifwwxaT7aDSFrlvV1J3F5kUFE7kYbg+Kv4p8etDyShwWs0FgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744096194; c=relaxed/simple;
	bh=T7iNtruJXX8hamjgoeL7Kw9RM+4Fw+UmgTWM4NLTr0w=;
	h=To:Subject:From:Message-Id:Date; b=h3kfDW8rUtWmlMZ9FOd6zP8QrI505GGkrvRxX4f+RvUToOZCQ9LfClGNU9m6Cn3QPBkTwwIeIWKUn7IpA5hSTXH8174MMgqkL5kGHyYUx/Gj7UmJ3snCD/OwEpI5O5uPxNkx9USSPeGQL8B3K0SjWoXRMUOtQVQnSP6Rx4BVZxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4uD0t0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4uD0t0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B85C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744096193;
	bh=T7iNtruJXX8hamjgoeL7Kw9RM+4Fw+UmgTWM4NLTr0w=;
	h=To:Subject:From:Date:From;
	b=N4uD0t0prAz+e1F1zS13OxTLSWgHAqhoV+i/qBN04a8JT8LUG3qDKTZYfIRU4chsC
	 1YRn803peKw3cHwzzUzAzdSruyRxrehGTqy90Ju2vNvdR0Vb8QxEJ50Rm/DdFirGLR
	 rdTQqoZhSzOkcsbkmTqWJ/W0yZGwmu7G2EZKwYrETc9V8vDDU+t3HYT8jf50BjGxvg
	 IRU9qM+2l2C8Wz8lm+eRpD9szrMaEPsLb8MM6FKkJTBDdSgh0FA8TUe8dbuM7hW3BS
	 nmIQOkq5xw6Q0BlQck0UnxU07L0+eILf1u5cy6ib9IW88bEDzhxj0dfOQ/CkVg3Eyp
	 qwdysqGccNg9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F41FC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409619363.29259.5838801915892616870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4170e0a4a759365769527b1cf74c95310538583c357a34128470c0d5de829548
Date: Tue, 08 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744096193
