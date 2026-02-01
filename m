Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243D32EA480
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769941434; cv=none; b=Wz1PU9R9ZQXQw/3Aldcp5Zidl3W2zLiD4Xq10j33iuK5AyTw19EP6jPjKBKZ5idyYZ9ql4TqQ3ebryMc2RNCGwAqVf9uVet2rvx5SVod3/HRPzwIfF5kIlT1pQyxQbhAm5EfJCR0O9QurQPxeZ9cJfbVa7mL8IU2Zld40WZumOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769941434; c=relaxed/simple;
	bh=Hdflkzm7s/m+tLsgasS6eLjavX0jD/ZF3W3dHJ1lIkk=;
	h=To:Subject:From:Message-Id:Date; b=P2fYWRs+J1JpKtr/uIzoeq7fqqL5NcGIDwVhmtjEfGHpIzspg5NI5kH9L8BD2HeM4HPQPIigH0ej4bW70C4Onn2eQC9uItBUQzRloNdke+lz9SOh6bxwPm4D242+d6ejYdCZH3rIbVazz2rmj0/qbOXbnTbxXRblLwbyDlHap9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEbcOfrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEbcOfrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46ACC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769941433;
	bh=Hdflkzm7s/m+tLsgasS6eLjavX0jD/ZF3W3dHJ1lIkk=;
	h=To:Subject:From:Date:From;
	b=QEbcOfrzvwvH//SvcsjV9G2h1G859inYO+Ln41xbSlmSaTayDTKIhP2In7mrhfNFz
	 g0XBuJF6A6KuQYPgMhvrttXwpuylRkt4UMidT5Jskw4tTuCtCvAG7xQGFU4VR9SKtj
	 L3pAbxnZG9P2BW+BxoYOmKLrs55U2tqwB6cXQaCjM/iLV77XmyolyEa7jtjaglDGHj
	 WFu0CJSESWFOT5Tgq90tZ+InrZwvRJ0MQ6AjgO0VVWNO8PO5MzHGN5GCTFOm796kfy
	 0sQLSMdEo5pwMQvvB+2I0sJay6pPwLaot5wG8iu77YJdFlVeLaU1M44qsQTNMn6afJ
	 YsHWZSa+kvdxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D9E7C6FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994143357.12484.13557634500475570916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696948a5b6a6c3d6950eae44e8298da551fedb94732aa5897fb4e67af0b43db5
Date: Sun, 01 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769941433
