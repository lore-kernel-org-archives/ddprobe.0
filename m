Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AAC1E1E00
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757332794; cv=none; b=XkFH4O5ddoIpEovKYtBPAURtqZHmdHEtpJpktVrJwtxufsVYaQyXznJQ84E1XX5B2RRpMbqpAEeS3/IJuTErh4LUuDeyK2SP/zCR9WpOQfhMuIVjfdjaUyomJJNSiAZJ1Kjd2T67fqrYwmV/T1A/ZI1woBtKvMw0xhgN3q7YMzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757332794; c=relaxed/simple;
	bh=/MqfYSmUGJlC4yEibqPhrfWF2NF04ShmfgKmpcRc98Q=;
	h=To:Subject:From:Message-Id:Date; b=GX+k5rLzqMzchjaG0rfK9O6WqyW1X80QrcSkMoS+M/XEUqmgi5TCsP1WTMtNbrx/8J6hl/4Y0/tzPe2dDbTIGObXdRrcqXUkQE8i6HnOtRH5+59uC5kFcxETwo8+6jGF37vZYxlidI+0Qv/AArJa9qZ2AsUhuOZecIW6DM+EW80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUHiIG96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUHiIG96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBF0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757332793;
	bh=/MqfYSmUGJlC4yEibqPhrfWF2NF04ShmfgKmpcRc98Q=;
	h=To:Subject:From:Date:From;
	b=iUHiIG96EW+Fh3UPkYIJRlnhejNqd4tGsE1lNmVE59MSYT4eLCj/cgSRzjh6j3qd1
	 HRMKnC32T3WYB4h1f3Xm9YQP+fx3g6CprRf5q36+l0NbOlx/YXbLF+GjVO7ObJkDh4
	 k5nRobxDcizR89F2HkE5fq99XKHD1ZxxkCW0O5PfeSxs/w9m7c/o0HOWEbrSRkli2V
	 86nuIy5xd3LBk/nHnHUSv4POXtUYn/ZwBIwwFS4GwBKMdQv8LtxLn+5v4oilgIX3lF
	 SDByTngUlhbHE0FsQT/oNT+oj7p5Jt1lF3+C/KYxe+yKkYEoOm0hbaOKt6JUjwMsvL
	 SpXPLLx9ant7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F048CAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733279357.26662.8489188372085832361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60aa9d419f17e820d44682868d9a5d8926a0aa9b596e1da1543d8c08f2b8225c
Date: Mon, 08 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757332793
