Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5329D64B
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714978943; cv=none; b=gZZ8Rn5LSNhpWWREfOLPX82kPEE5bM5p8iMLcFWcgmVe4tJKb0g7/7fwmZhaWPnqaZRZX2dNkqUZcY/YkJ2jhTqHvhsiRUXVFAXE5IdNunZ26dWxPBp7FiRwcn8TTCYtPsl5AJYSkkCpT6yCd45wPN0lZQwV/WjKoZRRq63mkag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714978943; c=relaxed/simple;
	bh=sUzy24aTXvUm+zG9uySFw5Xwpr247wjj7ejkQdE3WfE=;
	h=To:Subject:From:Message-Id:Date; b=iYbQiZevbheff1oeeFlVxf9aRYqInLbzLEpdvJtI8Q4ugIM0g9tbByi6aD7Du8anJ9DQ9DMFo3hB4N2RTo+pLPYUSeB36/g9Evqg6mXLEKowfXPmlL/HZwL4brF4Q3b0kMhYcUr/BXSxIsKbVl2fIorust9VwfkiI+W9GeA3lsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKOGinh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKOGinh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AEBC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714978942;
	bh=sUzy24aTXvUm+zG9uySFw5Xwpr247wjj7ejkQdE3WfE=;
	h=To:Subject:From:Date:From;
	b=MKOGinh5i4asyS01AVBuf9UliiqOwxELrXyde44k2cTiYIGhZt5RvMbnc2o8o9VDy
	 GQVIV+oHH5c4AW/ibWWM7fzvrKAL6i7wJWQoE3WwqZrGEscjcZpwcVOHt3feoGlnzg
	 WZVrzOHERxjvoX0BywVUlOmCd4Nw0KAmY/fip37EVnLrEPvnn3B74HLNogpeaUoU9l
	 RQR7jUaSSVKf4PoGH2DZqL3CGIJ8KyrtQpp7RwUFANeoqnIETDGXaLCPkPHIUjwVft
	 Oj40l4IUN3BQmmWp3sk0caXaSPQCAxj31KnGvj7OS1wA3XnNesya30Su/CkybjvHjI
	 X12rxZPmUcgGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCDBC25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497894277.24281.15231136695882787125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a685127eaf9a366adfe8e9798fbf0f4868a17e0f0dafbb395968bd4810aa8d84
Date: Mon, 06 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714978942
