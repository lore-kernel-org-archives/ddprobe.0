Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D62DCC13
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782129394; cv=none; b=IxZw0n9wY5Wp8ezQUEjNNJdCEc1QSo3ls0r3wqhPtx8FQtdGXIleu4DXCHvp876/+jlH6E/GP1EwRoadKeKy0H2rSn//ZvJIvxGytsq8eF9W1tjv5kiHlOdMlq3jlkpmzlKV8pQhrGNuRLXcP9j0n8D/7Zr3UFI5TEN186S1MuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782129394; c=relaxed/simple;
	bh=KUdzm/4yYu298ZxgktVWgj7dXrYuMIWMStR2IT0deaE=;
	h=To:Subject:From:Message-Id:Date; b=IMVO3zAD3l0vQ/m/L498yE+ImrXA7XC5OKUhFlsp+PgJp9IUsqPUx1xiy7PElrNCaB7t8I5N6xTwmvVdIMtVxXJ9MkY16IHVK2Rd2+dDX1BLKZQmzd25Gbw+cnwPVDWsNYQYCd9kPYv70pbhgzF/9PH9xJIh8AZjWwKryXyO4KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdicjlJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdicjlJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCD4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782129393;
	bh=KUdzm/4yYu298ZxgktVWgj7dXrYuMIWMStR2IT0deaE=;
	h=To:Subject:From:Date:From;
	b=tdicjlJ1RlKVQh4x+Kt27liT6fX7eK5w6csoZ1+PqHN6A9QITOkkLVzC7mObQSXI+
	 syyzAGenpkrJCFiv0wDrdnsWJSEzPweWSYHH0g1NU+rSCj7hsPJ8uwDv07k7/3Co1S
	 fnAXQ2qhIKHolgsTxcZ3y7+JxHQGVIUyTK5l6Wk6oO0fit0mMrSLyqTD81mb9PEIQJ
	 jf4q7OttFQip6ibHWlaqLzPL1A1VfSz7hdsv3GSEOY8pnaJFoKf+Zkf0lLw9MPDTXl
	 7sPmEsjm0zvILiS38ZGh4ErurUjp4pD+DMZU50N8KkEBoWDQhOA6BRAoYVfg5YXbt3
	 7Aq6fEUdxL1zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF210CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212939370.11640.11105268737086595068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622712afbbc902977cb037cc2e9789d3251f58e75a0141425ed4cdce25a237fd
Date: Mon, 22 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782129393
