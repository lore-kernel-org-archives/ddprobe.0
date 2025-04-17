Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383512512C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744900794; cv=none; b=ozavupUDjpH/PMEOG7UN8+EHpZD+ObDh9nX+ptOL4mTJMe2QtOevR5jboyvt2LmruVUDuc6ZQkk56UG2zLLOBAiF/Xz7FLh/13JIByjDMC34HVeqGKaV29jegTi2nxi6Fulm7HUTzmrW/liCxL9CkuWeH7jwpdDAmJnNsJNqg5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744900794; c=relaxed/simple;
	bh=DCg3Zg1OX1/Mo+5CCJtjXwjzNNHhk9fBeoBZpoN0Cjc=;
	h=To:Subject:From:Message-Id:Date; b=rPVY7C36QjvCgkkylSi6TgF4WuZYmlwk8AvGevRo4WiQ818QCzeQUqh6kuwPj9M3A8DTcM95R+oHfrZS33MU094vAFAX5sjHIY3nsie20zoZciGNGGJMikU172KWhz1ptGnTBcbnAw+cao52Ch5l8rYkRBD2+fRgadCOC5JbXfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BudfRMtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BudfRMtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A589CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744900793;
	bh=DCg3Zg1OX1/Mo+5CCJtjXwjzNNHhk9fBeoBZpoN0Cjc=;
	h=To:Subject:From:Date:From;
	b=BudfRMtC2WFF2Avmff5e0MELRtBinjjiW2DDqqKs9DvbPjHArTQPs0AHrVAYI8+vk
	 b58WB5SZ/ixIDk5uA2cyBG42wHWPvZX0KsYWhs34k2qhfCPinDi8NB/dd+hubtmVr0
	 Am5RZfbE/hky8fXaRZNWLt3Cf9zUMEp/0zM+u23++IKwovzKeS8KFAl0a2x9tGR/Kc
	 +OKsDSSirA/Ij6VWYrrGZjktZcqj1QAMmd+8YFotmHi4gCJxe2VC2kZ5pasZQ+E65R
	 TT5Q9VgN8HmnM97puw8iQ3/f/DKC7RyFWgJzGui3iY1zelyQuo67D8ErbXjJ3IF2Wr
	 qpNgX37N02EoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948ADC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490079359.31497.2104034737604878899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f2c59e36d59b959c6ac38218e6c929008298d205a3b590101281082db2abc4
Date: Thu, 17 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744900793
