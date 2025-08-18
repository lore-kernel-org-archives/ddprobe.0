Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37796262FE5
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755491994; cv=none; b=pKJSEB0heV+d2KqCQ6/0rihvFcB3Rnod1KUvAnDaTt2aE99/OrOltr4UQ4jsWGOWCzlQr8W5PSlG/Wmtci3mFoGHMWurZj+rPvAgNbW1+JLhUXQo/Y3gt1WL0EpEC7Ms5oTN2hPaOal6jYmDNQhdqP99iIgqUzlrc62DuA/z9qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755491994; c=relaxed/simple;
	bh=zFln/uikCOWlGwch1FZ+8xmONe68oVAkQjphK/zJdJc=;
	h=To:Subject:From:Message-Id:Date; b=ZHJFemGUfu79EBPwPzfNW/h4PDMSRR2zYGQd5IOxv/aYw0ES4I+VplbGLeR7sk7irU59Uaz0WKHPabtzE9RFhR5eJaw0uBVtXncdP4cDd6dkjV/q9v3XFJGwFThuYvXlDWzBzHG8mOFOAXPkE/src82LOX6SRX5OoRKb6EGSGDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7HBvFro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7HBvFro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A801CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755491993;
	bh=zFln/uikCOWlGwch1FZ+8xmONe68oVAkQjphK/zJdJc=;
	h=To:Subject:From:Date:From;
	b=B7HBvFroaLejI6seHe34dluW2Fqw4cz9RSuZNiHobRec9tO/HZQp0To5mTjlb+3Cv
	 xrGXbelMImak/yXVW+DOwTP7EtnBFTdTfvUwKtM5XEXKk/56em97g9qUYV1Bslz3ig
	 b5hCmMTKZ6FZ7izwxC5IgymBCz9yvFqT5kYefg4Jvm9AWDC2V44M7ulWeSx4fcnSmN
	 rN3jORT7QHX9CYIcWCeWNj7b6zeOMh0302wKyGYEFoGia8qqjexVXqfSFaw/CBP7rt
	 tFUlN0xaoI0v/mwg+kS6nBrfjdfg0GW8YIQPflykMPFhda3f3zDP2dofYbQMlPebsc
	 PGTSuMk0hY51w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC2CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549199357.1532.17658164921415565786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3357b2df1e62a2f4db11b90daa965f496fe95a645a4e6b1571482584c1aef4f1
Date: Mon, 18 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755491993
