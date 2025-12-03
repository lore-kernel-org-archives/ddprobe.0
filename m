Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9A515A86D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764736374; cv=none; b=hqCSd7I6UGi5IL0eEYHiAWypN3MCE4BAUM90d8kMtwxnEaJkw3UduD7gb/dUjL0DQx3AAsAlPwJSzYNRqMsWTWsTfAcZv/bBwIllI7Cp+pUUwEBPQH5VU0GlRjBOVzgdPxMqZUF7883+hW49I3gVjQr7MKH6tEOvFigpairPPjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764736374; c=relaxed/simple;
	bh=ahHDbe71Ab+bnK+tFoR8klntDZQqYQ2OTq+1v4bLue8=;
	h=To:Subject:From:Message-Id:Date; b=jp4vnqiAJOCFy1Lg7xjWwsrDiGFFYFngB0HoHF7rpBbbj/h/BdmisrO3RJMj+62paYM7yUQ/yTp8+iH+nkuQMo3mzRbq+Kotu4YumwjG+2ZSuBzdqDQrsuhsXOGq6ZQtCCBmVaMtB4u7FBvovvw9EPMnhU2vrjj+I6WlzQmn9Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al+oD9Rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al+oD9Rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE88DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764736373;
	bh=ahHDbe71Ab+bnK+tFoR8klntDZQqYQ2OTq+1v4bLue8=;
	h=To:Subject:From:Date:From;
	b=al+oD9RkbtjrIyfdBIVsp7UeqtV2zaOFBQ9AoXx/VG3CT8W9YALqXlz3VNS3Aycub
	 zRYIZBshgvStqAYcaK8eE09LgIseG4PS2nOnxhnJS6ifrIdsIMDs4XibO/XkgbgIKN
	 +v+mdpur437m1xbu4JMOiRcUdld9tpSU2+t4rklGz5/XRpcSjDduZVGwrEhBFkobno
	 WBpAbFNlVYGLvP8dIP1elIUlth1G0FXRH4Rt0CfqzgdSNDnhFCP1NF28WadfymvlDc
	 ODltt+cniy7fgTU05ktuzVOil+7zsxJEAHkqEckrq0Y1e2/3WTm/mwURi4Dh3HeE+v
	 PaqUxqLea321Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E20D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473637359.11162.18136225539696522269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2603952d8c38f4fcb4a4e7ec2fc80b2b28eabac1f88d67efc1b4dd64c1e9d73b
Date: Wed, 03 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764736373
