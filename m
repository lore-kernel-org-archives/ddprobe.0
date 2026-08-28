Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331383932E0
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787940634; cv=none; b=FIv9viae7ECBAerTpjQbIFXOFK5nG14SePp+hjAH/sUy/ReqVdmWqFL3uErxsMA81lcqSo2+du6/lH87DEglDE5iW7ujcaT3Io6ryR5QBRf2EH6QMF1XR+McBup+uYM34Zdz/S7WjOq+NeIDAZFYFtWSZvRM1XwGxVIZQ81X3OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787940634; c=relaxed/simple;
	bh=+uuIKDYv2gl3/suQybPxfdKjzXiUYL6RFrtpNFeStrk=;
	h=To:Subject:From:Message-Id:Date; b=Hxbu0M6nPdMDVegc1BQuYcBROT/yDVbNYIFnFoZMlT4wVy2BCit7XT2saoxb1VIjEssYe65syLqJXt6T0Af38Y5/d6HhIghM4gOThL2liYA1Sd5YfTebZE6cXq1orMMIVFPqbkz/Hn4tpN2Em74Nj+ViUl4GzfX6EJN0FRjEQ/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyo7QC5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyo7QC5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD71C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787940633;
	bh=+uuIKDYv2gl3/suQybPxfdKjzXiUYL6RFrtpNFeStrk=;
	h=To:Subject:From:Date:From;
	b=iyo7QC5PbT2LhyDPy09XLsBB47rr3T24wZETWnRy+ycZ2o5ho6O1yLj5XdJPjQMjq
	 yBZ2yOoyLRDDvy9RhX2GlbH4jSzV6I1TyOUOQhezyNiVA2/c0iceMEIrOaybtvSJc5
	 7vPyupCtywrS0bU4kWCmt+5hqL0xzIxpPeNtbIGn7oa0sS6+o7L1+ihGzy0ErOKjMz
	 PEjZEX/hk+AboC1tutsvrll6MDM2q3sWp0eMo8TXZMYnxDq71PlorsJ4zI1sokBRZ2
	 zYSF+USc5fq31wNZXOAkhNgWQksITM0x9jWOzysIo5ZDCzBFjwf8aC1j+KAH3qAFAi
	 DqkExUcRag8Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB89AC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794063369.28598.18050078287942891269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5424c3b24541dbcb3f6983ec99cb889a5edfba279843751047eb4e206c7fef
Date: Fri, 28 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787940633
