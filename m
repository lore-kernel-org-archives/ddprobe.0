Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513541B0425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737366954; cv=none; b=JR0IhiqNqKpJSl8MmX+18TbomO8SP459jd6UoBu7VXp4tlM+zZPXTz0wBqFQyR4YgYEKiknqia5b5rhZ6KV7fwB+TaPizNCq5fFhaFEM+SlsHTpX2jwLXuZC1PqT55jOVJt5QOiX24K9mbALVBI5fsRt4d5sxnByCVT3kuvFs54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737366954; c=relaxed/simple;
	bh=avl5xljYXJSQPtEM76mncTpXFqyqy3AokST8BRVuwk8=;
	h=To:Subject:From:Message-Id:Date; b=T4wkPUY0i0t5OtR+XsKfzVcbPz/GnoLGXkT0sNcrEK6Ig49AgcCnE1S8+vfZD4eByBgNy1FJ9TaABbGdLPimnwCx0N7J6X7j7RBnlRyuvTIBr9mi5+Uronra+0ak+/pikK/FSMnzE2rTGvOnUsyaE0IBIgtLKtLdZ1DgwPUgo18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVu7awhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVu7awhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FFEC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737366953;
	bh=avl5xljYXJSQPtEM76mncTpXFqyqy3AokST8BRVuwk8=;
	h=To:Subject:From:Date:From;
	b=dVu7awhSUnqu7Pur0BeAZ/rvt5FHKlLjKSkPVRkmrWsTQWeOD5Yb/fBdseJgwiswY
	 /0Y1fBFnqUJ0PgZP8Zz6ilF4Uo3T3RgewbVO+yL0lWfmfNtrMF9WfNYazeFuK7vFKq
	 x2LjbqgMP28NJsPnMoyEt4sWFlcPpSt7Ik+3MF/ymDzWICKbEbVmPYT7+cesdYAzcK
	 KSfHaEW5ylFeBxu/u/53Xo7lp/0ZtqK2hf017tvW0cqrnVjzZRA4pem2q24KFHfc/H
	 aVyWqI9fYtmvZzIYkShp2t8nCwmQOG80blD+V7ZURnVOsAe6IBOfwZj8YRAomMlakn
	 JoJR7l5Zp7EuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98248C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736695361.29226.13204188176275812245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c350815111780500c4d198d374f9cd964393560c5c12ffed088b8ec6635db089
Date: Mon, 20 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737366953
