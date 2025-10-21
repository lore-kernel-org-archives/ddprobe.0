Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA821FC8
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761034794; cv=none; b=WkdevCHJ0epZ55u+imNYDG51saKk0RBKOOuoKWS8w2cpW7FV9a0RHHeCcWXK+WoNwStxeiWy91kMS8hFXIEZ11ypTv+o9VAmD0P157PWwc1vadWp9e2QoD/W9ZDVM6It3k1ATjqGkC71onCKIi0dOlMVt9PyGV2cudHYFNJ10g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761034794; c=relaxed/simple;
	bh=9uxx4ZFeZRWMAWC9S6T1XlVhcyWttQPr7icJcpzz2Xw=;
	h=To:Subject:From:Message-Id:Date; b=BPmUxtfgtcfySWTmp6908sibWarocp2ChVwgU6+4tmPd/rTfA+nNaL/I5ZKzU2rDFU0vR4xDySuJuVfBB59TYBNB7GwKgoVDohTv3qfHlzXfV7xefwqzrxay/t66hP2OlQ1n3FLVvpSy2vnL8HXyliq+6AuKrx05nCvsU8ZjclQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhQAzW7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhQAzW7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9873C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761034793;
	bh=9uxx4ZFeZRWMAWC9S6T1XlVhcyWttQPr7icJcpzz2Xw=;
	h=To:Subject:From:Date:From;
	b=fhQAzW7GqWDgc/ry7RuL9i9dQuyscIaTK2VuazwrLynOmuEUXwDuNyivWQOnixkd/
	 myoo9rSi+t7Gcp1bXrDbYvNAkun3tOqzH9xoKbeG/02c0crGJAbjE5qHX3TResENyA
	 GQ063Mcy+sq4QAe83bwXv7M8QLqkMQI49Knedth4EDzF+NolIfMfCWYphtfetmhfz6
	 B86Ys7vfsyx6njG/fKV24TKidj1q8ZvoPWpVu39sX+Vu1yE2KfBixMK16rfDi7CYu4
	 3aYg449ap5DTY9PkGnngg20cqUnq+Zwi9QUBYllegtqZJGTLQ5U3NiXaQ3fLa4ZnxN
	 af97E5OQwZ53A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963D8CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103479360.4559.11682502663096525408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03dd9bead9b9c81825054e174302f8ca27ea0aa14070d2b6c3712f8b1078333
Date: Tue, 21 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761034793
