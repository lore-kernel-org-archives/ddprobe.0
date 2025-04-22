Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67631F09A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745351395; cv=none; b=a4DSu28YgZuC08rTZLZXBNs4neuT/qcwdAm+Z+Ac+6Ge9egpUs5FXqFuOaiDeqcsV5Hdhj5erUVQjHkfP6BS5Ck75DcRqwCVL/Fx465Ey1J/XTO5iwaSGs4HR1gkILgArj22vJOdy1vV27UB3AsrU1HzY4Hs2zoNT4gO8ayNsR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745351395; c=relaxed/simple;
	bh=11PVKMG3GAmdY3LGW1RTvl+aTg4Zz0/T3wJCPQVdCQk=;
	h=To:Subject:From:Message-Id:Date; b=QkYQ9DUVt5OevVPW2/N7lg859yWQgle7XF3mkS/yeT/1hHNAh1GPTeczJQ4/4qp4+u1whYUTV9PxuLW5QqDeDSoZfbMY1YKYySAtxVMt3IZpDQtnvGZjlrnS/vG4VMMXHyyYSBoStoRs6IPzsB8v+2APL/IjvYRPQHlSj++LEXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbqKmgH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbqKmgH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E014BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745351393;
	bh=11PVKMG3GAmdY3LGW1RTvl+aTg4Zz0/T3wJCPQVdCQk=;
	h=To:Subject:From:Date:From;
	b=YbqKmgH788VJTogqyXzilEmwP3ga+X+c4xdI82iMH13437ZXXXik1nvpgd3lGsIFU
	 ffvA90rHSWM45uFDaaQWUM8jElSIRXyO2i6ydQdg3jZV5nGUvxuQ1I8terT9E6NjiM
	 R/QPQmbWa/EWCCz+dpNAnrr75Ux7VdZ4eMSB4rQyUH5fjTF2206nddgvgjX0PZvyvB
	 cXgP9s2TAIWePbTtF2ehLl3FXUpI2PtovzYWbuYxeBa7SOfmja+08oKEoW4h9Wn1ff
	 IMR+vwEEPKkx7HLJz01N57lSBt6w0mUVEBa92ZUyJio9PHW9qIBxr45ZKwdN3vsq54
	 Kb7Q4wmlJYXSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99772C369D1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535139361.25623.2762142869687995497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4428c50be4206fb4600568f5022a1837880dffcb0cc1e41de53342c02f580a
Date: Tue, 22 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745351393
