Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EA32A1CF
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740187734; cv=none; b=ZB42mP+YNCfQMux1DBLSSYVPcoe7BktRWIU+3BMnuZXOd0yzrUCWBMwlU8M9/fChxK7yXedI86siMtjRZ7MQ0/vkz5SQ4v6l83SG+vVjKeodBgmlf6KDy54C6TbUb3DdNxydqsFPj3w8y4U1JmvAnzcBnOa8EGJJeZKB/rxP5c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740187734; c=relaxed/simple;
	bh=BajHfoE7kTfLHCl6P1/1gYF5W00dkUkfSPflQ0km4kE=;
	h=To:Subject:From:Message-Id:Date; b=MqRaT/q42R9TEYttKgsPUcH9gQYJgCDVej8KgavjWKUpdasPKykWxyvQWMSKOGA2qF8WSdRIGBJIPymePdiDspOuiL1xTOI6mM2XlYn+cXgP53ABdnLuXixvWu3t4MfjRGoRgOz8IJINJ1tbSQpugZPL7p0VbJNjLONOkSEiDqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHvDFdjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHvDFdjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D02C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740187733;
	bh=BajHfoE7kTfLHCl6P1/1gYF5W00dkUkfSPflQ0km4kE=;
	h=To:Subject:From:Date:From;
	b=iHvDFdjxSW515ly+e7XkgSilrtqZKZqEppByj6BVL3n6fOf8du2f3WVEGgOeHNt3C
	 Sm0JwIvjadfbDn+gdCX/IkAGGVwoJIb9L6V335U9/J3NxyBGEM+DDSdx6q/vSJOWEw
	 2Dao2G5NSRElRg4RA6bHWq7e/Sh+nldx4REGUbprUwSd2x9vQTFMNLxT4Bkdk00JK6
	 LbxOSFxJwerBkURF6yV9h1+GT1p5iFmWlRh3Fb4SAqqHVcEIpzGiNQOa7cqZldx2Lk
	 AMJLKwV6JHn7DBHcxbcOGFSjJqlF5nUdhwUFAfGcG1Pb8G46AEcbMcjL0rDGeRMj+b
	 d1MqHb7PnxT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C50C021B3
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174018773358.8465.1028504523765004041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccef5bca9e963176853a5b49c105daafd260d49c39aa4a12849f7cba64a0a8c2
Date: Sat, 22 Feb 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740187733
