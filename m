Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB6C15B568
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713970883; cv=none; b=mufrmlDcc5+hX6/Z+jdTfOPzk9Vp7pibCAZqJJ6mByilrAnsT4s+OBDOgmJG03C+wsckK65B/c19ETCS5s7BoXeYjEMXeg8hz5YBiVX0z90eMoS5qv36WMyaf2nhfhh/TPtLgy36FKj/1oHbv5EQKlJY/qe2jSIiTgM3YdjYipY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713970883; c=relaxed/simple;
	bh=mrFXd2OiTV1yjFo+z7d7YyX+a8Sdt9NzUrAFZMaUccU=;
	h=To:Subject:From:Message-Id:Date; b=ifIS/fEee/Kt0/G1Q2ilpxeyCn3gtxKgpTTpdwcwXL1Oj6uZI8GjON2eebpwkMp3/SjJIu+sgMVme36sk4iBLfrNjnRa56KmfKNE+S1RVU7xVlnVHjXa86Zo6dGusStZp4D1Ib7eqTWWiHcwXlK/8dYUvY+fWSVBgj4f+1cnPEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWf8buaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWf8buaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3ACEC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713970882;
	bh=mrFXd2OiTV1yjFo+z7d7YyX+a8Sdt9NzUrAFZMaUccU=;
	h=To:Subject:From:Date:From;
	b=TWf8buaPNJvNb4g3oRml6clak95DePhbhmQq+GiHb9FwtWExmI2LjLHxpZo5p3/Uf
	 IqUEQR5jMui5ImKsxSps2+f2uf6E8JMCPgTYAY7iGqs0oCDoEXd+3DVRvJt8jAlODe
	 0YwyixsbPrSFJowJpXmQx47WbjuccbetBz7wDRGhEEPWoHhIA6vlp5NHISWcFSeOqz
	 w0zN5XqUNJ75XzDuFHO90DLsIOpLZjFB4PcKya42+1L8+sYmO3k8x5ziFbQ+ggsuck
	 nM5154suGgKT0EMSnLp1d+a+mAIj44liNWleTE0dIjLDEA5zFfwqu6JT76IpsG0WOH
	 hm1wodjjhERtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF37DC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397088283.8551.16142073726950765828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32aebb75529f0a9fd4430dbcac3cfda408a0c3ad8ab87b8961fb43ac88a690ac
Date: Wed, 24 Apr 2024 15:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713970882
