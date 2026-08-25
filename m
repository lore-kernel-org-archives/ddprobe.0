Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8413438B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787694634; cv=none; b=ADP8+NYNvHxUB7hKRc211thODBQ0shmTpN3xojvigGJWgHkc4mJ/vQFSaNNUFXHm23t0V1mmSBUmyLlYeXJwCSDSO6alDJjjJwRerLyhFZRmOqhCynu8pY7jIW34CtEu+DC/0XKBftQ5H6AEvsK6oNUC7UD1zeAZq8DHeo7Ps1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787694634; c=relaxed/simple;
	bh=vPwLng78iW3zV+vFo4lZ30rYsMBvBncVWipMwKh0e1Y=;
	h=To:Subject:From:Message-Id:Date; b=REvjoXT8TzCIPXkFinh90t12SE7eJ5ufA4KkMLlhggeJOtNHfL4jSJCjebdVZnqhv/6fYyswuWzDnBU82F4OGmPW2W/mW0QOdlg13IKthYuHebdu1+p6sYCsRtQVoNqbNO9NVSoa7ClENCZ6CRCIXmuB7WhY7LvfK7fWwjeEApU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTnKqMRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTnKqMRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23E7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787694633;
	bh=vPwLng78iW3zV+vFo4lZ30rYsMBvBncVWipMwKh0e1Y=;
	h=To:Subject:From:Date:From;
	b=eTnKqMRMxbNuE4yfME1bz4IEHDzUvhs9ClzQPVZMZTjynWQW+i3G3YLIyRJW7rrBG
	 JoeHgsMaeQxQsClFRMWwdele21rp+ewcBObgGYcVqqChLz9qP4d4teUvK2cJYyK6Pa
	 xlNsco2+m8ZM3M5Kr2jPoGRJPwS2YwG5MXzj3Hlq3qfQq0RFpqhAfiet+ZLCx8EOD4
	 QgMaQy4uyd+pOp5jqW83MHF3+g/62fNGxOmV2hG2O1EP8XATB2Y4nc6QUFd8dOtBi2
	 psNmOIxfLDotvB9F6YxNa8tDjDcdJ220LhEgaNfHP91MBLSkHInTUk1W4n7+NUBwcX
	 7+eDbY6rvMkAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4CAC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769463368.5558.4182142916896927375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94550831570696fec0cc937bc06851c74131be26c149a3306b7f00f17998a79d
Date: Tue, 25 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787694633
