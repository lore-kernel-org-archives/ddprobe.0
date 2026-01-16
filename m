Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6AFD319848
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768557234; cv=none; b=MgC107B58swnmcaEyu6Q/Rjd9/MYSbLJ7Kv0IlcoE7apEnjyVnREpoTY7QTz73ZU7074TP0PBzD65DKSIAWQ4NqTVzCgvzoBJczEFyc5ewAlgh42J2uGKYVhjLNDCHPE4M32inVi4spfhMrMH51YEzYOgOhJsXqHQJ8yD/sXom0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768557234; c=relaxed/simple;
	bh=1sFxNZis//3w693Ve3qUECJXky2kUs+Jeg0H9H0hQQk=;
	h=To:Subject:From:Message-Id:Date; b=QM/867QBdCSFzQ1278xmIQ6m9KMp4kBZZgfPbBOS8VPccljYerc7OqaBE3CjsiNsnDwgWsYbdQWBhERbKwjigPzIEi2Mc0WT2ocZ9dYW/93hbdqge1IydDGvJ3HahHLulqnto/rBClJLHZ7SqpLhqNtVJsHCiI6ld+AcM8pequY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ct1P6VQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ct1P6VQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBFFC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768557233;
	bh=1sFxNZis//3w693Ve3qUECJXky2kUs+Jeg0H9H0hQQk=;
	h=To:Subject:From:Date:From;
	b=ct1P6VQ8uS68MR4ncT4B5VyOb2g13guhrCOoOcMLYA+YHtMp0sDOkfchZ+Pc45uxU
	 9maoaLk/NILJEty7NAa9vLuGx6fyDA9TxbqIcrEkqhPhrXneYG8+CcvHr2h0lO2x7n
	 /LeWagQdXhHYLH8iGbEucn6KVg8zOfC+UGBwklAnfU9M0KLdFCkJ60IEbjpRXM8G2c
	 SCJgLI+scFkd0I1yzhXhckxJtQrfrQMimAxF0wXHvQqq1GE2GjydmdrWFvk4GqpJra
	 sJUBdkt+IGF36DzkhHOObke0e3XWBDjj3gQftdBTlVLTVHhenTyo/MgOBZj1vII9c+
	 NjNgMATBgUCmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F86BD4A619
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855723358.7264.7429168883617365593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703ecb9df69c71abb5f11218fcb0af0117d2ad5fbe47cb6f8964ec086a9b67a1
Date: Fri, 16 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768557233
