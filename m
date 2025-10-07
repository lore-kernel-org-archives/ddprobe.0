Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DEC82866
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759801794; cv=none; b=kXjUzRVmtgiHxwJTf4DwJKOaAGPTBfSTu3unNhyi5Pm/c7L+9zmMCu7LybcEqVBERGvJPIsgh2wCKTW2zeCCuccWAduZ+swQgEeIPAl5nJGhdust3JcLNa7ong72NXeqptuQ2lnmsRVYGdzsS//fcSGy4qanZ0JY4Awd25qdiuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759801794; c=relaxed/simple;
	bh=s2ygP/TriBDl0ehjx5mXGDe14P9DvDLksu9bU5DFvQg=;
	h=To:Subject:From:Message-Id:Date; b=cMZLg9OQLdexljugBa2wtdET10u+esj0eou+iCK0/T/+NOL3Bcw9N0vIXkz415xaDDu68VrI00y6Z9ZKldMWppamWWaexLsx7jgCE0Y508YaZu/A/LAFFhm5H9TB/VGI/mhvS+WdjphgE6RsIgrEoRQiDkHwW7YlXpUXozmSJBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RU2c2yPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RU2c2yPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A602AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759801793;
	bh=s2ygP/TriBDl0ehjx5mXGDe14P9DvDLksu9bU5DFvQg=;
	h=To:Subject:From:Date:From;
	b=RU2c2yPde4OfOKjthDB63JyqD0eaep9v2AmKW1VZ2GN/fCN0DviRQNjzdaY1MaKix
	 pAvBMsBW2V7kRZuYYV5Q9x2jndvvBmdvVtuyth08rXOkkejiyxPySYtJUstBcx4Pmd
	 EMIIpX5EXvjK/N53Jt50jMC21j4rXROYsrtfbDBbgPndIplKy+lRWqbo/cAVCUS2vs
	 CXBPX6bYvOYfWLwDdauT/TXGHXSAMlxF1nxXouRsQtoylmLZTMr6WayJiOx+gJt0s2
	 ULiWpbDXJ6aWCSluOLVvE1Rsva1Jnnx8BL22tSslXAjG8fbp1z4gx00git8IqPZ7pK
	 kiTphN35ukxsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C7FCAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980179357.530.18215441470708964534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4d1127ab64756908b092920bbd0f7e9e9c10ae63836737d7fbddcfe7544477
Date: Tue, 07 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759801793
