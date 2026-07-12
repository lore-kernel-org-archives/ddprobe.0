Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1B4C8EB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783827514; cv=none; b=pm8Ji/o89Zu/nJu5Y4J9TpvoxWVwv6z+vhsefd+h85B53ieL/PZR9oqeEZt31mVlUCAcszKd5MawYAV2l8poDm+FC9+5H5VrrxK12Xz/suUWUIiGqUPy49JjlK8ZATpcom75mvQVoeWuUTeibNjlOS0W0loqzU0eaV3XfFj6Z4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783827514; c=relaxed/simple;
	bh=yEgOa99iLXDqfBZbn8NVZ+DZpOT/d6/BVOe+zSqdZY8=;
	h=To:Subject:From:Message-Id:Date; b=QrinuK0qlqnXdofCeiLWYiLLrLI8b6EMUQMMzxhiB1g9/SjViO4PFV7Dafz87zTuf/tYgVfkE5e9EMWMdFfubcZRrbh7u74vT42+w2ICdzA8d6rPW+7K04R68BDFsBqD1SFTt0oGeP4dXGyy1V7bpB4w7Tx2SeDSOzW+x4cC/TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq45d27+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq45d27+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2870C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783827513;
	bh=yEgOa99iLXDqfBZbn8NVZ+DZpOT/d6/BVOe+zSqdZY8=;
	h=To:Subject:From:Date:From;
	b=lq45d27+RPXs2DvrnQhwFlaxvKCnYfOlOD1UZc9dtbj+r+oktTn6fhj6jji08YTh6
	 e1y7juNGeEn9idO6wmD/pNxm4UNyppwEaXv5o1TeB4FwQ3vKenQPx3zprnqlcPjtD6
	 Jv4kJ8igRudY2t1gNT52t7g08LX2WWxBmm+a7Ma6sblayi5EKd2QA88Uo0HIeLGXcq
	 dCHrTNhrlB87cW71k51RBzw405YRXNuw0cEIMjAGAmLwPYsO6X9l3KbhIwpUo2XMJP
	 p/NSNVTrVuLowBNUiyeQbISDnBf93FUk/mwlTvgGu30Fahs9HyDfRT32uxTPtHwQVT
	 9mMiwQdqtOr7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E5C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382751368.2476.7573913600505922204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294bf54ba8bf83396bf52fc84fe34de20442e3426d88ed880ab1e467430d67b2
Date: Sun, 12 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783827513
