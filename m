Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5494D2EACEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790661634; cv=none; b=AdW5G5zey5p5tYN1DDVt3wauHSaA8Ey36T9jqlU8T3JkOfnvtwkMZBFKecHYzbC2CoCbiHk98fqkkIcA0Tbk/kOqYj7fDMQYCXGwy2uwuBsE8VYoqcexe4FiyzNfKYf6KzfeqbVn8YAG70tMo3fTI0WVGwCtrwKuDVzl+CweEa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790661634; c=relaxed/simple;
	bh=d++hZ7ej8uu5LqTn80i6wJ72abIl55/JQh/CRkJPT7s=;
	h=To:Subject:From:Message-Id:Date; b=HFj2jKmI1JxAvq7s3x8Aoq2gvB/kQrJ7QAofnsCNpklcZNxwL12tLh90NtoR7RB03T3fUZI80IJp3FDlGspLL2FFM9HtZu5j5daQidI69+XNu4d/14MyLTh0ZI7b38qbuwsArkqpQX+jnYQHr8gXBuFDj/oSH+ucwR//Vo35Kb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpGaA/dY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpGaA/dY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66F5C4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790661633;
	bh=d++hZ7ej8uu5LqTn80i6wJ72abIl55/JQh/CRkJPT7s=;
	h=To:Subject:From:Date:From;
	b=KpGaA/dYglrnBS6dAm8CYGpylELhqzRBe3v83AmCI+0iaVVFSVj5QbOfaMw9kRzRi
	 aC/XGBMLGO0yv5DMUaQ6oNn/dTriONmjiSzDyX4MNXMhg/lXSHdtZ8LTqa3u4vKztY
	 t+4L7/ofvT/WmnIVdZQB9AjAmQA8FdiOJPHUCN9905vNCzY8YebBkE3fEC1p933zEz
	 8o3tcb5GucepO5vx+lkgTLDJykaaxUKJZ9lY5Qi1MJNGdhprmifBK05mCNW77a3GTi
	 dPI/ypVW1gFlVe3XtlMx7AJZGx1mYHEBLOgABbp7HWCvXxJdVcgSk7lrtVFpujw8TU
	 TMVQZ/7vlfXpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C0CC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066163372.9408.4271086507717986149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc14d1ab67477d384e0911f896f67dfa46d8211e338e5a2233a6bb5d29336c9a
Date: Tue, 29 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790661633
