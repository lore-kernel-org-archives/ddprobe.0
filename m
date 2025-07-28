Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218451E5B60
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753724394; cv=none; b=OPjq7IQobZD+TNGs55MoMUM/a54o3pZYemDSshwdN4FXvNsD1zv+EmLtJtYVPJ10M+85fexGALXPhRgiRvl4SbTqKLfzrqrPfzPvL1RPNiIu79DcrQaGYlGyZhvxzwJ8wQg6685Qcj2nQzbpCbHgKp22HE9qdlfS5yK+rsMsP+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753724394; c=relaxed/simple;
	bh=gr7k263RHicct2FxQq8rqYRXWgIGzhWEw9A1atiHPTU=;
	h=To:Subject:From:Message-Id:Date; b=eDkab97O2mFESeV3dhB+Rr6yPrehQW5gv12N4nTGuKZwhR20RELfdqpr6QyZeBLbvElaHDkoacN9Pl6mPDf2F1bY1VwdriUDHgn8/sPnb8R4JhcSQ05PJlS2tp/LpgqRmJkKoTG9DyRJlVO/6VmSQ7Lz39A1cd3Xex2xCyw7L7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISuK9tQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISuK9tQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3003C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753724393;
	bh=gr7k263RHicct2FxQq8rqYRXWgIGzhWEw9A1atiHPTU=;
	h=To:Subject:From:Date:From;
	b=ISuK9tQOgK/6f/qvI85InOlzZyHE4iJSRGKQT3sJHvK3CJo+w/SiejGsi3IWVEfnN
	 CeskM8P9Kzmk8BW8lCMFq8uL8+rL98AUFyn6kI3JdYGqbdXQ1ItIGDOqMNxGoHkL20
	 v9IUw1TPNo4ho0qWviexoySt7tm8ATLo3g0IaPUIpD0riL9OfbH5fXhK0hkg4eaBa3
	 G8SHZPzZQYy0WYWlp5rh9bKds8Js+eFpAgRivAQZYL+PWbyaZkm47hbByNJy4VcyWt
	 QMoCoZncDKV3SP7XJIQbGuLS+EV6xGyhP0Wj5Jen3jDhZOIEZz+fSlv7J/2XxzlUg5
	 X/ATAMLhUf8IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91207C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372439358.3166.12244178524181144507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7980723298b9e552969c98cd6bcdc5c85843a73e0811b93344c9e05c9d644488
Date: Mon, 28 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753724393
