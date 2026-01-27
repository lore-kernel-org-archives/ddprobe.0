Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100C132BF43
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769496834; cv=none; b=gp+VtwhWLV/WYVlqbSVcwFjJDmw/jJkxiHkpZC5gb5H4bPi6enFjA2jVrACQt3ytvTfVBoia/+EGqVgU0EPDiY2xl/6EIvZ2ZEi75iQfyzt4wXMVSZJK4aLiFpT0F3Y9e2ixiJhHsPc+wPv2lfDCX7INjkMBy3Cbi+lUVwv9oKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769496834; c=relaxed/simple;
	bh=Yl3FtktrBG2aix+kTi9hn/LWCT5IgJNvRF9peC0mvPc=;
	h=To:Subject:From:Message-Id:Date; b=VKm1hVgTkMKGsD0jyRkKz2ZMRAwiJiQ25x/bpAbglcIpoaQjK4S+r2nKMZVdIGeYVERL6H1VInzHGvdDTE/RNMU5RYq2rg+o70KhN9ITDFMy7UDzHI7J5ovmjAHiqpPq3COmtt6lTZE+RJWH466i/fsBfrD8QsC4uWvep33VGrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KB887ut2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KB887ut2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A219DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769496833;
	bh=Yl3FtktrBG2aix+kTi9hn/LWCT5IgJNvRF9peC0mvPc=;
	h=To:Subject:From:Date:From;
	b=KB887ut2CIa8Q8nPy1AP5o48/Jlddw3N2SpL/nggE0kbvJD8PYTvJP3HnDAs7MCFU
	 jvV+2d9S5TWiBavcFiBe2q4f0c7U7Kkke9x20jxjkCl882wMWXUM/kbSmliYQLTruC
	 69FU7orMAeOq+rGF0O8zcQKRWuS1JlSfZdk2NVOOIOhBvKQjZYpLeVtRmMfmC2Y+sr
	 PSID5K+eLPbAM7tDt8PK2zyf+AB4RWzq8B/lLGdW+bXsNKvjiGlmQPHfbSy5LZMSLM
	 V3mnycoEerzCYOme0FTJnTS92VbK9xOoae0cy/ac41/mdhe4C7lxGQN9Svn5YaS5Gw
	 sbtxMpvnFxcmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91438D25944
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949683358.11898.17367194145637898912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d4c44b849f564d2bcbd9392d9a71561c9a7efcd38cbd2685fad2ab01908319
Date: Tue, 27 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769496833
