Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E558350A21
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761096594; cv=none; b=CumlHcuAmQWkXFodo4kQ2K64REg8rcFAi5neK6BRr/qKvUlvBjt9Q7sxDlVjdBZo+yetSLpkvV9Hp5XBPsj93YlhG+9y9SpSUUNRRmp3Tjdw2JFNnxRyO1Ct1LeJPmp5GCsof2Bb4wb9Z+H99cb1+uSpa/Do0OtEwa2B7ptl4x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761096594; c=relaxed/simple;
	bh=U6mD0QYQsEAxSsjCJO07gLhJJXo5rc3VUITeX4/PAA0=;
	h=To:Subject:From:Message-Id:Date; b=Q7Irmlfsb1vikfxOLlcHGBxzrA68YjEgkUOai187OS+88llouvcAVKuqXMLjHvVyxY9k3kaNzJM20EyEfGSAmWYF16iOYlnIN8gV49Z0WEepMlfl3SBDOZ1IjtC1UItdVNhmerE1iN+4U6zcInaw89u+JP9NUcfvRWEAse/ip08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhzP+AgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhzP+AgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB24DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761096593;
	bh=U6mD0QYQsEAxSsjCJO07gLhJJXo5rc3VUITeX4/PAA0=;
	h=To:Subject:From:Date:From;
	b=XhzP+AgOfQ/yyYrAoHkeej+qtvr31l0Myhq/zxd4pgzVMDqdUPu73nwzn1RbqEeeG
	 CXD1v7ipt9qDoxOppgo7NfQj7CRNp/GvlCVMZKIkWPbv3FHLHX2NjQbLUPwgDKy7oc
	 8/SONW4V7D9nDy7SQMzJ/rJ0xIIO72aYsQcX/9UVukaFGZ9noM7gCj/EX3xhUL3XLU
	 VIkK86Rx9mKMDTKxRqDjJ2Cft1V/mgMLgpPWShoWG3rQmskEvL6kIjaRS9YymIeRFF
	 zlU6RoKjITsSl5El7W0XbL2YP4ptb7mt9t7gtqeH2sQaDwtasZ55xPKbtorn7yPOwE
	 Zk9sYbMJG59Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94361CCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109659359.31734.1317711280535227251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bf4496b18c0567286d1aa1f6bb67b1d809f28c4c1f81e39028b093b4bfd3a4
Date: Wed, 22 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761096593
