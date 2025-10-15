Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF25319619
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760522994; cv=none; b=KChpRF6tSghQJo9xqAl0j/0gXk2AOnedOuqWGNNtZqoZH2/v+48YWHzKdUBsJQyRV21ECvIa6CoklnpSd24WiXrrQpj65qxxd8UEFIAvTSS/dUJu9FY1vpeFX+FLkIcg/WSAhb+fLuMSzz0q1QyqrL+yNfSLIoRKMZfNxHpzSQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760522994; c=relaxed/simple;
	bh=Gns5DnZULmpOzzInoTnDOk3lBFJSMW0i1Vnet3Rg6bA=;
	h=To:Subject:From:Message-Id:Date; b=YLyIIYrD35E7KGof/YneOQcO+fQxfc1lxtQo8lxAE6L4JP4zYyFNoV9X9lletvkWxSX75mHvkNwBMRhEevMib5xaPIe6jnNqwIyejr4Z6WQsy1xdVBjCJhKRgyB5hrKLnuBPYmHQpdeHxe8HzBY/u2vOPX7hJYF9FzblRHhdE+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+5Yvi7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+5Yvi7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6F7C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760522993;
	bh=Gns5DnZULmpOzzInoTnDOk3lBFJSMW0i1Vnet3Rg6bA=;
	h=To:Subject:From:Date:From;
	b=m+5Yvi7MaWGFr5V9JroSD11Cx82QWtrH7WwwUS61ZJCM6KICogfV9l9XHXtihy2RM
	 iEgKu8YWg00lEjzFJCZLrG27DgWaPbejpBi/gu6+oP3XCYQR/LIBHJwYODwxle+VJi
	 P8D2W7pf8EDcHfNyB4fSwqYopl+P8OSwpIlKDO9KhDzBEdKOU563HPyhXugqFX7J3+
	 NiJpMYi/KTdKgV9BBhpEoGu8dSQm58R76h1Q4fbk4X4NK2lH8J8kvmJighjJ0fviAc
	 hjBLRPL7eDmsvsSpk5ajgt4GWfhhqfpz5sIlprC/VQVgiKmi7twKbT4TYYKIAx9GTB
	 L9sutUZ1Tyikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73ECCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052299357.1625.10599739538837196658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90af35f3b1295ae8af8042d3c5663c0d1b3baa5f82ca204987fbb666baa63ba
Date: Wed, 15 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760522993
