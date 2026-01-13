Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1492236EE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768268634; cv=none; b=ZZhdnm6uvacy44gmSLA5HtxEUYeTJmdxmadl+DsYAYFOdzXWXibjKmULShWCBN4OCUL8aKCqftS+20h/eMhHfA0K6GSr5wfKm/lLOxq80z2JkRkuf7Xn6G0FhOelauSjgx2C1NF6vdI7Q2VvxJy07pB+ee0O2r7lUG+ByopZ1Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768268634; c=relaxed/simple;
	bh=/X4/U1W5LVKASImGyZZi2ga6FKPW0T2XIUVelYSHWMY=;
	h=To:Subject:From:Message-Id:Date; b=RYWd5Z+TTpFNmseQkdOPCcF0FjKbfvtpNWyZVv5VM81OCp27dJb7ZFE19V/yRwdGxPk3xxPNG1awoPrlqHKHtl49jisZq5MocGsx7X66XJTiuGt5wf6p3rwCAdJ+h1oykZE7a8UlN9qnzz4ishk7YJxdHoqqlyQHA0RmkxSWGnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Js0mnZHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Js0mnZHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A578FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768268633;
	bh=/X4/U1W5LVKASImGyZZi2ga6FKPW0T2XIUVelYSHWMY=;
	h=To:Subject:From:Date:From;
	b=Js0mnZHbpUB6zi7AvJd53ZWhmyB2fBpSBfH+DpvdtNZosisSY5NnT12QAWCNBgAqg
	 QgkD48+BMRzzdqNbFvHNtsoP5RB5P/rrJtsMr0B1AfP+J2YfVrTM5O7i3aL/dzWYU/
	 e3p0KZoH4bIWuzaXqUrrlJaMzX6g39gNAkW1qEl0Hh8eYm0bxmCyXD/l9KO9mUqQ9o
	 Zf6cTlJkSQy7l/I9HkX6wW8u61VmcGD+M/JVOTKy2I8H4zyhGeIzxHygrc5t0jwpjK
	 r7JvCRwO2GF8qBbPFKBTC8zy1r8j4Rx+Goziaq7qCCjPsRs2iF7rKMcSzjvH9BZi1z
	 cVLPwZGTbBGpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926AFCF45DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826863357.30498.15463612678060964274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a425e5e42e70fbf1e00b59300bad100682ba0b5c18748c9f2d8091d108229285
Date: Tue, 13 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768268633
