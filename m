Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAE118EAB
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736994354; cv=none; b=sZanC83xHHrGUwjeHhtXsq5bSxqdHIwMwcHZSY/uX1ksV/hD+m6N+iRIgcZ6MX7AEvWwnECmb/gKe63oBhXF90kHamQcM9Zwo/W5vIalOqnkhfvGjuZZNRyYlW99n6BCLSpjbW9L+dUQhII6IsQpXNqkLC6a43tO6kCF5MEGEX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736994354; c=relaxed/simple;
	bh=+HX8upSLxhqPWkXtzVe+FIuf8uW+uOezl12NGa9bZ68=;
	h=To:Subject:From:Message-Id:Date; b=Q7COvOgdlOJ5mTLE8m8Qz4/45qcjuuSC/tNXg0NZXkLv9XtTjFf174QwFXMxIRkFrnEbQOb5b2TTz8DekL4AG/gu7O5OhYAK+LssD6sOt1ODSHfK+OUSJcCZ1Xgy10I3DjujdhuUNDd6Adcx9HJj0Mno2vs0XF5gLHR905OiKxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqLvAfd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqLvAfd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C19C4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736994353;
	bh=+HX8upSLxhqPWkXtzVe+FIuf8uW+uOezl12NGa9bZ68=;
	h=To:Subject:From:Date:From;
	b=ZqLvAfd5uQtxhSQ2SBBoYDzPk+jMd1/zgLxMj5NtKt9dsO7kg8XeWgku8bv1DqeoM
	 +L3/a0I8AM4Gw1xKeDngmxBz16qgxa0H6VysqKGSfBCsgbKqVXkGwHzDJordwOucwB
	 v4GaNTOgd5I6dT76T/bxSSUyH9wQNzCohpMkYCQnZMnjaTMdS6eGRM/F5xewyzAJDD
	 NU0Oafd/NCvvhIVh/fGZ/ftthJA1kGaU3sIehco1Qmc21NwD8GhZrw/gn+sBHMg3sw
	 C49IMsqx3jDmuViFMxMtXaSK2tDryEcEM4+lZn6m+pFJtoLuSlguzFrQPZuNxeAn5T
	 xImMJHOHrPWiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C0C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699435358.24819.17614375425268262472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78d8eeb107c390ec5cd2b539579da42acda69b614b44d6466c5adcf88f2ebb6
Date: Thu, 16 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736994353
