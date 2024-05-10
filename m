Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5631DECF
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715307143; cv=none; b=cOHuVN7iqVf8zQb99keBhmkjzy42BlK5n6HObOtFzMmnzg0xOiGT05d/5ixUMaJB0nk82GxfiupDRNGzIt+F+fw1f183546ENCuWoQDFEcguAWy0oTc8Sa9lL2NYDe8tbI/RuoAk4cMUZyrdTdkpiAwJA71jMiit0ocWtmkGQOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715307143; c=relaxed/simple;
	bh=yEXpS2V4HAAyqfkgfhoPhixmYVbevxdBp1LBPsvp6s0=;
	h=To:Subject:From:Message-Id:Date; b=mQOv3qDCW+i7c08Bq2j+CNuxuClny0y/ZUHEtMCjyP/Hkxb03zH62RKebZkBEym9VJzUpstdyl6Y3EICenNj4FtdeiXEADzO63svuU8+sYW+nRcLRioL8hlkO6sUk1MQcVMHTyqk5cjiWBnknhc/2K/lESBVl+HID/g+FimzpeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlTQ24S+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlTQ24S+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DF7C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715307142;
	bh=yEXpS2V4HAAyqfkgfhoPhixmYVbevxdBp1LBPsvp6s0=;
	h=To:Subject:From:Date:From;
	b=SlTQ24S+g4Ovaz8QteHbXlex5a9iYS7vfGfxkkwbVstnJPdKrQaFcXK1NAA7/RNZb
	 GBKbhWIzyE5/VT5qw/iaK7lxeJm0YwgEPKBhxtY+Xg5YHX+QMfDuRaMlMSjPbofu8W
	 vWXnJ1hDVTeF5m8dWLtQlJz5Squ+zHpGsRfedAiQv+yQcBz1Tk8ykUqrIRifMPeSTx
	 LcFlfLrw1zFs16LD6jscgSLBlUeIr8zoj3OiU6RTH+32yZQCbgZBd/+qrmQDDMlU4m
	 vqNcng3cj+ceAmH2Ucws3zwWkjMrFVg/2nM0LbCEwFVyIu7gpZF+EzJi5FR2qDDpdm
	 ZDpPlI8Mzn6Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8911C10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530714278.30871.13909855246112687545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8038fb24df0f95d7788bb8aa6d424ba891116fb4d1e86012ed8c7a6ab6c3daf1
Date: Fri, 10 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715307142
