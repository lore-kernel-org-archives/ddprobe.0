Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D641FC7C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733352954; cv=none; b=mUU1vE1+KYTBL2JQVvO6d0XPnUlQ1rrWPay7saYHw1BiX7nvuZzDaSBXDvBX9jkaqu81Cip8ZiUe4eVgPksrFsoQNuAth+U2bY6oESqHjPYQEbe24ppSL1+Bn0Aw6GaPvR+6dRzTP4l7EXJctugIcY58G950YDyq82rBnLAMuOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733352954; c=relaxed/simple;
	bh=oBffnkAwALI/GjX//NEMy/9x8/3UZzgAYPLqPgoGyXU=;
	h=To:Subject:From:Message-Id:Date; b=YOtgQBhL14usJRayMv+rfI3yY+LqipXZpx33ZFhmIO5pp94sLMjL33WfVXMpYjbZkONJGAe2C7D6ZammsLJO/jYcTN6pc6B0nOnsWtVXj91iBFir0v44YiFoiJ4eshM9JII2vIhbm2MCE+1XKnZSSb14ieCBp8NgY5iflHa6Cw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJGjkfJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJGjkfJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6023C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733352953;
	bh=oBffnkAwALI/GjX//NEMy/9x8/3UZzgAYPLqPgoGyXU=;
	h=To:Subject:From:Date:From;
	b=nJGjkfJoHgHBR02TWXx1vEjho0pXgveG8mzrc7mkpkyrlgEO5HE/G4n9GwsKX64Kl
	 WFhaqY+IT8pN9tq2bDlYXGY8eiXDT8Uog+ejSA9EJHEamo97tnoPbcMeikOQ7p4lm5
	 zTlKnBrWVBDvT6+HlqhVoJLidnJnYPaGynjqnF6cmrgZCRYiMtzZJhdnX2HnOh/eZU
	 WYp2eNCQJTfI5/lsh+sF2tXJdRuKB1C0Fk8LM8w+IN+MDVa7OP05cqRjA4Yws00U6Y
	 5nup3CCMCWbFi5J200MFnpuaXRg6gMZNcTv29d9EPLDoU0UXoG256hZt0SDQoVp/st
	 lvOin0jF0KQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F0E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173335295360.6472.12482696509685152895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124e99396718daa1341d8106ba4f2c242206561cc3228f7576e8b5c2eef7c538
Date: Wed, 04 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733352953
