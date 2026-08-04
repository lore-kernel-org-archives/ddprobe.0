Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6553769F0
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785835835; cv=none; b=oFRre9ADCug3PElxLBJs49h2xbFoDHKNUxUdNCB87x6pM09LifkY0sJ1b6TTPt1504pbEcW1HdCnhSzMkTlSQ/SLu1cIyjDlXyUOD35Z7eoIuiCD1xnfDYvnzC+TAksnozx+2kfsXFvvKVg3ob/Oal4dVH+Zicsn99XEE60ociM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785835835; c=relaxed/simple;
	bh=s6z4hqufD5BZCJmIGaB8YbkuWWYI0TBkihb4AisFox0=;
	h=To:Subject:From:Message-Id:Date; b=tviGJKXtosd6l9p0i6wkmEDilvPBBqDc6gkoXcIFTGKUM3Hbta5j3Xgi5Og1kp+BCIkhry9p/OPjAPyShUQzIOpUiy5OR6Yjy5STxH2tZzp1/6YCcKjchaM8FEbd7Dz2OfZbuydau4wUFUR1MbH0Fo02QoiWR7QA5z6p40EHGLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ2kBWlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ2kBWlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F66C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785835833;
	bh=s6z4hqufD5BZCJmIGaB8YbkuWWYI0TBkihb4AisFox0=;
	h=To:Subject:From:Date:From;
	b=lZ2kBWlbxh2t6DVz1SRN5Pe0pHlf6t5ef3nLhb3giTNyCQZAN9id4vC4FZbL/5uTz
	 Hqh+G674ZwGHwpiISkfIedLO6oCcjiBlM6t28gLb00ljcJnCfHtD/ItUJhEBzQhYMu
	 tVd+X92VhYA0Qp9D7d6YyUufsxWY87mi8ucbZruEhKztI7C6JYrhzSPiXmHTc8Scnv
	 mS2wp0l3QLGpf8yGOCSgqMjt2z9Aqyb0fn+mveIZPlArc9Bc3/8n3qwJL3t21yKzRj
	 k1BvM03GHQDhFr/rVVqM0SkOeWqUCjxyRJfM9phDvCG9lC0xFovH19mVYjk7A0qzKh
	 8TtZXKb6/e7dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB957C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583583375.10357.7528353118923833603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4ad6b8d4a6b1fbb02d6df746f64a21dd5b211b6c0e857cde6b086774392839
Date: Tue, 04 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785835833
