Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BC5216E2C
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739788134; cv=none; b=swewEf4DBJa1LIUq44RmiCA8b5aWrz5JEDEQeX1oTfFXpszOOE+lZGXKKHUmHJJdGkLLP5VWSVpEBx3cPHxMR5WBmNtn9YipiswZSCJCA4Y+V48UtpFQQ89AxyR/9xESr/ILrISqrTd1xp1zhyNKStwXVn63Ms2uxfPUwVHApRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739788134; c=relaxed/simple;
	bh=PU1wZBnI0pSldBOUf+YgGLP1WB+itCImf9R+xHENF6E=;
	h=To:Subject:From:Message-Id:Date; b=P1NvGXf+AnyW4yR7mb5Nbyoe1n+HdDoQVWeotKFjBVLWejt5nANDeafY9wcZuYfUeFqLyQ9cy+MDwwRmW79YBkYOPFP2675CJaUaoMNzu0n23Tkv1NY3ziu236j81sW5zksagthr6+umosqYkW6x+IIujBS5ZhH/59YOKNYev0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6LOkmXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6LOkmXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC71C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739788133;
	bh=PU1wZBnI0pSldBOUf+YgGLP1WB+itCImf9R+xHENF6E=;
	h=To:Subject:From:Date:From;
	b=L6LOkmXV/ArL0RSdHA6X2LegpiOX5zRizdvQk6lw539CdqF5zqR5YOjPtt3VmM4qu
	 hCcOy2cl0onmMvAADWQVJSSxTpCOBQDO95oniBTiDEnZh9b+XylyVJTDlVe+j6g0YG
	 P5vCIuFYTr9B+t0ha6gqfUGnrqcWomOyWOvxHoaTR0kepXE4/77jN+jnT6b/CbKXgE
	 yQS1w+58WCTF55gOJy/YGiawBEcDY8hiqzzMipRZY7BJKGF2tb3KrQ7f7158QQlpy0
	 umLFnpZIiCa0YrW172l4AJwblqnnds5GOHX+KSdmh9/WitNCfG+ixmYMO6yxXXw+ON
	 2spRzOVHeE1gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D1C0219E
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173978813359.5934.16849664905179508540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3583b5754d85283f59402b169c6c439fee1262b66c8d585e3fd8cf73ee8bacaf
Date: Mon, 17 Feb 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739788133
