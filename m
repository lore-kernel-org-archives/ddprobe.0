Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBD2198E60
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745683194; cv=none; b=PQbOiWqtotDkopE2olRRDkur/r8g6OINkOnV0jjLD3J4G6IRSuDxBXcef/AO9Wg/NXrra41x2KNE9D0paDajX5rqMWWUiHKmNretq4oeWddls0KrYldCy2oWyC00sj9t+MVDrDEIqqP/v+jmMd3y3/kcw6l3Mbi/MAYyalWOvWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745683194; c=relaxed/simple;
	bh=qH9FwIQZ84/oAFA7ky/7seU9KuzzLyY/vt3qoX8hE1Y=;
	h=To:Subject:From:Message-Id:Date; b=TTeY+K6IJ+LsoeOIPpQ294YujNG0yxdijTr76qxmoBVWgV9kyq8F7wqos4gzhtXDHr7DIOVvn1BikBQOBh3kJzbkjmxBI93OMSL1Iy2hOYqThC9XWJYe8Hxahlt+AsrDUxo72yyptoQTk09uCmIlTLFeuJOz66HWl8WptL1CLnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVMehozm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVMehozm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0736C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745683193;
	bh=qH9FwIQZ84/oAFA7ky/7seU9KuzzLyY/vt3qoX8hE1Y=;
	h=To:Subject:From:Date:From;
	b=HVMehozm5/rnCr94LoFxojeSFJAlj3dHPa3i/QmM32vm5frz8E375spDSTF6Al/H6
	 IjFDHUU/OGTWTTH45ySevrKBY/yggWDjplO3XsMArokM7mbbAQnaLDEafEGW761PQ9
	 btN74KV7CcF/LV892uMkMXe1MVn55+KZy8I/qUZR750d5tkuUwfm8DrUnVc1HDidsh
	 LHqlu5xIxXDOVg3tQlj/+dIYiOtTv4viBUF9PZNe2pvU3Tgx7MdYhyvuc15PGoGX4b
	 R0g7dAHDsGqJijUSNWVJ5ZedarVJqd0MjunsA0fFdsDIKwzzLA6fZH5oyZ8Yr29fzG
	 CKQX3IHdL2/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E3C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568319357.24566.11310621288257532229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7668610e8455b9fdcc8bfe6d2e1206265deeab5c436ee7b02e2fe2aeb047780
Date: Sat, 26 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745683193
