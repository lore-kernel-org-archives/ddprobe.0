Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A872D8780
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762162194; cv=none; b=Mo/OdkxmJ0/mKFSO+Ldth/Hr76LQk3U1fcydseX+5dsPwXimO3Q6QOwzn3hD0nv+XyK7oowv/FdXQNtIrjDM2SosOj4nsjJez1ZMpMo8pds5EJ3yU1O/Tx3kdtP7rB6Twf1qcYRpzofu8+8eN21HyuuSTJqXvhyO/JfkamYidHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762162194; c=relaxed/simple;
	bh=g97jtJhp5mZllEvmzkpx8FAfdghdnD8qy/qyie5VCuQ=;
	h=To:Subject:From:Message-Id:Date; b=dtvqdvOk1A99XOq9bMwA1T/CHcB5ciUhRFmtKarD6kpshnRtM9vKoKTUjmHMbtXmfXXEAedN6pLwMqAcvyxZce4Q+daEyJcKQr8wtO+BR0pINkJfMmml/KFK6ckmBezVfYtkoZVpzaKl1pvNGMCrnJGdkaiV5DwkY9h9CRIp31A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcudrztu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcudrztu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08F50C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762162194;
	bh=g97jtJhp5mZllEvmzkpx8FAfdghdnD8qy/qyie5VCuQ=;
	h=To:Subject:From:Date:From;
	b=pcudrztuVpBI6QyogvOrhkOFhWluefXpJ4URZzIMF32Ow4JUUTOxlLU9t5s0XInNf
	 OBg28Gm2e5kPyY+7LyVuPQQLyfAehwLEOjvxK0skqnXEyhvyoZTrOdAenyVcNhB1nM
	 ZZxjxbZG/T/CKavDYCc2YzN0El779tJ+WKoP2opj9niduocCG1KQSObC8LKNheAv75
	 EuBIA0ktpBxfdoy0FZwDOvBqx9zjFSMv96QAAPdfcanBhw55xLFpMWrXKV9P94e5J/
	 6d56at8uBNjgvAyp9OJexd+Cpd2fb+rRjK6hzazUdr9+60zDvbQrSalFIUZdg8L8ed
	 xANC6CGduvTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7288CCFA06
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216219382.30393.6526681511574138665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94f137b739111604fee4e3fd2a5140dad488d5931070ac0896fc98daff253cd
Date: Mon, 03 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762162193
