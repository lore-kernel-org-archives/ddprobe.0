Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A1C5661
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740909534; cv=none; b=nBXSpFikdsWmdKIs79eAShPFcA+ECbsAjKcSqulIftv5RIpk5WgNpUbUp07WsCJx4oBHFcvQiUvXZ4DWeebj1GREu0kSH2vrS8eMIZTXalVIGrkwAWMYKCmePLQyUv0aHmiHGVbOOCoOD0BmmIJ4My/4FHcrp/9Jf4mJr1d2Kl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740909534; c=relaxed/simple;
	bh=4Gl6ABdsO1LUT4xCbCyzAA3o3+k6Vmt62V13pdKH7QY=;
	h=To:Subject:From:Message-Id:Date; b=Pa62oz94Vuy/9k0mV5BQXkOe48fPqXAe7YOEX3uiZfzq43FJGim7e2XQZBQE67knz6CXe+/3Gkp5j5yQ8hAi0wWZeBS0vtS2ho+tZIEQt7i0L2IWAQsqf8ChFAoh1bigatNqAYJnxbo1xGYlUpSOgvWqEMB6GkE47gWcgKckPMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5+cTpeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5+cTpeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DD1C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740909533;
	bh=4Gl6ABdsO1LUT4xCbCyzAA3o3+k6Vmt62V13pdKH7QY=;
	h=To:Subject:From:Date:From;
	b=C5+cTpeKJVB9xs713e4AH5IFKsFqRi3GlE5F008pMkXcfLJXXuqSTk7tMOZTtnUNx
	 WyaVnP0WQtvGmK6kwZuwORg/x3gtW/vicepg95u/M3lBWXNvgCcv2jP/o/f9vBZdl5
	 uP6H2YGHwVtFLDyW+M6oUdwLQ2ArW8Lw+19SQJ1KN1wVvXTPb3Pg7GaZ8u0B6qa2qa
	 evC45b4vjwErgAROb2w/xnlc5s5E/8BlpTFRCBqIr6DJSrdvII9ZEfP9ba+YO49VWn
	 wOMb5axrJYvu2ImLPO0Wn0UxUAhsIG5L4o5glRKoOATPbl68tFjmHzcZL+4dz9A5G3
	 hx8qTzAIPxWEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A6C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174090953359.20286.15746134492061554741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf55c9d1c251e69eff88f87d2196d7e7f948de1b241bb5bfe510af7a13614db
Date: Sun, 02 Mar 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740909533
