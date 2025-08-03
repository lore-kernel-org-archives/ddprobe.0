Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198F4202C58
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754210394; cv=none; b=Ze73DYNeR8aTqPnKxgA5hcCPuBnNU9YtNjI3tXRyk92733u7+nziR690oNXk7DhFMuaJ6QUejVKRzk8Jf9UzNwuin25rZ0JQ6mCeCtzx8FZfdqtOBCBJX+1902KEQrZ41axZbjnRkHTscXTlCxncjq+U5FBxCQbT9LsR8+CVY1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754210394; c=relaxed/simple;
	bh=QemajPj6Yx0COXxoOcWugDLl57NakX3a6+MagvzZLqE=;
	h=To:Subject:From:Message-Id:Date; b=L9dJBaiskMz6fQEkW22bF3MxaDZwqkilyK+JnVhwdseuML6WQ0YtNmF3xGR8euORschF4mhBaBeKWQph+YM/vF3c+D0Gg78TQKIFqIstFOYxnhRWjHsGEktm7VyM29C2teDjSKFfirXEKYWGepyVmUFM5jO67LtNzMQUgWSaCmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffQTCWl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffQTCWl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1866C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754210393;
	bh=QemajPj6Yx0COXxoOcWugDLl57NakX3a6+MagvzZLqE=;
	h=To:Subject:From:Date:From;
	b=ffQTCWl6th44K0QUJUYQTlOQD1FHTjM+Mqfz8FzLFw1JFgduQu0pxwMtKI1pzNFVv
	 zK1ii09ZFc27oziRXPx63Mxd5GyyBMIwtKlmkAFDDCa607fDThn9pwPxabJX/bach6
	 soR9yDGYgEoBc+NzmR283dhKWczhpzmAWqGkQjO3g4J5DkuPNKtsKN+9f9j7HaaYib
	 2LxS9ovgj9KyXmo3hN9oMMz9DJS5nGKMk6DCbnUtEM4Rp7m/Ay6hB9/DAzUxzqcMiV
	 WfQh+ovg41cUblL8PqRIzO63CTYNhVYH3ZzD+m5aJvYX23he27u6/eOPKBa7a90HfK
	 LgGZ2LfRTN9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EAC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421039357.7883.13055310927172747212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c2a6be815dfff5bcc180b5ca65ef8b8125456c69856eb1105451b2bf03f156
Date: Sun, 03 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754210393
