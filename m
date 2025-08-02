Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CB0126BF7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754101795; cv=none; b=uJbdZPov8M6nqTrgtvgcsXPjTNucMtBXcHo+lDMek4otp+HAm2ZuK7zMT6qXEkR8gMjewvUMXIrspAW1O8G/Vdya0IVWNtsG+/bKa7hD1gN8Yb/QERLe/nmgg5YBJ2DSG9VpgRUFvmSYtUSWXs+6ea0pWa848aCGf94x4tx5tdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754101795; c=relaxed/simple;
	bh=ZvrluqJhTFsIFpEl7cOes/cfFvROBxmjzc6bf29MPIU=;
	h=To:Subject:From:Message-Id:Date; b=TYPgyBeOcmhsHVz0/tKa59dJJKDuSzrRONAlcuU5XzhVyxBH5StVHaR5RWJ+T8ohpHTHoB9hJMbp6Wwdu2OqYCVPIav//2/37PfwhVcewsmH6yB2DFGa9eSmKGdguMUoliHG+RR31x3/cUb6XoK8QXplpfz7/9dmTUea8fgdYto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5ScNDP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5ScNDP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED9FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754101793;
	bh=ZvrluqJhTFsIFpEl7cOes/cfFvROBxmjzc6bf29MPIU=;
	h=To:Subject:From:Date:From;
	b=D5ScNDP8eUhyCt6b6HaP8IWVJevOqBb+hPZgkJlm8zR7+a0ZjMRQVi/c0CFhlhGzS
	 O7n4G2Jq52a55IFpogtrNDGy46G3frcSiEDIdzjKgKr1WVmPm4sloRhnf8f8reFAap
	 A7B7hpqj2mB1LEtYMUoUMPq4zo8xEJnNEX+v6YOFviw+ZQ7VrmHY909aRpDv+1EbFe
	 xvJkNc0X2+oo6sKpQ1E87TMcXbMrf4/MDb3VGjdDQNblxs+0dN+ombb3k5NokuiJGA
	 PN7s4ADcVxxZdlLskBYi2A/2Zov80rE1fYaKrCx/Zvvfa0dtPCMYWYXRcY1XZ9vGGZ
	 z3Gt9YzGOFyYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A814C87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410179359.27198.3369549901469129310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1814bea2555257711ce50931c618039a0172ddd402f9a498687137d884c3da42
Date: Sat, 02 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754101793
