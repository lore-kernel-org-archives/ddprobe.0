Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1321F1F3B8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762112394; cv=none; b=jzOfZiK0boLwvFoDMZMyY9zM709gBqfIDXjxORosN8rwiH6/cAYubQDaghwWrXYI5e5VvTWG27jDSy+4kSrM7UbTs0VSQJOyO68jaJGSaRG2/5K9OtH8yE6NKacHzyvcP/VWZb7z7LZQjn8lsJGcAQzAkBdO+ttl0pSyG8vEGWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762112394; c=relaxed/simple;
	bh=VTRJmwczPABy1tbwxPegX4UwkhI+9PqNSm3OYb3dHxw=;
	h=To:Subject:From:Message-Id:Date; b=R8/YH84gJq8USknI5jyNZhYxI1HY2aanymJw8o6D25EzUSqgmkMOLwM+/EDdCcKLmHkePmbF+aWCarFNbsh/PkkGKzaWmGFqnvaRuO8tdyi7L9pFqOopTQEH9zbxN35N4+oTY6wUhYp2KXvZpEE87FkYJBtDnG+TW7N17EHPa6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvxO6STO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvxO6STO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA713C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762112393;
	bh=VTRJmwczPABy1tbwxPegX4UwkhI+9PqNSm3OYb3dHxw=;
	h=To:Subject:From:Date:From;
	b=HvxO6STOZE1VITjxsm1It02vycLSEFkWiT8IWsx7TTK2c0L7YZ14A5uEUnA9Lzi/u
	 Rg5klH4iUSkdkXwdsKXY9BDZ9GlRXWQ5+yrkfqdHSVqv0dfhkEMUkaUyY+azLHHxhN
	 TCHMzJu2l4v4Y7PSHfLV+qjwI7PkbiNA+X4P9w7PF8sURVm/EU9SModCxI6tJifrBg
	 jnlrCzzSwCIBlMH+6IfqMLQPXT6MCvxJE9aYKXQe7qWqnJHpV78k2LWG7P1tMxfGFK
	 PoCb712/GG07pC8+3styLxfl3o4HBXShFARnn974hoPEVeutqMpiZnhnyIj4V5t/GG
	 FsRyQEhLRLr8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9757FCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211239358.978.3203057438274394806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919852a3b68c55e686a129e144b90d1c97116547d955d555060380a7b8245a13
Date: Sun, 02 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762112393
