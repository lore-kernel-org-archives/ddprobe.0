Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2D31EA80
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755377994; cv=none; b=fngZ4UFi5F2lOMd43Q9VQJHvokl8opRzhtt6fhtruxAvYxe86UGyLqLvUBLrfK5AhMO02qrADryn7KDecDTRkL7h3aa8UMc4+/Dp3XHPFQdfOeAPkX5Pl8axBB9ZBdQCayBIM1OtklPLkpZJSZe7ncjsEM722rXxXxDLWZ820Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755377994; c=relaxed/simple;
	bh=iEYsr0DR0CXWVK/zAXmBXihuFIGzjK7kdL47YGJPTj0=;
	h=To:Subject:From:Message-Id:Date; b=PIZhjamE/V9au5u5UgME8Efej9KBkAX5nKzJsFoaUHk6uMaYsjB2NFBWB//Uxj4Umxtmn8TcFdidSPaQhvtMZczZTGTeLxeev/oyDfs5MG/eHG1Ovr/NuKPiucNnFUdZIjbFK05AjHz5QTFtCAzWauqNQo4geHhBiEQA6cJxL14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfPZVuJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfPZVuJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3309C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755377993;
	bh=iEYsr0DR0CXWVK/zAXmBXihuFIGzjK7kdL47YGJPTj0=;
	h=To:Subject:From:Date:From;
	b=QfPZVuJqWxbatTcxLYZP9CXCL7S2qH4VJU0iHTZ0wayzrix4El1D9+eBi6U8Gqywl
	 RDERibz3VkZVfve6y4pmYzvlYSH37alr3HNDEkdS4RKVEyolrfLiZPfDQRJT17V+5Y
	 ujF7kRg7vkoMi5nIaKMHxsYzyDvI8lf1x4czVHCaYDWX/R+ZIW3SCFUCjzSUNrKkw+
	 XiewDbfvDY8t4Ps/Vlm89z3pHN9lEwCCzOsn4hu9EdfDML8Eh5t7/om/9ZUQbiB02q
	 +x66k9/Ntn84C6uYbWc2J4ZDYtwCraC+kusMSNa/4c+Mwwux4TN5ds4oKoeg2L05hW
	 6a0oSnFg88oQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925BCCA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537799357.17546.1106131592998073530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60debe474d8983477f52dc7864c9c24a2b65e0632a90e6497cefb13a40bc521e
Date: Sat, 16 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755377993
