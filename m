Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AB341775
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714464143; cv=none; b=YSXF6i96FZF375bgVgtLEwJs1AP+PvAhjv5SEQ3I5uBliSQVjDNyE5y6u3BV4ymqN2RMbCObzvPYKp3e+MfzQU3ESiQvOtQfnHDBzkuOlzdvlM1Z2eYPYAoLHZC1q+37AdyvnjFSV1qVxAPodtMGvVs2AgOb99FJBKVuDPdJFuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714464143; c=relaxed/simple;
	bh=Zg5yhwnO9te0VOC9nczpy8PguVsG3hjqA8ryEoJqMT0=;
	h=To:Subject:From:Message-Id:Date; b=r0JbgPcBFmwxS3XzKrEzDfqKESb1gnqPzTBaqO2rYBS2oR1I36UAXuQtxs/vRIXWU7sHdnZj0HrPCt5NpaV82rrywv5whu4f1fxUOohxWq/SSASnFNjBO/AU204eYUrR7Fi/nkZ+a+Kn+0JQGC8W22GSAzIUGKIXx5tdE9yK5A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8ecTehp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8ecTehp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF630C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714464142;
	bh=Zg5yhwnO9te0VOC9nczpy8PguVsG3hjqA8ryEoJqMT0=;
	h=To:Subject:From:Date:From;
	b=e8ecTehpkDG3GISU9nFV4BiejEgRFRLC0m7oWmCCtfZvUacxCryZf741uf2vNy0Nf
	 yDRdO+M1V9F1E0RiI9R8QdAmQYYAGIEwe/oxZ6FKHLpzGqGJtKTeNFPaYjbbXR/AV8
	 oE82JI5K9OgvWvan9ixx2U+OJDPBNv7KeoLY0bsyD5Hjr2JtrCkq5U8GDiD2q+b2SU
	 lMyQGvFbIHpBC9PTXRbq4Vyo1K9xcrAoSFxInGXvmFYetdhQQd9JUomCa9WOKnGIf8
	 VP7o4+k0w6bYb3A2xCSN8ogT13tXI3UkVsPJZlmsDVjiDVLbF+JD6IGy4tRAwrYVGP
	 qU2qVS5P7aqTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD05C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446414282.30117.5083392060813944553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3355622ab60e51b247c3a2092dcc47fac2cc023d4e10527668fa90aa24ff9085
Date: Tue, 30 Apr 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714464142
