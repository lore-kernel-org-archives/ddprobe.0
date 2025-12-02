Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1142882B7
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764675174; cv=none; b=UPgBDVW963+8LTO+LeYBP49GrboQEZeS4amq1SvWoIHTbo5hNgU00eNevN8xM/KQ1GR2vkBIiR/OlHtkK/0NnUHMuxe6N/BVkHb781yFJVbqefyooHPLnACLs7o2zCcwo2gdcvLh3pUM65FcNm+AAsXvdk28p3vEJUqmpy7h+R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764675174; c=relaxed/simple;
	bh=QrfZg764ymtgsBLcyzBI0+fxxjGkndBjwQqAEk1afb8=;
	h=To:Subject:From:Message-Id:Date; b=InleHOGBvx/rwQ20snt8gRRjkxzeHQvrjfPgXkQSjnOs43VC0qu7a2SdAx58or33lDOc0pkJQ2QBXecHE8/CvoyJxuBz5Ek5KKA9gUFNwp8FCjS0sAwLGlvHLK73UH8wPCNjaZGs2Ols1OdXknPanVnN1C34nj/0M4ECh+e1K58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpYWq98B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpYWq98B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A313C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764675173;
	bh=QrfZg764ymtgsBLcyzBI0+fxxjGkndBjwQqAEk1afb8=;
	h=To:Subject:From:Date:From;
	b=LpYWq98B+3kK7YaFiF2hNmYOrBZP2gHOb9sw2s80HcLMIIzp6UBXGSNfLTs+u/MJO
	 4SSYxQ4PKeNp9CuTmsSnxN+yL/pnmSj28K4XbxcLMVvPVcRmI8Jk0LoH7kmNabKZhz
	 f+hHHnElHghVOMyRPkpwSmYonl7p0TxgyyJ0+u68eYmVK5qrPSc1hb8V95o9ZLNONW
	 cKtKCmZBppggwHJTQux5lRklfKVlp0Ep5KiJdlH7VjpmOMg4emRG7LJzX6AultLOWQ
	 btIbrDzKmo4gIEN8lukbxi3z1ZA+4sPtSNWVjl9pbv1+EaRi25BED9WQN8ZDN58nFF
	 n7awrEViPxw/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD5CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467517358.16883.14592311504092627586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0d4bc8a1e73f26f9dca9f2e1811b7bb083a46100ce7e65b876cb86ac9ab388
Date: Tue, 02 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764675173
