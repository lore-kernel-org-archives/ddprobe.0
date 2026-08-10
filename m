Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D64B39BFEC
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786357834; cv=none; b=BacEh8d4ao/uqioupMGZgtKrWgokl2FWUvYHXp9dJ3zf/gYWc8sdvjFVfsxqCBkxTJv1fZA18LF3PNw6GqnW6Zv1ZLI2fc5fnLCIeP5h2euZjkpmnd5h5z63j8CQLHOY7snBaXyqLphs5hR4b3pCk83Z8LV4IvzFqSBdJ3I2nbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786357834; c=relaxed/simple;
	bh=XOTNEVPzZW79bqlZRirwCSI20gHw81SjD79FkwLq3+o=;
	h=To:Subject:From:Message-Id:Date; b=kiDTc4wcVarUVbwuwksZXFH04VFsXQKlBV0pzIsB/0453RY9DCQkv4oye8OoPow6Q36GKdWp4vQCIe4Y7tGZ1xaPNmdJEiKpjuupFB4UoH/lvb99VnZO/c+sLfM/t/ZSMybfewhha8xoHhovzYGm5GOoS65kYve+q3EoEavJXgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3yTmkrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3yTmkrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D5FC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786357833;
	bh=XOTNEVPzZW79bqlZRirwCSI20gHw81SjD79FkwLq3+o=;
	h=To:Subject:From:Date:From;
	b=W3yTmkrWi1Oq5GYH4o7NjU2xvfmvSIPOfljhYAwIx5zNe/wXyMMcOcYwBt4dsgvw+
	 2yKL4r8MsfzuzxCY8r0kD6Tf8SpybyAzPZVW2bVHdfZKDWusXuLe+3GAKJXYN+n7Rf
	 XrUvF4RLu0TKtt6h7K8gC0v8v9kCWKKOwxFzhHmH/HYpmmfRYQhb8nGrav04JKAuY7
	 i/UxO8PwmyS0X6F6mrmfSyoDNlMK0XeUX9P2VxtglNt+hwcozN4z5rh8c+n/skz2fY
	 mYMzsokPlBZfSuC23ozcW35ntbh2BIC7JB1OT4O5AGYkPcEk1cGsdgFtWqD36NmA38
	 Bsi2/+Gh7o/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B0EC5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635783371.19642.18165689070284553433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c09311cfe7fac2891a685850d5a16818d68b72f0cec9a3f49da7eea84862f7
Date: Mon, 10 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786357833
