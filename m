Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F761361DA6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770035034; cv=none; b=u6bIhppmspy7bROezPPs7YDhiPNmZy7M3F/prpvQrBJ7IVgwEIBUzr6BUlDYZY73yKP0FKCTU+PDt+mj5UOMvUXNQlW1E2J4wvS6L4z3k7h/gW+BobcJC46Q8A13as3b6ybxUkiTKEi9A21/B47vx7XvUYgpXgX8lFCoBHWFR0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770035034; c=relaxed/simple;
	bh=OvYLu+SRrkbuzdovGrvsUg8xfZWF7ugHwvcj+/cvdCM=;
	h=To:Subject:From:Message-Id:Date; b=Rizj9emhsEwyJoOISJR+lm7EZDNGRFZ2h10j/Zv3HV94P79pV+WPurM9Y6jxfB1BFSz98Po6dDA+uSbzul5uYANh6ABhZE7qCs8+l+8wcJqwudfUnZle1nykZmmil5v0nyMjN+TMvToU7/8D2l0bX9aipZWaVB3Sai9rb/Bmn+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw3IBxQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw3IBxQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E2C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770035033;
	bh=OvYLu+SRrkbuzdovGrvsUg8xfZWF7ugHwvcj+/cvdCM=;
	h=To:Subject:From:Date:From;
	b=aw3IBxQnCEQJ5pRfnGyjHjICayAWjljfwMD/3uPI+j3VCwtR5jrTltn/ZydtHcE4l
	 NprKG6Y4o75+a3g55nrlgJGyJ/vWz9rH7PP64IeHxiOn1HE6RtY3vzKW5V/QlC2Xg2
	 xgDsdoIbwnqm1NwzK4cFyC+qqEDcCc30bVR7LIqAVIBf9dKlrOTBO4AMboQiR5SJ37
	 XtDe/lfClu5XKxHfOiA4EvxVFUmsHO609N4taXY0PqJWs4w5kz2wzWCerR8MQPp7YP
	 T8hrIx1UZzF5UOLKVPx4iIomTVt21+y8gMk7IrxRZBtEujJnjqkG8vAaYyMDFN6hPa
	 1AoLLYl+p+4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9636AE7315C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003503360.25416.17872237079137854945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4c119885bf48806faf2218ecc8a4a0c9fd8fa288fe03e5aaba5223bf4526c8
Date: Mon, 02 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770035033
