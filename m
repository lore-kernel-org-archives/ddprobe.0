Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2892A2F85B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766801034; cv=none; b=G3H5ItSXDfiryI2D377xMPYj7bzGA5racwT25EfIFK0XEK4kx0B8IwO6n41pyC0aI78Isebuf8SEokEjvmwlKmol97AdayEFarTmYAnCE3iBZBNv7xmSYj/ziu/rx5wvVr/e9RZ310mcfoqe2EHjTtHf9HWsnElF+jRR0VRz7uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766801034; c=relaxed/simple;
	bh=57ICB0PpT9zo/iayvv6cmqwy75eHlGrUVkwUTC506a0=;
	h=To:Subject:From:Message-Id:Date; b=IDfsy6OAVcpKbG8fnWIO+xHjIMi2ArQnItJOmdz5k6UWISP0MIY0UR6HGoMMFbw4BbuEhUam1HHhjqyVSgq82uR/LEJMm8FmUC0SLBBEgPj5+RZ4WsJGZVIPj1CGW1lxmi5sCAHgys6Jx0rzLAQGAqaFlkLWhYkSfmJrlvEDTVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jctheKb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jctheKb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C1CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766801033;
	bh=57ICB0PpT9zo/iayvv6cmqwy75eHlGrUVkwUTC506a0=;
	h=To:Subject:From:Date:From;
	b=jctheKb5nBjt3sNjF8kTPlxgQvhgmUbQJi6YQO05gaClHJo5T21JrBkFk3rDBiwGi
	 nB8Ybq/RxMunLupjfrVfe/TvlDdovHCvv53RfiabTGC0nnm/sluBQIxL6njTAtkD2c
	 +uU0wD3NUdyDBNKngNOvGxUuCD5Z4rgHDL13X7Fw3AWd9Zk1pW7rSVuuqPULAO/iIf
	 a5l17+Wg+Sx+mq/J4pYpU9WtVGozNNBESMBeVA54ErWRLJX9Y/gvgzLyhd5Pen/M0c
	 C44kMH13hPqB3vsX+rFvLxNupoBC2AEHzZiMqR9KHycLtPGBHGrhkjv3fHodnkMfhM
	 uQ2TrSD6vMYQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91487E8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680103358.10733.8578587864773958618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1128e4cefae9bcf001e6038581912d2d0e57e75ea9a8c2864d72d4ebaaa60b
Date: Sat, 27 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766801033
