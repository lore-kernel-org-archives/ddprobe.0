Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3016317A30A
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748721594; cv=none; b=geWL/QoRqXwyUqg5K9744jxhGadp8oVcwvQyFqZvFHtA+Edd8AH3jIUcQYM4NlOgZrZ6WowdkZVL2dhUWKksBNwmrW4XzpXGBDLLLnDwBValI65l94pagbYjdV3P7o1L35pn6SDaFkyd/Cy3XwkYuTByTZL16cAtPtzrMJ8tAI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748721594; c=relaxed/simple;
	bh=lUZMF/gkjDAvh3sVfHJy5xfKneU+/hn/4luVWwJXF9Y=;
	h=To:Subject:From:Message-Id:Date; b=awf4GmVxZKFHwWxvu5FTMq6sI9WpIvkMcNsxLsCCv7B2IZs9bUEHiPmTBRiq8ziJ1osrpuTCthQZ6ueNcE3nf+mh9hEaY8YKO6L3p+szzcO6Sl4dWjUQF5CcWnZT5AL4SfTLD0YbfMATwng7ElWFXFlY+q8t1VNAfIqZmnZ0+Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I11JKA1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I11JKA1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748721593;
	bh=lUZMF/gkjDAvh3sVfHJy5xfKneU+/hn/4luVWwJXF9Y=;
	h=To:Subject:From:Date:From;
	b=I11JKA1O0XRoWDqyrihYyq7bXIuHgpHSKeAY/+G6x4mKSrteFDcso7dAdxVemWdw0
	 O9LpM1UX48D7ZJtKNaAQs6iUxf72ZdBgH1jcltWzm5FI0fgcq2pVYiVs6L2Huj3wkf
	 xOF8euMpXkRO/0FzDt34KcyZyNY9cDmzhO0giH6XvvmFzCyRVh8Asj/CiWPfc3QPd+
	 dB6E002sIfoXXnWTulC8JsrmdYLn0IB1cUmKFi/KVoKx0cR8VeUH44qP3cDPJ13DyA
	 9GVNZ9kRQSu9WQKd4UTFJCyt3HyB2JsJq5ZECfUOTATrLznBIBrTOP5P/lzsFfZSey
	 XjoCPnjAWmEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ACC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872159357.27128.3241895933700889989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fd4b3602c2ecac89e2b1f3a6d67410b4721b0fe300b32b5d385a980d3f3adb
Date: Sat, 31 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748721593
