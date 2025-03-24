Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617C319E99A
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742849394; cv=none; b=f8Ht99q3r5c5EXbxu0URy0GIzPX5YmpmbXtTa47iy1q8YUKMC1ghu0EW+dhrPSPbi+HJ/iJI0U/e9KMsLeWY2vC1KlDMMLjq5HH9m0PguYcmDYs654inhxWg54A7THL7/ClH4IGZCySowBsnuPJNp45s89G5ed0vdd/SI92Kgds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742849394; c=relaxed/simple;
	bh=HwYzAUC3+bN8Hek8CcqXuCJn1XzxqQWuVWDF5XVaJsY=;
	h=To:Subject:From:Message-Id:Date; b=ui56sMHXuWVwgNrZENBBwpzu9fPI54efZWTSAVng4TLyMTRkIS5jnj2yZyXu4TpCvAfYV7AwbvSwSpvWEnoiOupfyUGjR6MPaI6PAGI1fR3LoSDIMOC0eYhh3Ged/1c8C1VuTQj/OzyfPK9myyCDBJ+UKRND4cM7sTH97A41Ieg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+bvp6ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+bvp6ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACBCC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742849393;
	bh=HwYzAUC3+bN8Hek8CcqXuCJn1XzxqQWuVWDF5XVaJsY=;
	h=To:Subject:From:Date:From;
	b=I+bvp6obnftAvPZC3UHoOxsly7KV7XVRguVHWSeCxI6hoAmF1KlOu1kQuugE3aQRQ
	 iCugLywG6q3kTdKOg0FHj1fbNJwZhj0xBCdaz9frgFfNAdXurm/ncq10IF80d0GZ9i
	 rAkswDIiHaMpJOueOiEO99t5EOUzLyi0cOomBX+w+kahFFyWlmCEAM6gbudSQAcwXn
	 PyY7IOffEdecDKCVn06KGDQ2Gbf5aia59rPSasEi3mDU+iOlGWLvdlUh8asbD68Qd4
	 xYfU2rlDALAo4OMUatO9N8C36yRdHya/XWXGT+pMjoC8wddd+kTiYEqz+R+6w/ZvdQ
	 3o0mfD6QWlRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7DBC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284939367.24599.16824493201518491423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b611e7f7f3805f7b954cf6c0c17335ca1ad60c89b4e902225a881594c1be36
Date: Mon, 24 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742849393
