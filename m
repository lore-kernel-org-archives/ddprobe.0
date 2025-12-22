Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0057832C928
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766400234; cv=none; b=MFG9osiqV2t1jNiuKfcytfRRXrJNuDpyRaj0Y44GSAPlvzZ2dJwhqXu/YYdubYM/Oc86SUqGqLediiK+kAZ0/OrqiJ0bjA80c+e6Kj7QaDPKtZLltZqjJtY+3j9xBvalS4+aYCMfcc3avuu7o0D+6131BF4rOBFpUK9H/tnhtYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766400234; c=relaxed/simple;
	bh=4OGnZx7rT3uNYKwAbgJ17Naimo5E9WyMcmdBLagQqF8=;
	h=To:Subject:From:Message-Id:Date; b=D3XIECaLzqn1Gb28ttVwtc4/6oT/J4IqOtmKTIyqU2cT2hy62SjVyvgR4KGYRLB+aw8WfqfEuBfn+uS5e+YjoqtU6nFyKrDuBGZT5sjbm9JSefJKZRBCphdD7zOFvLBljPQkPI1uwPcGnoqb1OO+qHrjcROTuQ+ln/jrnfDAtWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSsLes6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSsLes6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4B6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766400233;
	bh=4OGnZx7rT3uNYKwAbgJ17Naimo5E9WyMcmdBLagQqF8=;
	h=To:Subject:From:Date:From;
	b=KSsLes6zGJsxlYontlCukBrWny2z73FGTtcnih3jzU30qIFlMfVx0jPgM4Qhmu4zr
	 S9U+EDZW/vnvuG5vOv/OslW8RKc6SwnhdASFGigF4SS04Oz2SmFJSbAIxX1xq6wXyO
	 SKtO1ZXW+oWHekiQQdhCPe6QCXsPRLyyf7MqoD2/OjFwkTePJInGbNEbvJS6A29RbM
	 YA+782CdU9IwgsHUN7vEbqebbhXzxYwbMDL7kVv8A+TDDy4iJGv/6jjz2dN+uyDGgg
	 u4Z2Ig3Y2WgRkUYZv6SAbytrPqiL9OK7aaahdThIbhzOhkwB4zuAil1c5PF9SPPFep
	 U78rZqZAVzlAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA7D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640023357.16730.7233530783042313054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ae000613e034631389545a879e15521444f58abdfe6018bf1278f50cb5d1e0
Date: Mon, 22 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766400233
