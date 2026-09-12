Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5187D38F25F
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789203034; cv=none; b=W9zh6QpfW7MxdLlinD8o5MZPhv4pOwWjEHbActtKk6f+eNNC3DgcqprCFogeJ+DLb9bmXccdN/VbC7Ym8P3fll5NLudmvnHJgcBBn5zLiv4Lm3ZgosAEqYDwjQqU3Cv1eWy7bbRZi0XPf3+3jFpLnMc5OimuYUoThT/GlUdIJ8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789203034; c=relaxed/simple;
	bh=g0A5F0eGhb3TY7Cup1Y+VEFDTrgGxUuvcI2q6ozzeQ0=;
	h=To:Subject:From:Message-Id:Date; b=Mms/esvabtkEz9SJi1n1fgh4dl2hWJnRc9sV7HjnaMI8gZdwZo4iKBJd8ri6ImPl3SdISjJZ6Z/9+gXd+o//arJk2eGEj5uGhI8Bz8/M3+TFyweydQqMhajZ/IpcustuinqGeyos00UuaIOS3AzlkhQMcfwbMgaJ2v2UTlgJ9Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR/JLB6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR/JLB6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA51CC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789203033;
	bh=g0A5F0eGhb3TY7Cup1Y+VEFDTrgGxUuvcI2q6ozzeQ0=;
	h=To:Subject:From:Date:From;
	b=QR/JLB6x4rDU2vzSiryMGsW/d+PBcJITlwdqWg+4OOIdPf0l3AvMb6u0iXGb63oA8
	 F9KuYm/bPAqVZ5C6SxwGn/Gwrf3kVWtataHSjdjBp9a6/uV07L8tf8+DuU2TzmjNbC
	 gFA9ByDIkFGkgNl1AkPiku6xx/frH9i/1lT3j4PgI2rnajkr5zQZ61Vvtexrfx8eLY
	 xzuCKRhObppsVfnpeRZrDWIkGoISKxdKOJxXcByXWG59W0P4BRMkRYD6wZaTVn8Jq9
	 2ZIrRFhEi5/U5/V/IEEMzup+B9LHBIH5XVh/oMT8gv/twlvH+xtf1jVB271TRZrIvn
	 MTztvy4LR6xJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DC2C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920303368.22580.8250040689288245030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be519ddecd3ad6294d92350c8b67da4f947fbdc0bbf2ee4bd7996ce260a4537
Date: Sat, 12 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789203033
