Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A253A7
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739718534; cv=none; b=rg8eF9h8JjbS6cHBdeqWy6qRoMrXhF59b5AOy2IZ0fGOuRZYcUUoUYZrUq+Zj8TxopKKC+mrhYmnPA9seg25ZVZIKSCM9E8NRtNmzhA7XxHDEfJ9Ru6nAb/7Xek/G7cfwTpUqxHmJoNf0XaA4ut5Sp73nEqf1++7AWeo62H72Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739718534; c=relaxed/simple;
	bh=7rqVEPGfVumXLAxuCwNX6omAA+ovLotP4u654KCRSIY=;
	h=To:Subject:From:Message-Id:Date; b=nQsobLFcKyMFbo6tsg8PRbHsK9tRM6DPU8ilUJdg67XGJ07X9bT0KfE1EtyB/9lQGsGeRq3looyKGPZ5FZPgrRZ3aVdzFCFCp/gpUZPZWfZXom25YxS4je9o6dRji19D70OejGRiPqAUdX7EXIyrffg4oict4LFpgDsKnSr8v8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKPugkaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKPugkaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A862EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739718533;
	bh=7rqVEPGfVumXLAxuCwNX6omAA+ovLotP4u654KCRSIY=;
	h=To:Subject:From:Date:From;
	b=rKPugkaB+cAQUBYBKjqY+4aeC8JxDqneaXyxEl8I8PfKw4/wknVSN4KYj4/LJMplt
	 TJ0nMcV20G6OV6/rSFua3RrA64DAMf3CYcp5x1dPY+qNN02ewr9RCCEE0yEzPMumTD
	 QGPPg6xC/Udn16amgMkG+5CbupOT7zAidqrITIdQzsR3TsfHhzwbi+ER7Fqrjao1F/
	 5ycNno2/ZdP9YNJXyeKJj5a2grb1+sAJ8z2RrXifaWaNUMU3RCLnwQRm/kHcgVjxaj
	 u02JufwGp7Vv6h+PYJl5ZEdYitvx9YCoAKFzMGxgWW148B0QVnA7WN0sKDkrgjqzCM
	 paVYd4s2afv7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95705C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173971853360.17377.2153364637989677181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568c96172131059177e4b29b04a393e10ad960818a362aaac1d38a74452533de
Date: Sun, 16 Feb 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739718533
