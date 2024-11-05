Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F4E1D4615
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730805954; cv=none; b=EETqeY9yJ/yGqccl3cU+NpWRkd2G7fg8GFDFhGDDYit7L6Cq40Seq53q5/X/f2GoD2onbuSDU6zHAZ+LxVBfXOfhMpx9RxAK+x4leVQn1K1V1IJSHeXmDJUUedPOsZ05ccGHbVS2or33S1/qnYFL5svBvSowv3sUGNVZPfByVmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730805954; c=relaxed/simple;
	bh=STgBrlWytURBVjxF/Pr7f8cmNZp9E9o152tAw4qtSlk=;
	h=To:Subject:From:Message-Id:Date; b=iQ/ACeCLRkRUgWG2lo2F36qmvUbucA1ZnL68Skirv7IdmdJsWNFSsNt3wDPjNZ4glAHgg/wRcao09Kip87099T6qWxYOFY9+p6ZZtxqptL5E0eEj6M9YnhBTKqBTr09uzs1aAsVeDrGQ0yS/ui1B8AFErK+7KBqAFDyV2wSpQ0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZZVQnmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZZVQnmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A414FC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730805953;
	bh=STgBrlWytURBVjxF/Pr7f8cmNZp9E9o152tAw4qtSlk=;
	h=To:Subject:From:Date:From;
	b=WZZVQnmhmmB6akVO01C1sYNPStp/FrkTcBZo1gJ9jEw0CYPwfeNpO7QFfRJJx2Xip
	 iyLxJRejiIkHnnbxc7gqFqNCCV/y7iYR1Sn/D1K1sZKoJP+d0pg/wRHps4m6WX+sPn
	 5s0phD9v/XYBvSBA6kRu7f971qqbXstdoYry6P5po1eUlHt0rPGEfdyKRvkqbeoWiQ
	 3nPsBmnHXc+bHvC+COvFASVDVn1U/Q9R2fp+cFdW4AT+3/eHXyIruDaOtLwpMOXmKy
	 8X4fWL4qelRiJTw3FV7Z5FoRWXhiZ5/ZelYUHbW6urXoU7pmZpsA5eBGtdR90qqYEi
	 BzZeDCUJ04fDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195AD12689
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173080595358.1143.16604222010859732109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee00fdffb13d0b8be2e5e88fb1c005ba479df68f5968ec37edc1870aadd5a6e8
Date: Tue, 05 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730805953
