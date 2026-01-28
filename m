Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D4029994B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769568834; cv=none; b=tqmz90oedjnIF2TgpECZYcAO2EpFyYCWHt44lARTeF2/G/NBVGx9u4UsED/acUYQRJGWgSSJuKMc/v/tnpUt5LOfTBU6NSKKwgmlOxhgbpE5nx1P6E63B+FbE5mSKFjDil6i/xGz+QxtfgjQ68vOgBXaOvf2YyZ6Y+ileCHxsE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769568834; c=relaxed/simple;
	bh=lemTDh0BZHfpVj7C4utIrbFPzzLP6HLC+i14sx09iR8=;
	h=To:Subject:From:Message-Id:Date; b=dK1+mDvFIuwFbIRwjWYJvH6z+6s209nvW6hfsOAKu2Oze9Yi6r3qBooa7S1ozqpf+2x4i9llxOe+95hSROdvYPJxh7AVVJ6dZiuXwi+k60qyrH99VBMm+n+GGOiLq++JiObkY0dF1H1LRSEUSy9pzQ1J/y7wFnHJrNEqpljhTTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz/DApLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz/DApLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3090C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769568833;
	bh=lemTDh0BZHfpVj7C4utIrbFPzzLP6HLC+i14sx09iR8=;
	h=To:Subject:From:Date:From;
	b=uz/DApLw/x66F5wIxV32j9sn6YRrFttqy3xN0KsAla+vGojxxo81vSi+WjjuwkP65
	 sTXqbnkcJdOP8KNf+PW6QB/BLYZ0n1IwkvrRGnZdNbPloV1D4mOq0ecsKxYwBEUQox
	 r+pjShbP9hldB/HND8kCFPxEwALptKRVw+GGatA3Y/p6o3jnimaQVyvrEuefmW1eLB
	 PxGMR8QEojEMcZau6I4v6dqgXCwT2u1n28fi6e9DqyKb1QnBqRSWopydK1nzL1hqYP
	 ZtkjgUqP3K20pvzQVugxaCo+1bB01PF017bUl0MycSYGWpfNtaWdvjUPDbfZ7yd1Nn
	 8hsnziRsDcdxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9CBD35666
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956883360.26303.11650598201437792145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c2872902b01c4914bde4a3fa22e2d8a5bac416074d8a4290773cb8457e6a35
Date: Wed, 28 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769568833
