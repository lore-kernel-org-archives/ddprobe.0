Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E666E275870
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777648054; cv=none; b=A6KklGANQYTtyzFmia3DP8kbXmKQWIObBbQxUjBUhyXrAmnccmxqANm6tbizxuaSDhxuNXkSN2EpW0L2eMn8ITfROva0GcHXftbfm7mrN0n8GwUuwaDUc8rHLYzZKY8vwQZ3GHhA8h9ZJyMYuWUPsGBrH/GUbOrT8eshWl5R9ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777648054; c=relaxed/simple;
	bh=kKCv6FWM8YKdXho276DzIV4KUIXPU0PkomZF/pUwTp4=;
	h=To:Subject:From:Message-Id:Date; b=pzptl7Oi9D6Ug+GQ+mSCpLCFlIYHv7k1w8DZE/a83aTe0L2VcRGHuYswgRANDSrlgc8XLgip2uZEdyRRpevfxXGSb5WN43bU/r4KZuw7zEiXy1LGJn149aYjyv73HLoU0CwjT3V8hFxltH2XLqiDAo4FTNXNTzMEe/58Rp8+Go4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoPIVK0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoPIVK0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD09C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777648053;
	bh=kKCv6FWM8YKdXho276DzIV4KUIXPU0PkomZF/pUwTp4=;
	h=To:Subject:From:Date:From;
	b=WoPIVK0gQsgI1R+BpP7xbUZepVWNsYL8agLovkz+FMmI4whXRbpLQbXBOXRqIeLnd
	 4023JF7ux1zRXXc3qvhdq1HSCJDS4sW+zqAaj8f/9kifhbwUgIpk91d6pvrBknWYyN
	 L8dOynDmXzIi+r/lN3syEeb6Ap+Xh6/6uI71DxZVzo1SQEmbzEyisiR82ww2IrxU4P
	 a/S2/xlSqoHfjagQNYVv0LFgVcloe8+BUh9xsEPgmECs/wWgxZc3AnuOtkP1RBqCPQ
	 tJGowAHErVrbzM+6aVXr0KWaz2fMLuviHo6ZyXZFwE2ZWOnH4Lo+oPtOBGBq+Rzi7D
	 JX8t4yi7+oX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F1FCD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764805368.16472.4133488355204933595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377e7e071f3f3f4cb187d2c23d3356a0b5b5af9072667e1eeb6f5a8fae1ec2bd
Date: Fri, 01 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777648053
