Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED0C4A341C
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786734034; cv=none; b=eeKF70Hv4bfMsSOMhxGbvBpYkaPKviai5tJcsHeBLESM9evnH2g4oPjWq3sOu3fsXYBfepS3drwuqEn+F8NZtLpuD0m/wmgwmio43dStovjxuU3quEeEoA9gZm1xK3iG4Q/mp33WwJM9ltZMsIq6tOIQ7CQnrh/mr5+6IFGLYtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786734034; c=relaxed/simple;
	bh=7wavLNavSsPiEHkkPmiCQpNTtiLZzAedTbBeTssyo3k=;
	h=To:Subject:From:Message-Id:Date; b=i0OeQQer5QrVLaSw0pvHe2xdOOYdKR85//qT97LsGwfaA/VQZ6Ec6RBJN1RXEdOLmzIV3xciI1oqQJ7y6XzwWiaMHhiWqPYjfulzLfWJXJ8Ah0hySLl/+3IBTZysDJk26yoj22niOyi1KnJurkBo/AIuRiiggP7b1ot71nEpL5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzPmgUMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzPmgUMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAD9C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786734033;
	bh=7wavLNavSsPiEHkkPmiCQpNTtiLZzAedTbBeTssyo3k=;
	h=To:Subject:From:Date:From;
	b=VzPmgUMeVXqt8SJW2hqCkoH8qLCWnkC2cOpmIgJQiQHlAq7ORhWJUpSbXHxQ3kB5k
	 5RFTrMwRHDOl/Ekjgd6U/RtyI8gV7PC+DwFdg/7ELzoIDtd39yqRdz5d/hakmqoz8F
	 R2wCLdpS+M+Xf49mNvU6pHAf40dmJnPaa998+hCThSIBz9M/QddI6YpPm3t3z4fpF0
	 KQ+51FqjV0YkSdBYy3po3Meh41+B8N9niNq1iZ4l3h35/SFzaU7m5zC7XyZ2fLsQe/
	 F1DjZmACCrQcxS64UGcT64HmWBYr+/RJoFul9LAr+tTv+NSBMXqqHPC/1wXa8u6j+8
	 rNwjWsHz5PZrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA1CC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673403369.3921.15578033084118609458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff0d0c5e9c58eb4319ceab150c65993c8b65055565b007f29bce067077788ce
Date: Fri, 14 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786734033
