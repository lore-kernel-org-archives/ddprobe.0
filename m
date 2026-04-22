Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2414E241690
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776868654; cv=none; b=lQaKpb1gjZ0x8h/jOZgoEGb0WQ8D660R1iiepieW9djlLP7WNiwVAH1Nb5Qn8McR1kq4Ul4x29RxaqhA+Rud76xcSD7urB89ld0+ilvs7SFQPWYAFFdakX6hW3RdY7Fz481J7bIgDAx2hoAyJY6MBvAKOBpQTZS/DJ9NtnWdBvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776868654; c=relaxed/simple;
	bh=rE1bn265c5R5HMNV/zYDMcZyA8ehC8mPmS746JZG/8s=;
	h=To:Subject:From:Message-Id:Date; b=TIgrLM6mYm7e2ffZnEp/yCbV27tObMZmhuK4e42ssNSiUbLCbN19rhMz3VDa7/eCMpvHamL9PmNqA8dEOdhar31rlgwciOp5d8TDt8vWxXo58cztIW5Z3YUsMTXShvLPuiVAA3SCxYDMDmnQ60tuCWQAy6Xa6u6DtcahJ0UtFfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5Ua0I5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5Ua0I5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB9C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776868653;
	bh=rE1bn265c5R5HMNV/zYDMcZyA8ehC8mPmS746JZG/8s=;
	h=To:Subject:From:Date:From;
	b=h5Ua0I5aOn3lNcygiAw8hQASgPeHXPsQmtXJ8ckZzcsnbz98Ou1rMR50A5xaqMw9J
	 RjPnGYzKV76cKxGHJfUOmSZxW5cgm0ald06+9FrxWQSDj8fuCFxnbzj3yiMs35CJ7a
	 IKy5euHmrJ1DUsLsy2J7UDF9/VaN8IBVXexZTdfPyWsHtvy/SCvHz1el8ffdvDVm2g
	 xWfLLRe84/eDnNgnjx2RjBQWJz5P8sLa1JuOeMobGZUTp1QfVZ2W534gUPV6sZRZjH
	 JYcpxXG/HyYPfpGg4KjDhEwRUEDxoM0sx8SGN6ShQtv+kAYcXaVX44VmRRGrnR0jxd
	 oL+/N/6aPWVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B10F9EDE8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686865368.19361.18123690889051465580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5918203e0d85b1d2236c2f019eed59ab1eba753a4ff5370307110e42a593fc
Date: Wed, 22 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776868653
