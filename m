Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEFB32ED48
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771641894; cv=none; b=Nn7NzMD3HpsV0nztD8JOTfd5JQW2VujL68BJ/Lqo0vptqrnB2xN1Zqe6/+QuZUFWTUalHgLPZDFomWzAcJaBvFs+9yqlp1LGwu0uG8tqQNmZRToLAeZJaLtxWxSjQM2SJjM8fXJNHvobd3Jw/mkMR7TtutnjUVahDqoM+5OXUBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771641894; c=relaxed/simple;
	bh=g+2aCGuT1IIXGUSksdyHjx2DEID3cnmSLlgxd8HLs0c=;
	h=To:Subject:From:Message-Id:Date; b=QQWgFqD2sv+HwrGJGWMBzSy80usWOYZQqmxQ8n9HrhWqcLGnTf8ag7LjCX9BEydoYD75mLhpJlJJHXWwEgdEPSkZrvyEbII59DI2erSS8ZTjOQpL+/836XeZiZXJk9fU++lh36dsyVswJSt7XVvDyyBg2WquusqActkjoziTyOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEZk8Mzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEZk8Mzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB551C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771641893;
	bh=g+2aCGuT1IIXGUSksdyHjx2DEID3cnmSLlgxd8HLs0c=;
	h=To:Subject:From:Date:From;
	b=oEZk8Mzl35Pe3XdFB8lueEqBLnIYjTeKUTQSCEV08tlA3+d4OgXujy3/yGxEUnVI3
	 25nm4EFVC4ZAT5uYabFw1Yff6H1AhgwghrddKzNltoYZo6FM05uJybjwK23gOYVp8k
	 SWblk+1f10xGLNVWVlQaqTJ6phjFcO96CEhwGr+R9s+wiE5er1wMsg6wHg1NQ22Jr5
	 xYsPN/dL3yCjs9lf+RzcPW6RkoWStgZZn1emun8FRouU+u4OCWKY55PKvtqQ3vUjgz
	 2z85IZakMmjjgOUXPfJdsHLA8RFgO1YF2bMQq6mnjlokHHKfdr8SC/+EtsB3hkqXwX
	 DsCbtZtDEwzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E4BC5DF6C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164189358.30089.15699376111150157405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64856ec86be800c40043217a6e993ef56e9c7263c915aaf4d5df6a30e2af3324
Date: Sat, 21 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771641893
