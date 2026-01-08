Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88C548E8E9
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767876233; cv=none; b=QaVjrjDyKF+PWb5Lx7xcpKLOGHwvXlJl0u+Wm6zsgapboDTv+17C20fDRep0GWETSNbewd5bFnbZdnyzyMKw+kvRjQ/VFFClOCLpCCu8UxcqilO54ZQfoh89sk40XbgP6cknZDucpxwrrOD7togm0Xm7+0r3T30sBYYJpgVxmgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767876233; c=relaxed/simple;
	bh=H6zOi4KAe+6HUT6E3OqPkDpooQkAaXbYjaEI8o8Yzrc=;
	h=To:Subject:From:Message-Id:Date; b=Wfe5Nguxdi5FKl8eGaqBMt1nlFqK7OBfjhSrKJdKJGnHujrckggr9u5vzyGCb/Qv2QfkQkn+IPR6iDUfJ5AqYTK6DgH+fjU0xScfbTz/njLCSlsnWnepDb88eN28U5Sv+bjY8VG5TNg0t3oYICY3H8Ms7ZmZjHO0/sKQrlm9IBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEVrJfUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEVrJfUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B335C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767876233;
	bh=H6zOi4KAe+6HUT6E3OqPkDpooQkAaXbYjaEI8o8Yzrc=;
	h=To:Subject:From:Date:From;
	b=OEVrJfUIBWzh9+VpDVSRvk1qYvp8jtITTcfOg/rf5pV2JxiZCWqH/NYNL9zwrj3IA
	 K0uDYSzoTRzGebp2DEk/uJ77TWCVp6WjI5zHyUD92YhCNx5gDQGxXkRlKz7ANDBAgh
	 UZQ9mpWP07foPAafibvLVmXG7hCo2FZNnsXKjokMvdPMJdmru6PXq8PzW2Jmb9XwlN
	 ZQxV4AAhYV+Rp12iK9NN38/5JWginZD+oCVqWODMquSVcKU5GC3uzrMFYCavpX4aI3
	 W0CzekmR/knaIn6pptB6Q68jnWjAR9aXdjuH7D6zYvyZDdaiFTj7KeyLhGq+Cem1EH
	 5rCT/iGRk2ydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E474D185EC
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787623357.21957.17722518813754216930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78d42c6a02ae7d302f92e6623441d1b6a0df705b33f71766e3b55653a983551
Date: Thu, 08 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767876233
