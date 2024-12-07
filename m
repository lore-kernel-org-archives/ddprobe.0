Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A54A360
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733553354; cv=none; b=DWHRWT3/zSNnGZlkF+2nIWIpP3jHjctpTVvkvLb12uDKLFC1c2zk4zYuVBgDuD9dn8qqKwABricM5ZQBZ7rC0En4Of3gcGcaETYUMdpInHgKbLyh92JzS6eySUxcv6Vx2wjBXB15BVOpIcn3PRPteJhnSoQaPg+CAckYwo5R3pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733553354; c=relaxed/simple;
	bh=Tpit8QWYNKK2NgvqfjqNUFeN61OtrlXSuZlud6MkcFk=;
	h=To:Subject:From:Message-Id:Date; b=MdiqwaM0p6ypVrRjSEnpCvil7fq1IjfAH47gBrw/A5RKS5h8sZI5Jt+5f2JS5q/dP2narMVYb4lxRiFPo4q1FDFvxsBsOV0WPiA5BqREC8I7SYdkd3+ojuKazh+7WWLox9nFdU9LI5htzECAzVu1kNNlELrMD9fd8MGLLyNAlX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7IywmjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7IywmjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E9FC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733553353;
	bh=Tpit8QWYNKK2NgvqfjqNUFeN61OtrlXSuZlud6MkcFk=;
	h=To:Subject:From:Date:From;
	b=S7IywmjLnqvMVgf2uF+GI0pluOnb/OD5rJme2wxTQulidkiMUj4K8tpn06pAEKqLB
	 FV3a/kuOSexl0KTOHqv1MmMb4hf6LGuI4syiJdPBH1QN4foVRfgWtSvBxfvbSz8xny
	 flzHk/otq302jUivFuZfI5V2BnYoDkJQC3UPCv7wU3rxO0wV0MpEuyb+6WGvb2NQZH
	 H6EHCi9fXi70PhG6ZnGgexa1ASUuVKJB0Z5Br6nOmkWKMhkrBVTKVHS6Js4RNJW5KC
	 iELZz+spVigILQgiSK+tFkpW4ZSVP8WR3hmtXXycV1GYG5B/2yJXbiMqjYUoyIJhEB
	 mphag7/XDvj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECAE7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355335357.7896.13088986361325724604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbb5af51c53a0ddcfaf0bfb02ce962054579fc129dd2e98ba12d2f1f21a7b6e
Date: Sat, 07 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733553353
