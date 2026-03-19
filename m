Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26A32989B5
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773964494; cv=none; b=VNXOOvim1ltVMlDHwzK+Tb+nQMHVm0upHOsZaEDoqx4MliqNNHWTpj6jsYojofVnEguNMAujH9WJnTRoPC3nRTTOXCsGdSOLhbMzWTlEwWXdqZeoGuHJrqLde5ppHfmg+KAGCq08ZYsLOt6d4yUhEGk+hP2hilJaWxhnwIAar3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773964494; c=relaxed/simple;
	bh=/AVikKAyejFQSyhYNI876udiExu3q0CmWfqJ3nLKZBY=;
	h=To:Subject:From:Message-Id:Date; b=lHHuqcYpY78p/tPK0NsIYUSCWMGJOurqPmAZOP3AY9cSoGiLOqAgcsVjNfM8KCZFo6Z2layBTu/6WHwQppC4wIvsRr7g13Z8vQfu8KBr5l3Zhu8OZLP0Qppp2pG63YKkt5CNTJeMEOhn0drvIboXdIiZY6rdU0xFjOpnOmnlpQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3L9zfib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3L9zfib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD8EC2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773964493;
	bh=/AVikKAyejFQSyhYNI876udiExu3q0CmWfqJ3nLKZBY=;
	h=To:Subject:From:Date:From;
	b=S3L9zfibK1gN42ObXQlbBijlnSSU0+NRu0+mnU1JdBqBjCQEygyjjpvYYZ7ixeZhX
	 hUgl9svZU0eMHEBKVfGSUamajK0EOyLTqB9pWItnha9pUIbvbDA/gKSMVFPbYCGnaW
	 vy0ZBYY1Eh5H8VA1ZuaxIVSONWCM1xZVHBPidhAxNMMr9AS4lYZbzEgHyAvxw8f/Pj
	 zbKgc8nimS2+qd9tHxlwnwRUApX5zrg4aCP0DGmCFdcj112L7h4Q3jjgiAUZtNfvkH
	 /bY9VSib4QYor+VHKd7TIi7KbUNqHlhrpuE+5ykiLIIz4XDuXvwQ0RNTtF7GsJZLzy
	 TIGgGIi8Fk3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FC1091933
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396449357.24785.12757430639320296464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3711f40984f962e296eeadceea2c7d94cf733b9b99cb726cab8822a858e374c1
Date: Thu, 19 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773964493
