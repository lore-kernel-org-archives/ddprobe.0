Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369FB35AC0E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791288634; cv=none; b=qV/pveSYwxNp761nr1LH5G9Oljam1AbHmTQmzdi4kKS0mm2kJVg5GQKUyLCk8xW9Ldo4ukIe8dFoWBsgVhU9CR01lUqk7oECt/iOtWDyMjGjlWcJA+KJQOMKbaYwWOyyZ9iQXNqCX53FpNQrGEQy3cd5Uf6msnJ+63Ds5KBE1rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791288634; c=relaxed/simple;
	bh=YyTcVYL7Yuh76Qkz0elUlxuLpZb+wYqHsxSRir+LTr0=;
	h=To:Subject:From:Message-Id:Date; b=f3xODOUsVB7WDGYRDIY7oqnnYBFFEQjxS1C7Ldt4v2j1XJc3Y7qNoEPNY9oanPspIuVInYQDVHOp86knE8vfqeVLMqTC0Cf6/tg2l/Q5Nwk2NsJ/eSQtwFT/WbZbdh+g8/KLWEELooBqklKxpRMt8h6jJds9V5FiLaovFR5qwnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1Ixcmv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1Ixcmv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E40C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791288633;
	bh=YyTcVYL7Yuh76Qkz0elUlxuLpZb+wYqHsxSRir+LTr0=;
	h=To:Subject:From:Date:From;
	b=C1Ixcmv3P+qoGxwInupZGaQY81XZwse+SLfNB2/bWQp0aUMiK/kEEPVfhLPRdxE7q
	 h+XutDWi9q0CzJg43+7tOMPk5FyHQYXqaoSJiBXcJytxqK3kATVRRMLYy2/2axBdil
	 6O0M3oSoWwz2t/cODJeDvenjfLNzxHVFkVhpHS/ZlpRWctU/00SKyPw9F33NhctZ36
	 7TPT2lyG/K/PaF0oZJ8ZOsImwXgClVjcQsu7wmqGjyraqDIMYd842Ri1Gxa/PIbTfx
	 w+apemK//cYf1gsV5qYENU4VJYfqQ85kMDVliGspsr8CzmdLC0GfRX4rjVimXNJiM2
	 PVNIbKxjboGOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA766CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128863368.28563.6860730620232937663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b33a4970b382acfb2a468b2208da94448b06221ba77bbec20c81a476648160d
Date: Tue, 06 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791288633
