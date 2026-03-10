Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5F040DFD6
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773182694; cv=none; b=RYxUSM/NXyp5RAAHxhPlHVkEdNXb/jMdHklw1f3kT8Cg1Bg4HeEoAMlKGZNeeRP7wrQWwvGtSxifIlcazXvVnsdl6O657i/XEidw+YAqrl4blEUTG5LkCiyXL3guyu4uGeWfyWc3YvxKvk8+jx/ZONP/DV1TuB/p5x3v0JkWZPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773182694; c=relaxed/simple;
	bh=AfCbzN/39gzlmj+R3V4MoJHEbCcgow0NqSJJTbyZ4tA=;
	h=To:Subject:From:Message-Id:Date; b=M2jGfuJNPAyLXKhI87Fwah9Nf+WV4YHRB7L4+44Hpy4PBSCufsWYqnpR1u2eRHcEuwccY58cNRl/A/IjV6M7W+DgBOS55ZgMesyZlG2ZNcSwsuqTLc88CnDuSWxVocUsXaKRdM9JqKqPQI7n9LPOqJWUhIpwiDnqPn8qA1zRQ+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gotw7VZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gotw7VZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58B5C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773182693;
	bh=AfCbzN/39gzlmj+R3V4MoJHEbCcgow0NqSJJTbyZ4tA=;
	h=To:Subject:From:Date:From;
	b=gotw7VZJe7Uu1VKM80Sl3MaNdTehggb5eOHtCBkRGzuoFX1WoSmMANYiKipThoG2G
	 HlKpbqcthPz1TYKjYoks4QEQtEYRTUlEvR7TMwgDJkNl/xGZsl29HjMYU0SOpTRzrR
	 KMP465K8arnlFnMyef2QRWtkL8lKgvUYdaWX7vIzIqfoRPAhSlKqMH389hB/H9S/QU
	 UVpg1kK9bX35AV5/q4ieKpynafNg/oOokNWQXscEnk28spj3O+7sWnNU7LtYoP6H5p
	 G6Y3z1snwnLBa+oRKVfNz19GHlw5UhHqTdPYqV529yG1wlzaKe8kJVZqGuPE199RWI
	 Yeh2v861MlE2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABB6FD88C9
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318269361.4392.18037603234845917876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c05a174dcb609e04d97042bd75b1099cf2c4688d0152ed70a8df5ffde496e9
Date: Tue, 10 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773182693
