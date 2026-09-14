Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5690B430301
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789381234; cv=none; b=Fqiyh+bNDQ3FB0BWdOXAp/E7a5HBDrblWMl/UntYigVjeUsodMaBC1pe2pzYy/rMlDt2/jPGYwgN9LoT3ZpRvJ8YUUpqQK88Ww0tc5EogNWjuRA3ySYuvmajjRFStHjazRod3lMYGKrjrX5Pmiep3dL2ep0RML4bbMEFcHx0oLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789381234; c=relaxed/simple;
	bh=hB//lms4QoW/9uuv3H2i5xsEC7Kc4IlE3t9ERkVgE/M=;
	h=To:Subject:From:Message-Id:Date; b=tZXkmd5USdkgf5VvnmURN0uMqVpTX9o690Vvs/c/QnOyTBaO5jt6ybshHz3RJUY2hH9ygX6fDnemTHjMYP88EeYEmBtsiznRAFdEFQu/qaHQqowv+6Jge06yTA6JorUvm+9TS+E0C2ZRC1KMaPUW2PSBeTeNsas3AnrxvF7D8sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MR5lXjMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR5lXjMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1322C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789381233;
	bh=hB//lms4QoW/9uuv3H2i5xsEC7Kc4IlE3t9ERkVgE/M=;
	h=To:Subject:From:Date:From;
	b=MR5lXjMBNmTGHODWuo4ZjuzM3nC0QgYy8+qCbhHlkiBG3D1f7buUt8Lss4x9iqQWa
	 iaw0CbCLFhQZ1H4pSkdSpFBYqvrqaVjARo5Nm00iV/VNseFITl0hGkwXvNTEztBTVA
	 GgfugDHzFbffboCweA/do1PhBqz/eQ74AcTqAhXK5Dfra/c6/1h+KMq2/Ofvss9l5U
	 m2c8dd4Qgkh5viMlSYsYpFI6PDiTWwD1niW4QP2IutFfBQpzDOvWD/cHnxiNQAR9nh
	 N/36jTgzx4TWuw4cWgwzZwSCbqEa0QaXUradtt26lrSLRpsTT1gcYvmRVS0iBcnCU3
	 twIh6QCnXrRmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCD6C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938123369.10387.17485453577615453294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387fad7c2cb04d403ad862ce0e9570d834662e5ce35679168699e9468547792d
Date: Mon, 14 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789381233
