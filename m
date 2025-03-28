Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4F619AA5D
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743192594; cv=none; b=UlJlW1VHBnjUwVBm3cnNRns61vwtLCu6Xz4BnmHlVHiPnFJuLcckgk7iLUVUMpPBVDCOQ2km6TPQJRXex631k/x1yF34zErBBNBWlCOJtuS9V5UWOgGXm+GqZXpNyI0/dWHzeNug9R6j4dKRLArZ/cdGX7Dc/+rDHP6+McDni2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743192594; c=relaxed/simple;
	bh=YYIf8FERKMjQSut9qPU3uaeQJ1PsMQPeZ9bCIvKHXxk=;
	h=To:Subject:From:Message-Id:Date; b=sPhx6g76Z95WNBWxu2FwkTWkBxqALnuJNV24zZvRbyibnn6vku+u1a8vntPhAx8L0dF/6CzQOL/pQyH0CGarcOqzjO1CUYwChPPg9dpVVmOvpET0cdFyVrjoP/ZoszCP8uoVVdQveLlcdYkfpF/AAActvuQBHGw50Fi9H/7BP1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iy86H9uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iy86H9uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D0DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743192593;
	bh=YYIf8FERKMjQSut9qPU3uaeQJ1PsMQPeZ9bCIvKHXxk=;
	h=To:Subject:From:Date:From;
	b=Iy86H9uEQXbKeAbiePpnp0yaD5PxBtYR7MxEWOGUe/NRDwUOpe72ZlBsa6+nxluqM
	 6JKzLQl8JIEvqxgdK6L4a7WqI8G1UiUn8fLpk7uC6sQDoJNrJNdxD7ZA0+tQ4Xprwg
	 9Qwe3QnYbxaO/n62QLcmlLDQidiLx+gMJDDmZ+or7bWR1fSFhZu8VwYS6iGsIp+VnA
	 r8CdzhN3i09qZKfd/9cVZLs5Q3Qi35vZk4xCzA0LSwZ1udSy1hq5OviHcBkJHs2lcO
	 F/MSmzmZUpkniZ+GfZ/+JB4Tmor4otp6SImTN/Z+VDyFvOZA45GX3Z+ifZtWYsxvo/
	 kuFbXq5g+Wnmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DEEC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319259359.6389.10564525538438194305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a800b7b2dc9fc2852f9363648e814854b482f03bcf593714bfa9266c10f9f4e
Date: Fri, 28 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743192593
