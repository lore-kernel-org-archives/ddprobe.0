Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BA42D839C
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766090034; cv=none; b=pMBp8xJ0VW3TT26XCDmWzFfCUGlPOjfzUQVlAACTZS1k2lg46H3h+L1Of2kVteslcdwpeoL+MK+NCg++Znh5d93oFqyC6iPois11IZizIc5TDR9HjZzX9cX3rRuBcHhLnm8BuegmSbIoO2ZA71+p3/qaIaIUuHxA57tsqG+SdKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766090034; c=relaxed/simple;
	bh=IUcjFUSXTiUE4qbbMldNh4aS8Y+0orveOiADzBQC1SI=;
	h=To:Subject:From:Message-Id:Date; b=jBi6uNrbfT5+GHLe04dEhyIEhB7STb76tpGZJCYfnGlkrOS7tpjqPmgLyd/3+3prMTYxRFt9PyKtXfIx8JtiHpjxH46u0njuCw//WVTqPoZ4xeFyLu/LGtzBZwHXXKbLuzS7/Eoz7JLBY2WKlaxzM1LyNww3HBtMOC0StdNiUn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEdAZ9Us; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEdAZ9Us"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABFDC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766090033;
	bh=IUcjFUSXTiUE4qbbMldNh4aS8Y+0orveOiADzBQC1SI=;
	h=To:Subject:From:Date:From;
	b=rEdAZ9UsrZN0YVvJ/9VLswzSF/h1pEG+4HpRzkftuVnrJlY+BCzfc+4t1x/FCNwHG
	 9amG+R9ZZJoWw2a7n6baPzxqgCNdNgBSdbNaG99d0bNWNaqAkIdDv3wZCmdq+osZG2
	 ikVn3BPXFk7VXoTFXOLbQMRXTgodvI3G/mdhZJDelWrJkIZtmVsYAvwdqJjzUEFIyY
	 zNOwZ4YHg6muM7pJLON/2FCq10q9vJd/a+ITA4c0q+Un4j/JN2C4Xd1l4Vf9KXEBeC
	 JtX04mUMpVzYgcuLmG4QjulhAGNtu2vg2ynHWTryZ3N2oWgrZbvZ3hFzyS4FMESu+D
	 cqPneZJBc7ctA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97826D70DF2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609003361.14613.9448858359531660057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216daf5ae819aff2c31895f2ae1cb539d1a57545e7feb4872ee8f8151167cb0d
Date: Thu, 18 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766090033
