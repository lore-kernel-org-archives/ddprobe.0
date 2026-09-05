Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321ED248867
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788641434; cv=none; b=uXXhUkyRsDxD56ptYioDrapjXyMhoSnpbHT63jVKe7H5cnhw6ZWuUzTvrAYyG4b91K3gk1O+6Z7XwM6I3z5GLUkOD3HYypxKCHsABnzY7KiANfL4Ru4zfzTYNj9cQ1TtwPlHJU9/YZBOPQua9xLzwF2Fy47cifBarHNEwXiXelg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788641434; c=relaxed/simple;
	bh=HxJEp/idNdzNOJ8XWDpVtY+g6VbJPu+5QJZqiP9hek8=;
	h=To:Subject:From:Message-Id:Date; b=Pp9pLbgAUH0vg861hsP5ZsQyH8DfOYRYtRtDWh7CoScn8bVPTAK/Y3NhqfgOMIl4l5foCjvmosCG851GnqXx5Rg3ztu21K0HQHAxLfYi8ezR7VK+xnvtNPNnIIgno7whc9rM9kLQpLgndSLNogolQAq/ERO4699sUpur2IuiE7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0REYbmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0REYbmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC51DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788641433;
	bh=HxJEp/idNdzNOJ8XWDpVtY+g6VbJPu+5QJZqiP9hek8=;
	h=To:Subject:From:Date:From;
	b=M0REYbmtQdLf76FtBnY08UUgeZqKc0EYt62ODmf/d5voTnBc2i4y8Q8PKhl95HIZG
	 hBUDe8/31c7hIBBpObklbVShbGQVUjxBe+Ql2IYT2pdqxDNQzoNE1mRXhTutgTKoiT
	 XnvCqN/ifadxOhWko/6q4pC22nJB/1BTfRIXW8LKlzaFmq/Kn3k9kQrKc+DHL8Rb7Q
	 j+xJFyiSKgJlbv1vHshT8ly/BO7jqgQEVERR7/cert0Sky8/SaztJ3tZ041F3PiOYh
	 2GUA6BzXwXhhS/qWvJqQGFBLPNk2619rEbd9pgaymDgys2foAdnOXvgfKVfjSAoiEX
	 vs7YSzPYPcUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB950C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864143369.8283.6546182003547897112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87de1aba793291d0bc841ef35a38fe294618fd8fd1905d5e79084acf5d71183a
Date: Sat, 05 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788641433
