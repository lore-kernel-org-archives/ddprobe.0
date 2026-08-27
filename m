Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931593CF660
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787869234; cv=none; b=rbhHhPq5oOLl+9TORKZ/9f5zIdRgfa9XzfVkTgFbrOJKClYiM6WTr+BHXz/7u3cD8QAWws73uWkOvmfuTI/lhJMTMB5tGu/7Pb6ZTBANwRdF2f8LBz5xe3gZ5Y2clGO1q2yIUVvDMAbtUj8azHJEfb8x1et2GB32TnVOlROZdgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787869234; c=relaxed/simple;
	bh=PYV58jpZ+mhCHioUict3XxNQp0XmQ14dJwhCzhnKPJ8=;
	h=To:Subject:From:Message-Id:Date; b=AEYlAjYabyo1YkEhON1N4NXvLog/AVkWIOZG8xbSaQQlWYO4OE3ooCytgTFvH/gwXrx3i2BzueTcyeZ1iz/DQDRr0I+S3bPEl7anfa+awzliDHON9ICJ7Ow7neFtbu5VgJDonKr+5VGGYuwzeANmUA5hY2O3tBCuIdsd3n+wkRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQf0MZBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQf0MZBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DC1C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787869233;
	bh=PYV58jpZ+mhCHioUict3XxNQp0XmQ14dJwhCzhnKPJ8=;
	h=To:Subject:From:Date:From;
	b=HQf0MZBKRG5azG0QVSIuYaiCzR1a2A7lJre5lwY7VIH/wCuV5cZzw/zHqzIMtwKzI
	 nf0nPEslqLO4/U7FhW96OiL652oOcWLpKrSwuUGYVJkOVjSDh8ui4/1rOZxB+jj3BC
	 hRaGAUVPtoqyytdHPl2AzVEdZPp98/2QmIJX6xS5/ehAQAHvJM4lZMEBpP//BFKXek
	 fzJ38kppZLbpzzF00EhEdE5REMI20OtiUh08Z6kmrhPitkM24KkgS8Aw3JQYUbLSnY
	 KxIxqjGyJuIB4B3JzGtWwGYES7OVocZowFXYgQsENqKmivph3ayhWh3WK19eQNLFEN
	 0bKzkZRGoZ+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB519C61DD3
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786923369.18911.959604852909696997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8823fa6a350142a34505f6364c7fe9063f79e9fe269f117c62a82b189cebf902
Date: Thu, 27 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787869233
