Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A631E9906
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753301993; cv=none; b=oejkgfe0h4MrRu7pBCNGlOTVZkqGdacbpxunVmGum/7hEXoJvUvdb9ltWObIf2EtY3Icj/seyc+Y6Up+l/3IiuiXT3UPT3VDRfScx918KWaedyxyDUSu7CGHnoaBETjgbKy5HF8XXsuifacs4Vxr9csUuEUKIu6tZ7z4c2WwQLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753301993; c=relaxed/simple;
	bh=2CO8/G/dYR4YYb3tLwxz/yt9crOc4m/ea0Rtn23tyT8=;
	h=To:Subject:From:Message-Id:Date; b=PbQdm2WJsx9u4c++dDMhWqm51omAqwgf89vsjACtcpX5myi1DDKov4rSqnHcc6TqZlFkp4gD8AKKB78YHYl+nvrVVCU8GirBb4d8ggAuFzbxjYJCEEIJ/qUg1NlZZy4+MQw9FJw+AETUg9U8n2jBp3MiHnCnXpoZxXmtidaqxao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAgFv8Ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAgFv8Ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753301993;
	bh=2CO8/G/dYR4YYb3tLwxz/yt9crOc4m/ea0Rtn23tyT8=;
	h=To:Subject:From:Date:From;
	b=rAgFv8EkwDeIV9Yohhvqe8W2K6eUNR7iqCVuCQeQnD2ZlCvLMnc2Is1rqG1hk0bWv
	 pfPzjp09+rraiPQ/oSgWtbtZUvU9MPk/I5ZckPYZDh9CDC9NuYfonsWl+YSv2SsF5q
	 MiUAJiWwscun+mpDAfhhFa9DLh1AiHIkKa1wILjyOAgf014UW+rvXg3VPe0FAHdUJm
	 woKGDL07GFsmauGuw/Q7xmjpQdGhZrkqgYkFRHdjZ2aPElDS8mX3oIOUWQjpZRXXcf
	 uTmLhgLGdg2AGj10OtZ4bsnOsx4a4OwnUbncfFnKD9orVGx7xfKfxZquVsPXrCN/CL
	 wzY77t+tc09DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90DC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330199357.31517.17436904230346632354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9398c9d5845ce0818dbc30ac9f74153877cdb5206f359c3fdbb3030566a69705
Date: Wed, 23 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753301993
