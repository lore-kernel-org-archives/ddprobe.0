Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ED32AE8D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773555294; cv=none; b=P8PcuEq/JspWkDjfdYjunErIoL6Tlp+gBahb0HXgGBu5R5MHYLBn6Whz2TMTdH8AAqecxvSbDOpOmanMSn0GLPe+rytLDOxtVaojdkOzvxRnEpJMMMj7zTrNBqPiWea/xI7IskjDRyIyZ1FEZH/ZnMpGFTnsGdHlcXewDyHku1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773555294; c=relaxed/simple;
	bh=t/0izievKvhCQi2BHpn6fIdznZ6ZP9H8YcmYjxV5m0w=;
	h=To:Subject:From:Message-Id:Date; b=nqgST76OqPctN0SmzArbLEfz3TAyZJTNnZUgAAjiSfJc325iFxc3FILbyTc0m47rC6MIyGgsdHoaHV+dlp0aXdN/RnNDM0cgIsB8VxL1vniziGIfYJ9NXCmrNdcIJXrjnvlAD08NN+oo2kCP+UW0efnYSJ8b7uQ/lx1ZplhOcmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwj9d93O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwj9d93O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC70C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773555293;
	bh=t/0izievKvhCQi2BHpn6fIdznZ6ZP9H8YcmYjxV5m0w=;
	h=To:Subject:From:Date:From;
	b=nwj9d93Ocz7JCkocpOVnQITGrmDtH6e1yTGiHFEF7+rkxyuw5aWXQp3oZ+fT8gZhG
	 P8sGS6jzNRc3X+4UmRBr6oRrHaFLUA6shvU+gTpkAlI88SSkgmLfig4UYL10cBEJei
	 RyKJtc5+BuYNo6TjvsjYAedz8cm0bQsJdxtiV95oHLqyYGMQB5AEPOJUe74sLcFxjM
	 rgn+SUxCgN35af4pyxnH4OujwCHQHFQ6dltCkzwORUFTUf1oBDDF9aTw2rUfkJPA0Q
	 llYnmkmcpiW4aipZAPGu5cGse3FK4k7D6He85dty2W7T+Zpa/vpUzBVwfLLuh+S5vZ
	 +xsfmN84oXb3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9756BD58B0B
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355529359.25321.10324101668041338711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f9dc9d56632e776230a9987a87687c0e75ef16fb191e2ea9eb3b5c5bdadaf3
Date: Sun, 15 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773555293
