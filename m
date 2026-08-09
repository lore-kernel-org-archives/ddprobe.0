Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596B322126C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786274434; cv=none; b=LuMX+ftIEcXW2vAC/asfIIKZPjXi5epAi9VsY0ekuAHCA6GlpE0e1yplHwk3LPTIY9sdPIEB/ZELHGrlByOh8NPAlu5BrpX0K/VjsQofQdW8Iu0ushvqI3ba+Wy5l9CZ17AWcQHTi8agMY8PKdRFV6WQOjERMVBfRg70Pza4r70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786274434; c=relaxed/simple;
	bh=jqX4RqCwMOwXknFgiAABDISHgFMhJbb7//HsV11CT1g=;
	h=To:Subject:From:Message-Id:Date; b=iL9tugikslymIWsjq0QJUWa8mgVuAps/IxukOLYIehgejD45ePRGpsb1TFfJWZlEaBQg4JLkDxmjVZVv9XQmRawYJ/ZEawbS6N7QEnuVGMog1OgBqyXTt1hW2VS8CX7lwCz/EJqDCxGy5FXGjKZiISPhSViWbETQQEgplZX3WUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkYOO/UU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkYOO/UU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DB8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786274433;
	bh=jqX4RqCwMOwXknFgiAABDISHgFMhJbb7//HsV11CT1g=;
	h=To:Subject:From:Date:From;
	b=mkYOO/UUUgravwdSDEBxGHa5rTjUiHqCC5mSWnsgvS43h6VLzJLlsNxJasxfBsCzC
	 6k31X/e53ZWBx85sH42tM7q1b3GWGnIDcptmVTc/iQ0ybdx7RHuGOBLXya+8wNIgIm
	 XyvpZmhORETkj+HcPuCC5yMhQI2w/9BFJVsukB1EnfbyDfeftM4QZKkpb7Z5rNzzci
	 ZvgJZvr1atrcoj+AbNM4968Jfi2nK+8exwTFAoKni6tfD3ke0lvPOVlKOrw+pk4+zX
	 yniYbK3LOvp2SsNSNIh/QyIwv5ch5JjBYO8PYFwPhNNUDEcyXmkv3iEiXswyVB2sya
	 zDV4DHL4czVNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1984C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627443370.26908.2981490734145886421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab73ed2b095d8792eaa0949d619a41ce8bd0ccea5a015c7d32583fae4bd812f
Date: Sun, 09 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786274433
