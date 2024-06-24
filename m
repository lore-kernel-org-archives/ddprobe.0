Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C011C8FF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719202943; cv=none; b=EOkiMN15VorQXv5ziWY2RpeJJ+Sbxe2TK8rLDtmZrT0f3hfyrpDmT7Gjfk8DLnCrroqiR3LgJYNixIfhCTd5DbPpVLrfmkPBfFMJmmiIh/N/JjP9fvnYTh4kTQ7n+QY37WsBRYKuJvkxMcKymp3dLzSvIN8rr4iqcUp2GGmMhdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719202943; c=relaxed/simple;
	bh=dscGWU/Oep1Ai9EO4/U3GDZPZcHTuetQnphmTAkzUIg=;
	h=To:Subject:From:Message-Id:Date; b=jkBBTzxHkWHafXT/3G4sc1+9lN8j9Jk96u206BByk7X6zaMzFQ3vwUwhY0gedNnHJE1dlClalSMlUKww9hNIKVezM8DtAWuIWliyC3Vfa0Q3asjWoTPJk84pgbWqyrAEd0cLQk+PdS3BzpQmyXHPpXLDttr0mz/ztvGu2PoxUQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNdeD+wO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNdeD+wO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6AEAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719202942;
	bh=dscGWU/Oep1Ai9EO4/U3GDZPZcHTuetQnphmTAkzUIg=;
	h=To:Subject:From:Date:From;
	b=UNdeD+wOriAP7s1CME7vhI1rhfzjVl6pFH8ktBFCgh3o5nIN6tgh3VixbT5vBmw3i
	 GWkqHo/zxfMJbAmkUzdgEO89HlUfXQ+wqSrgvA032Y5r/kNpNllaVWBQnAOb/Xrd9p
	 zgSvYGkL0xbGYwGowMfy8bWfXNTXu8NImu6KJyJmSg71/dSsVPA1s1AjKmKrsLdi27
	 j8OrHfYte6SLTScpqvqVY4k7xRNxiLAutr0OetBjKQFbG/7jdXOVOJzqrKxB8abtbR
	 AuPW+b5UQi+kf8WP/P6V2cLoMnlIds5QAPhVg+Oq8NL28rFP7olAHoX8yWQZ936i1d
	 7l9vUYpu8n0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCABCC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920294278.16735.7048826844990110282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b61bd771ae0286ec4d66565005ff0f399716f55c6a57d1159c5677c051dfe6a
Date: Mon, 24 Jun 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719202942
