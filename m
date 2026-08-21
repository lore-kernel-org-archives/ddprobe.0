Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2DC38236F
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787347834; cv=none; b=Ve9HoX2WaeUbu7sdj193GvhBK5qV18PHFYDcTD+ZbMoi0L22/TwMgbzEllbIwJopmZatYXF27UpGnL7gKfSzRcOfxA/vfZzbebnrfHIOtvoJ9HTkFp83pXHbBWKDIdFcr/M+d8cPyRs13NDfkrqlWs9NTR12UbEApTFc7L7uFcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787347834; c=relaxed/simple;
	bh=e8aGQ4C5l/TziAgUAhgz4vG7jfh5loNF2IHGHHFbNio=;
	h=To:Subject:From:Message-Id:Date; b=Lj/bBvPxMBjwomhxjhQNCnu8/9540p83MXPgedPeBw+UWTJLRWAKZBUYstKn90nUh1aj8I8Cgwoatx02KGYfJ1VnxonWcfze5ANOqAIMQHeToGH+MK+Da4Vs5XG/YHbwpfhTASy1IHHuvsR6QAdg7zNMTxMcasqAhWWgx7kVIx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXl2O7D7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXl2O7D7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD98EC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787347833;
	bh=e8aGQ4C5l/TziAgUAhgz4vG7jfh5loNF2IHGHHFbNio=;
	h=To:Subject:From:Date:From;
	b=PXl2O7D76oVuNvQ/b4m7a2GgucNp7s3LWURGYci2S1qQ17/s2YyDfGo+KaAupwx1H
	 xtYPo3z/PCGpZ/HFKbBG7HdfH6it+usRYVe/vCqRQMIjHlDjCDhjFSnqpKhHmZCuKA
	 jf1P08Vs+aZvh3YIrQ1tXnoi/fcHAR3kVYmQhqi5Vy6NkZyiygVHVzjrosYJZVbMgd
	 O4duBY0yetUsm/x55q0uESbM+0SJJ1qL/GFdfibLTUqOiGP/kVs8DlyfMYknpi3WPl
	 SMOfmlucmvKLmJhLH1F7NwmMkWi1Un6wki4Hmh2YMxxHcy+zKb5hT5LDCLVSlycTb3
	 HcjUOgO/7oWAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3C0C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734783369.855.738880082855073490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508af49218eb71b9587c0e67dbaad3e192ec314b2ab6d1a3db4042705f6c24e5
Date: Fri, 21 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787347833
