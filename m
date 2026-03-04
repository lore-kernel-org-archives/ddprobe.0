Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F1B375F97
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772648094; cv=none; b=t9TZFueS1CEx3ZEcHYDtGgAu4G3Y/VTj4kvvfgpNjGWgCqODzsNvX/J+efAOC1ml6XhKVJLi6BepzMxpQcL6zspfD5c4ihL+FQ2MZmc0e85pjvsjNArHZ2GrJeZqApZTg+TTSuTv3+tCLHnmuhPygNWqiKxUG5k99hZ4BclmHtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772648094; c=relaxed/simple;
	bh=N8jONY+vC8ePMOsb8jqo2yNGVHJu0dXjP4sofmukrNs=;
	h=To:Subject:From:Message-Id:Date; b=lO5qwdrzrIs/MjLLfnMImuuRygWWMq5k2i//+/GfFx9DUlt0YXbTPhOV20+0/8zSRx8RaBxOOMwqk1OqrcICO71hMkzZjwSUuigvx4xMKvrRkOHmMdNvfinCMgiqIGnUWzchb4Md2SqzgvwBMYvb+WECptOVBhjx9xq3qBIrUm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHWa2C0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHWa2C0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99B5EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772648093;
	bh=N8jONY+vC8ePMOsb8jqo2yNGVHJu0dXjP4sofmukrNs=;
	h=To:Subject:From:Date:From;
	b=nHWa2C0IGFf8i81+4ywMJMg5L6N8VlfrU6V0ZJTSeYFzIgegz43BZXfZLVfCUBD0E
	 2BmutWgH9hyqNsXf3FMyLZq578J8yd5UsssLrMG7Y5iE+FYFpksRuKZL/yC0N9BH5j
	 pBA46EkpEDhEVTeWjQJUDJepfR3I1ARd3gVWlTeKnDbSYKb9BXzHBTVqVIgJoWc0Lz
	 bCmPSwYpF14nFQmOb2Y9ed2WmGqsu20DFQnY7UyrEYGfPsBV/xCYK94Sq2gNrfF8jR
	 um7tSkikJ8JBVxPFslRrWxSJYze2kuZbrfyw5ZWcJbJrPcvRVQGov4QDmZnFkypywN
	 Ro/4s7rjBhJFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90693EFCE2A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264809358.26315.11455810187577865654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f56e50aecb3ffab77bf0f4cba9d80eae7008200351d9a79f78529cc68389fc
Date: Wed, 04 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772648093
