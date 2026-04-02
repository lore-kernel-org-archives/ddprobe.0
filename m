Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B67240DFDE
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775090734; cv=none; b=bLi4K/XsxBb17ijrWZagchwHsp3xRcKgvvCe30EU2MrWEAXp8ShiAOj4dqPQweeH8kNK174mgNR1t9Il/V+N3KPYbqwH89uvPuj8+HWqkW8dmzveZvtpOGS1evxSDhfqSxh7j52fRzIr3nIlaRv3QjFnnn82XAvzT8zfgX3uLZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775090734; c=relaxed/simple;
	bh=iMok+q4gC7CXC/MPgYDWQXE5rgPaSZ9IinpeF3H7wFo=;
	h=To:Subject:From:Message-Id:Date; b=WO9E8ERzctxxz9u3m8NaIMuSL59XZQzMDDKa+QRguHLy3RkLxidKXmgTg6Vy9BHCzUVHfr3iYoeH59A5EE5LIJeG9cvUBJRrrRATFKI1IJUqzD5GkCwfN7f+BAtaNKk1LDTi2qVC/BoVQ2Q5pdH8xyJnTbVHnFn7FUEH38kSW1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8Xns3FI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8Xns3FI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD635C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775090733;
	bh=iMok+q4gC7CXC/MPgYDWQXE5rgPaSZ9IinpeF3H7wFo=;
	h=To:Subject:From:Date:From;
	b=X8Xns3FIgKu7XNKzfFe6Q6NWQZDtow/j7QHWlW1i0HRByf3/fAhEhYD/WemBSs73V
	 6FOO9QiN8a2mXesSP/T9wbVGup2tYEpUbgLnbQy/X9A1CVilJuDMka63m6K92dJ3ty
	 V+QFGRADnESP2BShTZDLOj535tnJb/TYATwp3qdMxXaiIZnCDukDNlKF7K8Hvq+qYm
	 Gu81yFVuH9G0bR38fxyu6HnrsuJX7pT+3vhAE41Zx92QMlwCQa0kw8zxj0F7Uv6qUo
	 hBtaiDYOuuuiZZ4TDkZmpj/vrDcWyZ6J3EpKX6uloElUXKa6o4mL3WBbAw9bklNuTs
	 Kre73ORf252Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC051112246
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509073369.29300.8667471905201709049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c0b8c340be61864c1f9e409ac01599f1a413be3fa09552df3236eabd7e2530
Date: Thu, 02 Apr 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775090733
