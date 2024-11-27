Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF18E200BB4
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732724154; cv=none; b=dzUzz3cs0fg8nKD4op5iCSFb8usKPBIWIOp4FvwZMw21XcVEhi0qoLbbmmXZW6jIQuiQa3wNVEL8WSwvaojTY6ng8xAN0V3btB42q5CZMpBQhM0DDU7/G0RWvvM8d/GAuqmw0VHufwhdZ9rlt6olnMklW2pY9g0KERzIQaa1QHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732724154; c=relaxed/simple;
	bh=//TeDX2pRHhztLZQGKbEnEegOv2dTSNyQ6ULwzYcxBk=;
	h=To:Subject:From:Message-Id:Date; b=WF5pOwKl8p/Vtf6MaUKlSnJhW8FGZpYPJEokKFiWGBebxyduYNwIlXIqHygazRbU1BINtI10hlaFXp4Mkrpr1ctDXGbIINq6OI235D46f1pXegDuYPlg6Z5UxQcxe+2rnkaugOJxDb2TVKv7AQ+F43aOP50ipK6UQINssJapy9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfGTb4y7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfGTb4y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DCEC4CED4
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732724153;
	bh=//TeDX2pRHhztLZQGKbEnEegOv2dTSNyQ6ULwzYcxBk=;
	h=To:Subject:From:Date:From;
	b=IfGTb4y728jPZ14jAsSo6gFbg8nCWBz07s559c/lzeNx2ck0QP1weK4Nw8asIW3T6
	 6wap7R1jpglTExMV4T7byK9VYh9zpxWLHX2D9xho0bSyVVkS6PBqnyzaiAy8pWfTIa
	 eWuo040pBPleLRNerqxF0/YJ2YimyoEirsqau8ROrdM9Lk9dhCJlqECI+nVa7JpBAA
	 1A9++HZDBzyB1yXutY8E+vPYOH7jjN9g0i8Hq38XPO3VecbEpPvnyYBv6kibT0fshF
	 rZhu767jC/yB6OZ44KOuPeysMd2Es76dcS3ifeF0dFZk+07tW7d4X9CZytc3jX0GzZ
	 1tpPYjNBMDH3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC4FD6ACF2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272415370.7713.859979056978012900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ced6bc9ed7e2c076036189103bc72ce43cb642fedd1cb2bc7849535f522d8d
Date: Wed, 27 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732724153
