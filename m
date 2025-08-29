Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2755E101DE
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756484994; cv=none; b=NKWaTiz26GryzLqxEmzN0xidw4S4TDDl32Nz/n6NIF5CzuAIJ3WBaFIGMxvouFZ1Xccz8Ikx2l5RIGA3emmdprZm6jDLGbIW8320u6WSD6zObParyL6GNNrJbKUFh2VPlcDnIz2BazfN9LtiP+dWhjzeu4WBM6HZ+5C0SASfsiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756484994; c=relaxed/simple;
	bh=XahblIxlCxQCSbZl6PkhiPEvcsiBRXUhB0D4tFw7Tis=;
	h=To:Subject:From:Message-Id:Date; b=elPKwW6p2ou+tXsQkuY1GzsienY9EkeqPjhRK/Gs5U+sX5aL4owTNYGL+NuSG2uICtqkdJVu8mtZfEVvQtF0uM1ZK7cXogI8ZmI5p7GrSiU7QBIRqmVMKEvIs5Y1fedQIgKnliirm8V15l2DX7V/eouNyu6/7EKPjH+K/U+9xcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONFRuBD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONFRuBD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CF2C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756484993;
	bh=XahblIxlCxQCSbZl6PkhiPEvcsiBRXUhB0D4tFw7Tis=;
	h=To:Subject:From:Date:From;
	b=ONFRuBD2vf52ABJjiM5brZCB3rkgx7UQ+wHh7XwnPCA4T5R7cbqqxNn+wLItO14L/
	 JGhqC7kPUB7N2iV2d5MQCvZd+Fo5uiUKdan+vztG++Fl17WNMsdrM5pUUEYUqCV6QE
	 78nTgNDWt/iGIyOvnXBZ2yeZhD8NiaCjQcroBHsJ0eQ9VyLnFwB/TrUhaBK7f0FVhx
	 bBxEUIEzyTNeh+cbpdmv/mldvSqdFHEhFBDMTp3OynNuKOVABqgcO/fDBXplu7LLGT
	 //zQp6V2ZEBpjzmMSjHRFJZ0KJdEd0hFJREucEKjOaNZ629iZyXEk/mGFcLlF+xHVF
	 9tgfSCreGLbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6DCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648499358.917.7333599420545530803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54507e533d815c6701e41fe83b0004169abaccc7f5c5843518d1d4993225b8fb
Date: Fri, 29 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756484993
