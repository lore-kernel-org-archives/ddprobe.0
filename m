Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2F81B86E0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722060354; cv=none; b=PPOdrTrsi1d/T/pg7cuqtAAmDF/maHKhfOk1ZbeviNwOcUqEWsZPUdkBTKwQjmbB8vI4TZ2Ltcj+lqTOuTlQg6ZAa14OgjgRi1M/npEA2/g9ZLEzLZ4SxcsWW/dFA5oK8JvYNXyQAP5OxyMdPJcbsFpLsE6FY//pvlv5J2mEtVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722060354; c=relaxed/simple;
	bh=9PJoqwA9Mc2nRh6B8XwUC0YGFdqycqUNSWrphYhSvTk=;
	h=To:Subject:From:Message-Id:Date; b=oSBrWRlABXWygYk5yQvASUTlQU2D407f2qEk9pAg1+A+zP/ncNigbvSgOCWjVeVJVYJrsI2bg5bUDakuU9Xm077XcaGN59303PtagcZT4oNGn1F1pYnSvyDytRvYCvNQPQZvGECs/gb/fWygihBZQhrdI6pKbE3/9OhebW7oCwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/l5ocik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/l5ocik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB915C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722060353;
	bh=9PJoqwA9Mc2nRh6B8XwUC0YGFdqycqUNSWrphYhSvTk=;
	h=To:Subject:From:Date:From;
	b=G/l5ocikrwqKvMXhsfUky0HagUG0jrbU3gHYmQHtnYXQQimUQ5PZswd7b9sAr7/2Z
	 a3Ugm/l1qb5jF5eq0SHsVdrZHxFjg5+w4zlyQiyN5eTYOMBZky2mmSps6NEELChqxi
	 XQ86o/+e3wrknWSVLB1XF4PzSP5QDkvoSVP7GPes4fMSfCYo3dJh4aDQoOkoc3eLXy
	 DfbTdK9xHfMGlPMngqrBZr1E1MRlp/2YUgyIjuRLvtQTQVpr67jwP4jo1UlRlloHYB
	 4PLuqDFFXZqV0ZwNf+jv5Wer0ffG5a7yIET7V6JqNNutwPxR+/9WbxvGbtGGiaT64Y
	 n52GbI7WyAGHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9556BC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206035358.12185.9224556271064638196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03de0c475ce51b59a5df1d44757ae8d28aa6bb6f8178692f5471ae1c65a9f5d
Date: Sat, 27 Jul 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722060353
