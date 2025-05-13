Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9F2D529
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747107594; cv=none; b=mZenoTHou4HnNhVJA+McRMpTAtSQ4DCksMoLbJl7Tk09IHpKtzyGOTItVCc5t9LF2iBAlROIyilyTAlibTfjYQYmeH1JLv33+HQEeKXopiPujWYmInSFrCrazBL7ezZrxsu6ue/vokAW0yAqDw9HarugYjNXbHfXw8E8rHMqimY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747107594; c=relaxed/simple;
	bh=ZJXAhOodp3jn1kNxijEb+fewkJb/JrSZOA0UCCWXa7Q=;
	h=To:Subject:From:Message-Id:Date; b=cd07Z/9A/PUsFdaMSra2jLIK3KHeYVv0UrfXflGflOK4LROnR88OskD+OdiZvMviF7bsNiUAmGxwb0nScEvXMg5o7c2feN+XxnpNmlNoA9G3ec/pDBSdPmIt0TtzEXCEx/zmXx6GI4eUQ4LhXfSoeKiHmudJlUH9PNH0gPnFrTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBqi1A08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBqi1A08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69F9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747107593;
	bh=ZJXAhOodp3jn1kNxijEb+fewkJb/JrSZOA0UCCWXa7Q=;
	h=To:Subject:From:Date:From;
	b=oBqi1A08JOzUl6gbRXUzZIp2DwxUkim9YDke2TRU+fOuLCr08ANU0Y4Uny3VZUgdx
	 8JfzSU9pkwMQQ4d0NLL+98sCx4GPwF4tO8W/AriSBwTt3RidiO/vBjY/295EC5gohT
	 soLzy3CxoXYm1BZhhTf+J+P8vXKb2hP+uw/w9waGMEXKjxMhbn2Zu4aU+TNIdEH0/z
	 QHIeJC3wAoMNMc/ahdPW5DRwBcTtIyCjWH2rw+O92hf5bkjPAqLs+vRGFsEmH9GPj3
	 bZlNA5WJdDTwbi0++o6WqKoNSAYw3uQkTcyp4ZG7LKVb4/6K6QHCuvqecFPQuJOdFh
	 SVNUV15sQ6Rbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A08C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710759357.22546.106961640094682753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e640a09afb44d26c47d8f117258c366a6e0782a495e7be01a6d39685b784e9
Date: Tue, 13 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747107593
