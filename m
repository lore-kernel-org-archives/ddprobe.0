Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4580528DD5
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716929063; cv=none; b=hVa/tC6NCMCQxp7RBkGHXbbTO+VBhkrvEyGUbQ0dDgjj/A+S5j9FbWRL+iSDNYSEsB8Egg0degAoaSS0AmaWGmdHAMizREQOLXLXSubV01r2NhQEE6eL/E7E5Xqy5iCbrQrVG7owBvIogadBYv+gWJezsJgmIG6ie6/MPwzdcTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716929063; c=relaxed/simple;
	bh=CpSIi5xjw+GkLlCNJJlpTrNrrSThcUIb6FZfR3o6AHE=;
	h=To:Subject:From:Message-Id:Date; b=ScH7wXrRQAgZ3XNoHIYiqGGVC6I3jxNT+WhhxXgsIrRmVACR3L4MatlZUbwQdhetwNm4tZKCWt6OXSi7XtrerAo4PA/nAjk9fK8VBLER2k++9VqPqwpaV+VfctbT7nqfSjU9G82yzEQPfslzuJDtK4m1q8VDoObhX69F1R0LC/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psDJ/MxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psDJ/MxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D196DC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716929062;
	bh=CpSIi5xjw+GkLlCNJJlpTrNrrSThcUIb6FZfR3o6AHE=;
	h=To:Subject:From:Date:From;
	b=psDJ/MxPc+73OG541AV750Dx+s9cISwLs79SGmxXhVxxjw9oK6d+FXD4RQ6bJtvn3
	 eODUjrKd0f32BD5k+9tvhOYTI5DY5l9MIVBggDG7NfZgaso5XDQi6JNV6yOVUkNtjj
	 UNan9qC5RLqnad9Xwr/UiE5lEQpKKGa9jTrcx6aGZid7iJsHKdWwzup6giCAZ2+bZz
	 1Buk82X4sqmU0TLLWaIy5BITu8P4fD2WDnMHgvzzroyeXjvMRcRUqFgFU4n4KAmMcF
	 TnvxXmyhn6OZutNI7HFd544TlycmyfJNjKXyBXoj4U2o0s91QsCXttZwK4F7f3h8na
	 lve0vwlLNUWzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC402C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692906276.22660.18133143565880847867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d1e6d08b295427ff0f6e8f132c85ecc6e2ff034ae535bcb38b4ee1b6d0132b
Date: Tue, 28 May 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716929062
