Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C043CF03B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775580934; cv=none; b=ke00wynOTqFgIZAYO6vk7ZUdum/DCFUwxjlAbZkMKVVQxISejTxWDeqWi0WRl1rZd8orW5Dlx2WiKJzeBzyXSLfopZQGqBJhp6Yj7Zou8P4ED9erLq/LIMUIBKVqL2NiV0w+FIn4XKETSY/SOx9LSIUSG7vUlVQJ9Pqu37YGvVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775580934; c=relaxed/simple;
	bh=4Y5MOAp2gUNXomYmzihVysdvbhfWxTB5QCR8bxWut/Y=;
	h=To:Subject:From:Message-Id:Date; b=seQOv4uoxkjR5wOqq+OAt0zms3D2WYGC4QbQYI/1hO0y4VdVrewrvcVoUbmI5n+5uTeipemoXD20eEaM0bX8IZp5WxhBCd/+IJ6XhMSopDs+UXiLLVVucE0qcfHX4VfIMw2Epf7X/+MuzNxlDBy6vzZTz+fDyGilDy+GzwbbF9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BorDmAfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BorDmAfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE43C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775580933;
	bh=4Y5MOAp2gUNXomYmzihVysdvbhfWxTB5QCR8bxWut/Y=;
	h=To:Subject:From:Date:From;
	b=BorDmAfiBE3XFGLdoFF853MrJ3+LfNVOmauC4ZkaFqOrxbrVWa+WydZr/V872ToVI
	 1K9L7wE0VSbqh/264W8Bm+0pJnXQUoygOXD5BZf7gOEc4fhrd7lb+9xEiWSqleH49j
	 b0Gp4C0N2qCEfUpN3lln/uE8iMp65WcUYWEWt4VlTotaR/6KESp/wnQ286hQYBAjkv
	 r9zZg83/S62lNWs7kGYuCeM39RA8f91msBkxNwQZ22PUsXWyX0D0P2a66/uN/lQuX/
	 3Z34yzk50Y9gRJ2akyLMYdcaZptbyauU80YB8OVQloorLQQVVQKh5cYCkOPwFBMZQK
	 fon2s3akRePuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFCCFF512E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558093368.6960.15898923506651409781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599c28f3b261c53b4bd0fb24775d2b6a9fab3a9fae66682710c9b53ec503bfed
Date: Tue, 07 Apr 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775580933
