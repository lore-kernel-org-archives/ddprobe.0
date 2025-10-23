Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C12D8DCF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761262194; cv=none; b=qoMeClBS3WFSvkxxpr1pC/rVwGt3eQjPSD7O5gps3rSMkj9zKIjERPGinDK7yMHN4clP74o/CySu6witZdTZzCY4tLhprz/+BHJfYxZKy5zm0dJVp/5p17SZhTvkLpMXumAFzlPusYzcse3I+0OWA8Fl3q1QosTvWdftbJOHIvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761262194; c=relaxed/simple;
	bh=SRx3MH8kmE85f0QKAEqiOC3ZoE0uwPrcG8KqK3Z09D0=;
	h=To:Subject:From:Message-Id:Date; b=fKSEOXvNCn+hNvmO3KbSE7eovqdV5reIfkPbmCT2MZ0XRozGFAceOIhrwcQGKB5Zb3cHuuzx8nnG/f9ejA/SBMUc/SBFi87Bz2l/TThhZZPkhOWUyJIinVYS3Ft35kOAwIQPlj5rhRSCHKqBgDHLpsqqxR1QSxV9w9lJTtM+ZOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjSZBJhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjSZBJhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E93C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761262193;
	bh=SRx3MH8kmE85f0QKAEqiOC3ZoE0uwPrcG8KqK3Z09D0=;
	h=To:Subject:From:Date:From;
	b=XjSZBJhk7oR47t5OGcwdj9MCjgBxXzhhfa2U2xoa+kp+/yBmy636JC47KS5CdPloU
	 McSIbh4cbrKBNhLw/euM6jmNkuvPqjcJIRE5zO45YYxoREiEXvkPTNg4NuJgDXap51
	 1s49pECzQWt4yjONcqVD/mhK/2JB7p+kBz8vGUdg0IX42SjxW91EmaraN0sw2IXsTV
	 I2RU0du5YAMeInYwstBKIZAecldf97bCk3P0RcE/djcqW/Lg2TG3N9rTbqeVtnH+AL
	 F955W5b20HFyjk5vV/dHiIyBryJAtyeeO0x14g+147rYdSKm7EHg41SsSsMV7+8rsH
	 ILO9DG778/DLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C63CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126219358.27840.4421102319072277555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca7888d9b9d5e6146c8ded6655c06998b409afbd9549489c0cb0b0c45684d3e
Date: Thu, 23 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761262193
