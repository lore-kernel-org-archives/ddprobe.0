Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB142FB6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738168554; cv=none; b=n/QTn2OCm1tG73GgGvL0ZN/T2smS4FVaEdOPCtDs7ghMp4z3XjuI1CoCO6lY0PWPuGIDEeGd4wFd9jux8RumUlPyyluOoKK9wA0F8hAiKi3+ib8QACrGumXcNb5pGyWW0Qn0dNnv0DAJoMeo5kdIt2+jbLuF11pvyPlgN2Xoblk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738168554; c=relaxed/simple;
	bh=eSrj2O+oC3wjrTBYIInp8p6dW/75x2LkkBKIQsN/UXg=;
	h=To:Subject:From:Message-Id:Date; b=Lfg3rrsB1bcsiXJcFscWXuEPkVvPdMLL4ayIe0yEWvK5Qq0UJQIvtbw/p2KOgajZfCBgjBZ44p8mzHHDIX85sHH842grG/FQ04xJkb0MfQSxdeZKZMipObGyGxCTbvQfRvSt1OVmncyWByuJun3oBL+BTIoAeHs3Wk6NXh6mnHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3Z9nrwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3Z9nrwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C4C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738168553;
	bh=eSrj2O+oC3wjrTBYIInp8p6dW/75x2LkkBKIQsN/UXg=;
	h=To:Subject:From:Date:From;
	b=Q3Z9nrwRwcq6IFo8g/j0bC6q8RpSHGy0kG/wUCuoeHbMMAZL7jKHtUBi+0P5Nbx02
	 4nICxN7XXu9dFRiOq9eWmRBTe3OSHmfKTp6ElzQofLBBJ/7PAE4TZiVxZLFuEU5bb9
	 NS5qMcxkzjr/oyGE+r6aB8pQqT3pUhjMUKpOLIoXH2kaWUlKtwVQL6PE+cR9Coys2F
	 S9xLb4DBCfkgoEA4+QWA+S9uXiVJ+IUk+E3dvodqnV1YRluK5TQOVuIqqyXOK6GpDP
	 J5Iu9ezeW4BrL6tSuw+q4w1JFRXfillO/hC4Ie40vhMejbnEt0V0lAZsvF/W90ec7g
	 If7ecwKzaP6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9639FC02192
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173816855360.29558.8031213292534988322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d9599d332cbdbe49e35e76364d1e3a63a774370a5f92574e7bdefd1c376b5b
Date: Wed, 29 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738168553
