Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B10D33262A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772127294; cv=none; b=N+b+2haoQPQ4a20gzAZzfqld3JIxhdj4Abi4jlLuYmpyfbw5FIgzugN9vlK2FVqtSVHDZaGxO/gwbokv+DnNX/XIY+Obtg9HQYXITrBnc/gzsZM7HzC1fkuFezcoeJK3EpwBnWCcAGQZJfiGtMLlAeaRzhviw8QQHEThChHZrNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772127294; c=relaxed/simple;
	bh=Tq2e0m8ij+9Trpp22uPmOP3HEax3fvewoEOE0XRE+fE=;
	h=To:Subject:From:Message-Id:Date; b=oQmdJCySTTcI+U+1TGrq9d1iVDH3GCcpaNhEk/9cb+ePFooTuNTWMQu6eVVFU9B8aNaCUBiiml/D2SU6WO0jCVJwuwq+NC68anyv3ves3H3u0cXzDbxjy6EPtllQ00Jrp9HV7erezkwtSew1bpcvrSzml1ZY99bNOnTNouNeMH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvgcumWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvgcumWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A474DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772127293;
	bh=Tq2e0m8ij+9Trpp22uPmOP3HEax3fvewoEOE0XRE+fE=;
	h=To:Subject:From:Date:From;
	b=EvgcumWBN2/1YUP2NVESCR33XEYNEdPZeXKQd7Llyb6HJQdcSeF1F/3P0HUpcvTvc
	 2qKk+1gLZ0EwuCP0scoXJJgoZCJEY0PK3oUxPeOcx1u6O7XwbPnEqqAkwzVI7PetTo
	 xr7iLI4cJJ1MHwj/iufCZ3DJ4DqgleS/hJ2wyWFPWXTpaWD7ra+PyFSkhBXG/cl7FB
	 EjJndCWRd+9Q/ECWHBRs5C6z9b+VGnOqzqjEgIe7YlYRMW5rIk732jAQl2wt6mkKxg
	 +FBlOv+tCubhVy6kO6uoOUyJgB+l0nz6JR9UERc6271AocZLym4ZQul3HZQMK18/Fi
	 ZGEkBuLOSuLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA5FD8FDA
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212729359.14597.4219263082974467152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9f4388b79374891b77636ae7d982ec1ba6f7c5662f1162021bd9b05b5bead3
Date: Thu, 26 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772127293
