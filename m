Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7721DE2C6
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742396394; cv=none; b=jw2DA+YqD6wmk+y3wWXHM6X1TB/WQVqeZmxhkKFATXOB2q8y/Hw2rkjJ3NjfCC9B8G4C4OK0fuJ7hlrgbbcF3Ve5G1UEkyBOdZMenL41hb53MTb4RqT2pBZalN/9osdtsar+UJEBsqgOkWIytJxxl9ueDQgXZWkqE5hOEetE8Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742396394; c=relaxed/simple;
	bh=iIdZoUIVryGmzHBnOEw4tfDNaS9M2V9Vff5nm7l2K0k=;
	h=To:Subject:From:Message-Id:Date; b=J7yp7xq2Z5O4c4fkpJuyimpTYWJaDJqMAxZ1HeXyXEmv/+iM7erXnfOOg8ZrokeyF1CWZJJ/82Mi1AUBgcQ5WfjEx6uaebBjxcBgwiozuFmXJ7dfOliaRbuEwE0st+PDhcaXajr/csmKqKgKvpAnzwjb8JvvnniSo7gvWXbYC88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhTQKIRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhTQKIRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE769C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742396393;
	bh=iIdZoUIVryGmzHBnOEw4tfDNaS9M2V9Vff5nm7l2K0k=;
	h=To:Subject:From:Date:From;
	b=UhTQKIRgmzoZqomNFptzcg8VcnbjEephsENv0ETlqbuGKHULIK6oUQT7aXkkYS61v
	 5paAsRu3aFRsjHJpFGnVPoYDyKvxuQJxB04MIhOe8LJ4JqvcmFb9K7WQysQUc7emSI
	 YCEXXWystdZJV1gr3otQHxdCCAEk9a7YTKKWoGBNYjdbbH8tgHlVFlWyJIxDgWlAXI
	 n56aGMlhGfv61rInQjk1oU63ZYrb3Y4zTOA01Urh1cSPapxQwTh3lkETNbgRPEXwAl
	 8J0kFvmd8Zwgr6LwyCjt0AxmR2tEKk/ZWFQ9d8Lfzj4KeziSNogWsXHSoW1IN6GCzh
	 9XxjRYjbnDXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B091FC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239639369.12502.7104162279394604725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317c34144c24d851ed0c961da9bb614d1fcc9a0b3752b87cba6663f3ab131bf5
Date: Wed, 19 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742396393
