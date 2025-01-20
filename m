Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAA918E743
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737401154; cv=none; b=C6XvoQ/PKE/rlVwDWyA5ulLWBD/jaFLmnwdajCk/wwogORRpbkBi29MxL5GKAfqPSHaS/XlXtRKr01lAq+HFPC6hyLrdys8bqBq7Bl7b6TnxhxWET4kxBOAwykgmuP7bw5r0oOEyeSAUvp7mfix5b0basVvdH4MTapjy0We/Dtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737401154; c=relaxed/simple;
	bh=ruQY9VfWHe83GTdq16R5YwHjvcIIkZ2ktLuz/t5idAo=;
	h=To:Subject:From:Message-Id:Date; b=ombLy3DarO+GN8NZqUqaeeOsYUyL9Z3TnM1qRLCo12IwVHBd/+MX/Y1o1y/dzr9WRk8zgI1uUv+OGH+89kjxT5Pv71O0YOYQA+q37HEf8+qJ7L9eVaVC1u/dsNdEP+uH2Yhd7DtCALe6XQcOzuxcjQuGIjT35IDDY0n2LduB/Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9QjxAxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9QjxAxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E8C4CEE0
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737401153;
	bh=ruQY9VfWHe83GTdq16R5YwHjvcIIkZ2ktLuz/t5idAo=;
	h=To:Subject:From:Date:From;
	b=U9QjxAxVzYK5lrDDkFiHnoRnS0V9+lu2lqsuTIhOAb+W1LuKhhxpDrlYPovqcBqfZ
	 ILzdV8skqtrx2Io60f+u12B5stT8BE0N4XMhm845hmZ0/s8I66G0RQaY/zuz0+9/fB
	 WyeaxS0b1M3HiDGbwRnAx9R/TO7KcOrJMFnfhsb9t3lfb2y54tx3l+sZX+BsJPGuy/
	 WIfXvbTagc3FBX26d8fyJnX/TvzYTmgWyQNjNV/c4nNZLCmJZBZVZaBwh8hbFB2pXb
	 dOemNseALpmztmuBJThpDFf/TXPK+ceXOlvKdP/egnQO7SBIkZfY0t41c+CRoC+YyV
	 EBZagtudM6LVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D2C02182
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740115358.26522.17385441463238091405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a3c673c1b1d9ac51656031c1d8a753ad84f2478b23e55d7b9fcde24c176dab
Date: Mon, 20 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737401153
