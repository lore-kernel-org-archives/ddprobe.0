Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26BEBE65
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751590795; cv=none; b=in0XN+tJF4jdZpvvXPWSwn6LVUacdcdTQTa7gS57GUj2WOB9u2T5JSvZ07FWyRDDCI8deGpU1Opn8fQzj8vQ1Y0vufNi3goPOs/aFc4+FsF06UleL7WrBPg4qgNdiOtvhv5DosCQCtaWXgS8RxKUGKERxN3MIss2CqAbZI3LkPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751590795; c=relaxed/simple;
	bh=lj14Wn+w2WSWixcyHAsS9Qdon7LqRTteqO5xpSJtiUM=;
	h=To:Subject:From:Message-Id:Date; b=T+8qx01FSIfS8m2i7UiqvUrXeywClFmrwWLO8FOAIqwsiZfa6uiHFPLgtQ2SAp0iUnPKhGz3CRX8XSrI/4oPad2O4YJh9XXSQIqbUmF6iEte9orEu1uaB9oG0sh7b01R+FqmK46Ut0cXuWojtgl6xN4QVrg1QZfwDfwJw+ulKXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioS/5Etu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioS/5Etu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E625C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751590793;
	bh=lj14Wn+w2WSWixcyHAsS9Qdon7LqRTteqO5xpSJtiUM=;
	h=To:Subject:From:Date:From;
	b=ioS/5EtuvU71BuXRZoJNvv8CC+NpQYov5mDUDbnXLneerYsVJ9jIbYiGyaDAaphdb
	 kroVdxtY3GvGloajY+Fm50I1EngUkfd96syN39WsR1gK6o9biZijWQEViniIlt2Ugh
	 91P1hj8/vuIz0Bs4z5MXGYswLhzEVpJGnvKa4UnZ7Xk7UxPtb3JyV2By3dp9WZhTHh
	 T6ZBCVKUcXkWshQ7YmHeGlFEPGOQXzMQbjWLMQwjHkhod9SfQxCCCjLiZ5rXO9wgb0
	 rp3TVxHSiJNlR4YhpbRzTZzwZThDX1eZ3YzeyagovPYUy/FJx22AnsinLtnr65Tby0
	 O0nMZI61/24jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D8C83F04
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159079357.14115.13087155565991794334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9423bd03c7ea43ece5923f09eb30c1d189a7f91c1dc6f80ecab100842263792f
Date: Fri, 04 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751590793
