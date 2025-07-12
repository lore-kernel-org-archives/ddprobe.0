Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332AD1FBEB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752311394; cv=none; b=ZJLOqZAeoHTP6q1BsIGBm9YDyLA1yxX/yNiTLqJPYS+ayc7/fAXybPwTnWM3UlhhbYlIRU2rUU6jPdlzHHb1EY7c4GW9vdWPnbeU3f+aIBLoqTkfSrh1UdNPhoPH5micyJqd6TRUjrujw2Bu2c30JTMFdMO4Za5CWWeeMDW152U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752311394; c=relaxed/simple;
	bh=8GRgvD/kQ9CttzkkWfysn9HUcGSNWh0N9Ceh2HXTtwk=;
	h=To:Subject:From:Message-Id:Date; b=LP/jFrDd1mOnLnSH1LZDaZpgY1A4ra7kJ8XQECAlFTy51rfTSR+WpLatZWhfZWxLf0jpxuOFch3dhCZ1HzXaB9JB9WChM+8yneX547tYDy2F6yKXsdLi5LkB+rS7IedAFDFy9J2u/ic+ENoCSWo0CkXawc9byeOFZjWms8v066s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGvDgHQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGvDgHQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46FEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752311393;
	bh=8GRgvD/kQ9CttzkkWfysn9HUcGSNWh0N9Ceh2HXTtwk=;
	h=To:Subject:From:Date:From;
	b=PGvDgHQvVhLF14z25n3FmZ1MNK+y7ZT5BkHK/qHktObpnw9O4iBq7HBkHiWOX18zn
	 asenaJz6/Cd972mRRktKMlCsPtfft/xyWv/H95xUUQu9ynHP39/y+4K3JMEQNWko/0
	 cHIKmJVihOR8/OySQQuhBNeSsvijWJjrIs6SSdOqtY3QSZQpznqfod9TncX7yodagI
	 havpMV6/vSYlwwc2HGaLvRUY1yS4PMW6IxVN1P1NuyTZ4uvlA5WA+TY3m0ukdCFPPG
	 n/KWrugUQa0YvDswxf6aVBEJWX0giuCKy3rv2NCc9QdCTdKV1zMALNxT2zpj53y/0p
	 pA+qQ+fet1Yzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92399C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231139357.13944.13736847986748351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f009fed26faa412512ad96c5b3b303ed401ebdfa6bc223f5e851db0268b31697
Date: Sat, 12 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752311393
