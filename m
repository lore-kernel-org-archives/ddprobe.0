Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F794812
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720410383; cv=none; b=LjyAbKYcVfS/hb+a2Jgs2oq0ea82GP6qiSd31qdRbkHcBnWIa7R+tcOrKddaecRbYDe2UQ4Q7lDNO0p87AZh3+PAZooHqNXBcqKet+dggjJdOLhlar5Ute04Nl1pozOprXhzKk3cPWAh+7/Rt8Zdv6wZ8YAL/HqLlOepmXgq538=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720410383; c=relaxed/simple;
	bh=vtPXMuJrNxCpG1F0KornPhcfiYu+rSkiTQd3fmgCY08=;
	h=To:Subject:From:Message-Id:Date; b=PcLgfvGE69+ch186CM/HF7VHuvGcUfwGj9Obc0gnSs0Yw/0Mgt0MDBaLVhhVo4UydC4O5ZfrtmhM/0pxI4fMfZqROSId9HeHTf6aQzAuYcYxCnwkBQzxoBKCbZ1otBLiw4tWN6A7PxijQG61908TQ1jqN9ySKgPGhLuKrLEHQ2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZsJp0ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZsJp0ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE913C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720410382;
	bh=vtPXMuJrNxCpG1F0KornPhcfiYu+rSkiTQd3fmgCY08=;
	h=To:Subject:From:Date:From;
	b=aZsJp0ihJj7mjcWE+ekT4xdNfihPO7ivJnwZ/kBpjVNA8V6CLiph2PMYwcgX654Eg
	 sGNM12hzjvNtjEQ67oZjz9eeU+LUJHZmHGNw6dBKN+bz++GWQUWBy/vOqyD5SZAcCf
	 Ebac39ErA2l02QCpVkfoT32ikP4m7aS3AiE34hnudk2OtWy4ymiZrLItC1l+voH3DQ
	 NFpnmHYKv0quhFM4yD006EQxoJronle1DYel3AiZuuIDFOqC/J0IjFRO1STxzneZ+V
	 GdZEm+TuwskgdkN6n0RAux6KHwUR68z6gKHyGUSM1mqgvRUdAIHBgbNQ6lngOdyBjg
	 XY0EvCz/0b9Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CC3C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041038278.21390.10483599446080461022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98eb2d08cf5bc642f2f75333b8f9e4c3b274087e71aece8642974b4032e84113
Date: Mon, 08 Jul 2024 03:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720410382
