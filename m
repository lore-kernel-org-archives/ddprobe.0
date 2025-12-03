Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2803D44C8F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764742974; cv=none; b=oCSFVlyVxQ3j+UqIbkGtwROSXp0qlDuz4YkMwUrZJxWm45F43L5kDdJTC25EE5gZpEdpCl9iBNkumLCFLzuijKzI5d/f+ZmI93TFMTBupHIeGnYQkNprC5D6K96TQ/lq+YgK1AS2KFbCHJ2/1cboWwwqOtk0jWn/onzErpchKco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764742974; c=relaxed/simple;
	bh=0bb2y8AhCCqKuoohWyWdp+x6fS5sXhDK1PDhgS9gN14=;
	h=To:Subject:From:Message-Id:Date; b=fsiXxhhmISE7rDyVfbHo9mIDBf2Ai/o4oGYQzc4zsSD6RO6CIyrGwQWhqodQUa5eiQw2NhzfISKkReuhgMcprkdLsEoWjq0RSM/bGtku/etms8/8OSQB5neCtzgUiWjdzWU4m4bDntqvpJf/Tgi17koQdK1XuBSKXxLkwi6hCKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPClGjU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPClGjU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC866C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764742973;
	bh=0bb2y8AhCCqKuoohWyWdp+x6fS5sXhDK1PDhgS9gN14=;
	h=To:Subject:From:Date:From;
	b=DPClGjU2UL9qR3oP1DTXv0y23KbgEkNcwMjzZ9Xj78mOiCCuJysAIEKblW9vilRUa
	 w3evJg21N7zW0wJmY9LsDatbKuRRJYRakO91QUqVHFg43yGz9yxzDB0/oo8ZAznepJ
	 dvUuN2bEa1wbw5+Mj78V5K81BsYP+yeq5QrdGZC4QErfq6pSpWKMChHVYsFwTlZ8bb
	 7OjlfVl8zG/xGdofVh8gg3Xv4B1TEJah0JY452h6By1b6L5Yb4oEqaSKj78TILZP/L
	 Oe7LfBdy1onaMa/Hdu7yMDyQCv7NyV01i+c/vGdvOBVriQea39Q4n2WjA5chYXPQuS
	 Wm3fETfVWOpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9739AD116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474297358.6421.11536959263739868740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2249badc9f5a1d0fdee756f4bb09c4e3e3fe483355636181c836e8eba53088e
Date: Wed, 03 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764742973
