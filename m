Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE1813CFB7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721714154; cv=none; b=e7pbFeCuZuoYGX6+Pz22Y9s1PQOCQXtb4lAl3NYKGQ/A3/DqCpeFsnOgCAreUR+Z7MtEpi9lAGF+wNmZw8n4yipNm4pc+wv2hG+jWYnx/7Etz727bqGFYcJlIzxWJr41MBpklE7ovCZ7HytqjAhCQoz63O7zYKpgExmS6hYSEtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721714154; c=relaxed/simple;
	bh=oCjCaalac8kqUkwNdZzjgk014AMACqFciAJ0x+0oZM8=;
	h=To:Subject:From:Message-Id:Date; b=UNUxtM5g1li14kcxVah1NuFxRPG+2shUEwNkgIuw5tD2yjIku5519u8r/EBqoVcqLsPu7IqPnMo6t/REiTr3DQ7Lk29H2JdFXAy12G5kEXcIghKJezhH/gYuv2iruzSTl0rk9iBYa1waH0HHn+tllR4pnWoSvOzJZiWARFj0iWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDZLZlf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDZLZlf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E1C4AF10
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721714153;
	bh=oCjCaalac8kqUkwNdZzjgk014AMACqFciAJ0x+0oZM8=;
	h=To:Subject:From:Date:From;
	b=dDZLZlf49dAS0ObUN3IkjdF7oAtuTbfAFjJTb/hgiS9/bf4uYv+N9DFAc1jktibeo
	 QqFQqFc4pVGHxdP+Tn7HaUlipOl3ok/T7sXxrPdO3Z6VhyhN7G1taBWBl73kQsjUWF
	 9x7IWZhy9b2YxgRgjQbzyEZzDJoDSUxIwvOzi3hiN4jfbjibF/nZk99PiIRAqrlY40
	 77RwgT5jZHXKOdkIJj6Oj12hy7zHkqFW/hQYmb8wkDVklDO9qrlqfmFIyWHoRsoeRj
	 LvcjVYWewG+2D/a3XDlgDVhKtmVWaqEiFRdcqwfk+6YLonCWeS2HdC6OoAdfTBTikz
	 Sz9NtbO0FDWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90627C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172171415358.4377.92315483891083390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243235be57979b44a6b0f4179d694ba10a0267994bf5cde91bf52da3434a4aed
Date: Tue, 23 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721714153
