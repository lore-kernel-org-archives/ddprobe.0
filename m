Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7F4566D
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709528897; cv=none; b=q5mMIEeh/WISCRNVdWsSlNcEw8y+IaLvmHH3Mf+avB56YLehRLyTlPDyXz/659BqkAd+tS124hh0FjRBlMsOiTuygIPIYrbq3MDYP+KblaDo4teJImyKd3V3pur27pDMt1GPPqR0Q/Se4mTl3LbLoJ1PuIUMMmMsjHfOE/ktDqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709528897; c=relaxed/simple;
	bh=CSlc+hNMRAmlQq9vbVz98/n7nH0vuVoFF267fXH4hq4=;
	h=To:Subject:From:Message-Id:Date; b=FPfM/BbpSp7oQfQxuQPL6rXxvnkGvQHaz8vGbcxEEA7A3hkX3Ap3sPn5Z3NXfrT1okHpRtP3Ddrg4KiN/HzmVAivFsbJ6Ox/I+mZxlIliDuZ3aTCyiypouO7sW4nyh4O62DgG9Iw2i772uSJ6vU/YMNsdcr27raubROh5PY6K3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L//BWoTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L//BWoTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB8DC433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709528896;
	bh=CSlc+hNMRAmlQq9vbVz98/n7nH0vuVoFF267fXH4hq4=;
	h=To:Subject:From:Date:From;
	b=L//BWoTnHnkOXKRi5k50BNj6E0O+isD/fAwLgV4NYLJ5DqeXh7UeDbxQZq71KvkEa
	 w40qt8D9DS/UPr+ZB1ocPGjcxgEIBToDsWZmcatqG7D1XPzlGs37Xi20Zrbg95HaYy
	 LVF/JpDkPj63BCcRm+YvANjKoXWgCniGd4gBGWCLyK0nYAgcmUeju/dQ8g1uxyNSqz
	 jV/iD+5LgPh6xaeOqN1ci5Kdda6SNV17bcOAlnmzyZ5WfbJMZadHYJn6yiYkL/H5Ey
	 2W2WZsisKVaqMByF8fmQPg05zmCtucal7SRRB13OHIdJs0zSzrS/lR9WUbm4It6rVt
	 eq837ycNL9rhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DE4C54E49
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170952889639.578.11126556778056850950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c94ebad75f586af099790e6b75e05f72e2a0c35f16dc2d21703b29d231c80d
Date: Mon, 04 Mar 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709528896
