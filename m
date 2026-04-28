Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3C338906
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777348654; cv=none; b=RHXFUbSgM/GH5hqYwL8wuAdr1ZL8hULboVUmtuWzHNGPF7LQjfI9o2HfUZThUvv6UGx45JW4HQRvfs+bfBqbIh2/nnZ1IH3ayQT9aX094NoiUgHyB4ehmpue6RpecSSVU8JPJ8LPi7JybVDzayhUNqX4Lovn7lR+A11nJNuqvvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777348654; c=relaxed/simple;
	bh=D0BsbQ9wffkfvDc7BlqjHIB5j2fKg+7Thq+yKWWaxNA=;
	h=To:Subject:From:Message-Id:Date; b=fRZns18fdX1I5SLyykaOUpTf6CM41fyaeuvfY8GNp6JSOnfeu83/ovasx1iRTdUKku3SRXIHmtfhIBYUPi8wVTMfy6oElYs7hHEYkhN+PiilCJlazhFYwffbDvhC687jNz/i68trrPFIkcPoYtLMwNLyGtc7GvaXLIzZ1+T7ik8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL8PsGQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL8PsGQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04A4C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777348653;
	bh=D0BsbQ9wffkfvDc7BlqjHIB5j2fKg+7Thq+yKWWaxNA=;
	h=To:Subject:From:Date:From;
	b=eL8PsGQtYxBKENtYwPP2pfewmtB2vqK9NQlID7jCCcplNwGb5thhxuK44PJRT2+ME
	 oQkd+vTqZr5gwx4ZmyMz0/XLaq2gfKseghrGdPjLt6W5MIEqUYzyNySugcZIdrwJwh
	 FnQ2v1f5f0SbX+lAbP+YlV3OW4ZrlUqDxMqXTXnrPiRgw9Nv4kqy6iYS0WiOWmBvkm
	 imdnNVtB7Aoe/g+yV9rfydB65ZiEizubC5aG7tiiPCnk85HLm3LwtY1paFWztMZ42x
	 1t8HENcn4JfCbBYrqRRaGNILwzqPoJXQnqg0Hs8jXVtQryrg0XrYpYO/U1lDsRyYil
	 pxOcq/CWKNXpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0984FF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734865371.21400.5867428476622834606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b64829828fe34fdffbf6699ce930a7f44de15ddcec3f8d5f287e71a29f59bc6
Date: Tue, 28 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777348653
