Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2477B3EBF3D
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770003234; cv=none; b=CfhQjtZffQlT2Xl7V8EOeakAfgy8e0+jm39yHd3fCAOtvuzfzTm8tGxjAZnEo6s0Zd8B/L8QXGVwx2zLjrE0v7EcqIhSr3JqMXsOgePGhtDq4ybVwPq7pN9AdmafSMhGme75CJ88hYycegBDHkku7Ndo0RESLhVEohOY1kL8LC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770003234; c=relaxed/simple;
	bh=3fKZ6Ls3T3UZdJHt7nSctQ66ggmvikPzOsZR4Gj5z3g=;
	h=To:Subject:From:Message-Id:Date; b=qrlgi5TohvJoPmkWCmWYqBS1d4NiGPZ10WXfUIQyJSf8oKCoowrSEKEOBmM/DtuYn5ui3xzbL7bNFf/PaGekIlCn8jCymle91PuqAa2NOEX+yjN6CaLbbOpnEcS6FG/uDvuWp+QDu+gb14Azd4/BlKQWnQOehSQlpKswxCuZajw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc+a9UKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc+a9UKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F01C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770003233;
	bh=3fKZ6Ls3T3UZdJHt7nSctQ66ggmvikPzOsZR4Gj5z3g=;
	h=To:Subject:From:Date:From;
	b=jc+a9UKvLKH6f+F3X972jtMurwSR8GIrcOU4JYktDT9R4YQhxLM3zbNZTV19/kdg+
	 +b21bgz1LCqAe6qbYExU+SCJN/GLtbTiWCmWc0RO9nR95zq+PBYc7SzDLVGEOEc5Vg
	 ni5I92Q8T5v/dUc8RDqnNpGylVuO4yKu7mjxe/69uZORc9dxcRnrKgWpTLYKNRRdeH
	 hziuYOioxeFRUaO1EU0c+GTyFSZEuJfSwy7oV3MwWOvIJPVsbG7xMkc2+RRoYhoi3s
	 2e8EiVwRGEpLDKjQtjxYFakfzPL5bjib9sGqmCjXB3GSvIIbvbnD2WR5nQurKd7ziu
	 p4C6xZ7hG2NHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDC1D172C0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000323363.13591.17983485676281847400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f0f8613311005ee8ef619266b129ea1d468d4121d42eb6bee59d132c864ff4
Date: Mon, 02 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770003233
