Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454941FA5
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719019343; cv=none; b=R+o69dFdBUhoXpV2MO2XxSZ0CQr5waEYyneYZfhEdVbw/DsM4O914H1gx+dD2iCOmsV/fEoAqKIjXQ7CYhvLmDJCQiwL+2hNBHwc8HS73rjteOU2EC1EqUcTCiz3hi0kmbob0u8+87iOktgcvi/Q9VtqAEKqlw1LdivvCQDp3uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719019343; c=relaxed/simple;
	bh=Dk8yzxXDjA5ylNy2g6U0OyW6oIVKLNELIprt//FTRb4=;
	h=To:Subject:From:Message-Id:Date; b=V+L5UpowiQAYYW6qampWER/D4FfrEfLBrDcr999WdTS15DCKDaQW4TsSxhT/HMYUNVRt+2mS6/9Lb+uk8fIH8TfVhN4AYyItYq2hC/EOE0beLV/al5mXMgzTI1KsT32nhRLizmhCths5paVgpBnH55SYFEbo7671Y9df+x8Z0t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwUkOLS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwUkOLS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D774DC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719019342;
	bh=Dk8yzxXDjA5ylNy2g6U0OyW6oIVKLNELIprt//FTRb4=;
	h=To:Subject:From:Date:From;
	b=NwUkOLS7zekPnpcROickzeSuLm4Negpd+6m68Oe/zIIigbs6zhQRdZvHwTb5DbD5Z
	 ZuO3uTJDCHqrM27HXwysTsJYzHcVRSv00QqHxk/rkEtJJX+QRYCT8s85sf0WTXG3AB
	 2oOiKU2BdUNwXuhPNQK0cdNySKhGkh67OtbddfO7LSKbVNNTOmZS/sEsgwoqt72fkU
	 WCuVluHYgl5WEUorCkOHzyBuh3uF6By7gUIUaLhaIJsMA2l1eIJiNFOjXrObptJpG6
	 zCT2jZfCU1CfuYYi8X2ZYlh3Enm3zCC0dQL/NWGL54qrZuk0mD2phlxHMvowq708kA
	 S5RyH/tYlZrmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56B8C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901934276.19851.10744619611433913947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15da37b44674252f46376c9215e12634990dfa6afab0c0f55edc58f292b31275
Date: Sat, 22 Jun 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719019342
