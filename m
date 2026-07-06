Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479193B47DC
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783333114; cv=none; b=FKTdJZ/sPjB7uNoUEhTAxI1CBH5ktJHOmD6VvWh2xpeQueXFsHXNmdEKeWHG1efM2uCSrndmAkr/hrW6n2HDmjo5YL7qKJLPCHqEnzUUMkP+OKra9LgsKQ61syNBQpd4gDba7OK5+6hdd+yXcd3Vo1cEAVx+Us16eo2WlGvWDA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783333114; c=relaxed/simple;
	bh=2pWma7mkj/IlYUh/G0VJL3RO3gAKuAXj87fDIgJnvVA=;
	h=To:Subject:From:Message-Id:Date; b=SkWTt52lClqGq1d/YBK0Y2aqw6TzKoVIbsT1RFWp759wH79u4B+1+hxEZwGtLrHjaF1D3NVDAr9GsTRhyrW5SbN3p6R+s3lVdbzx4hXaWxyf1TE45Jte/mMOVFlWJlFqFvVmFHsZbhTRiTX/E+N7pVfjkUty/groUP7W1Nt31nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJy6E7KC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJy6E7KC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02ABC2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783333113;
	bh=2pWma7mkj/IlYUh/G0VJL3RO3gAKuAXj87fDIgJnvVA=;
	h=To:Subject:From:Date:From;
	b=FJy6E7KCZAUbCcjcx7wWPZpaxmfY+LdkYnE83M4SI2lAxLTFJfhDew0VcxjY/+Elj
	 3/eD9uxQ4qQofpStmiCLiB9Ok+Nt33U+4bwGwlrRL8skze/WCY9onyZn/XkJLKPO89
	 FQ1CBxJjAa4FJI6FqmWdLmeTQaKyeT0EhfrDe2CP0TaAlHbY2Z/CW10Swa2sTfgPh0
	 4CQNTN63QaPu/3pbcVy4RkKQrvjwERxAcll3TmuQULjbLVSct6Wsf/UWj0pQ2KI91T
	 1AYM5wcykD+LtwtkKSzfidfiFZoWV9LHDT2skTJ7WsHyiJS1wiAUPHw5guDkwBI8mG
	 y6TGHvcS6rZJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD81C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333311370.8736.6012191775249008366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b24312c62b0b63d5e25800c644ac24d0f9ca6e4f179b8dd7b8e32ff10df8b56
Date: Mon, 06 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783333113
