Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B2719CC2A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736977554; cv=none; b=OwBrKMiB7dqZooM5adfZwjFxkUDbXWXjj2YipUXr618bNUderkcOPKizbviIts/XuJweMsqPP/Ljwqgnsd6O0U3hnB16wzBK9eCax0YhZ6j07l8o7vW69eBxa0eMCAjSkcUs48TsBnYogVf6+leDAbgh6S3fOdilXfMIvjreezM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736977554; c=relaxed/simple;
	bh=rHUfD7HdjxcdoCws6BQUMNoEvDj1uCmXV03puCgoIU8=;
	h=To:Subject:From:Message-Id:Date; b=ZA7Rucx1cdYHcAgK/0yU38ZueAV/W2/kh7eTzpZTjcC6ipjcIrfGfwjQEj7ngipAHh4Hz/U58S8nMafMQe2qLDDOm95iC2THdXQoZt5x3fa64rwTDhRcHIV+Uj0PvxQFzTYlo9sOY8mw3DSHtTO/IkWWly5Pmxjjvq0BxW6nF8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jee84LL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jee84LL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC62CC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736977553;
	bh=rHUfD7HdjxcdoCws6BQUMNoEvDj1uCmXV03puCgoIU8=;
	h=To:Subject:From:Date:From;
	b=jee84LL+L9Auwz8sRHP/PFQ0gyv9KS7ur270UyFSyCJa5d7ws5yKgWlzI2kKnGRY4
	 rHsO+jE7mvEqO+nsEKyS8ieiTR7U8obS92KgQlczV+RmSAoQJLaxlpOkVSmA1VyJW1
	 xcaMPg84f5HadfWNYugsqtiqjGiCgpu9j4ivwHro5xkq0++wI0YnfV2eL+hoGNtUlB
	 ozsemZzYBqf0vr+EjzX1rHzGG8JtZlRg51/X/3V1R+VcXAbVJ+HcPKyBXOnwc7W+GQ
	 isxYJDf/PurOR0JHij9ANkkdbh0G0d5wbk0vbddOWItxgjqkc2dD/g32Pxhl0Sisu2
	 4n4IMZM2Debkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8E2C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697755360.16553.18377594793173097984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a805a4dda8e5aa7ab0847c428191306264d01851c556e4fe05decb8cb00f03
Date: Wed, 15 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736977553
