Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F88733F8CF
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769635434; cv=none; b=M0TskK3ws9qst8p+qX/55gfpGdTQDFL7DhCagrWjYzlmkYjCLJ52k6zF76AjTv8IAmUssOBwYZQh2eZzcU0gdlLjkzOVnMWM2fuvDxPz+9cTWPc9MZQuKXjkhhMnolXKssIh0QdE4AIyhS3jdoWB9IEucdeMsJzX+e5wjFQ+yiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769635434; c=relaxed/simple;
	bh=hr5UNj062nziDR2bknhf9+UlX8hxuGyUQo5rX78Y0o4=;
	h=To:Subject:From:Message-Id:Date; b=uVow0eMAPJbehAPVsjRieu5fEMTABh586mo4zHOfL0y7KjT4MhHCNA8JqPYMGno+8dIbDIMc5d40anmFZ435HdD7/ip9pvE/EHpcJ7WxGvKNFwSHqQVZ/eUGn1b+KrqC96VG3LkExGjyJOXE1M0CgbY06V2l84lmGuFb69uE/iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRWerTqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRWerTqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769635433;
	bh=hr5UNj062nziDR2bknhf9+UlX8hxuGyUQo5rX78Y0o4=;
	h=To:Subject:From:Date:From;
	b=sRWerTqgdmtS/X6jkJ4OZYiYqaFyLRYgoFQzUElocv7ZqeCJd1Cv+z+q47jP94GLh
	 mfam0W1KZHefjAudbtTnHw8SScS6WANifARGnTTKs3vU0mPGmR6HGb/JdVd2vT09+6
	 Q0c7cWtESETN0C0aT8AcUwj/ot6cG/tXfXhomjtYj/kLtM9pDN/1gj1ssFkLm1bdQF
	 paiLRQHJrIUHxnJn/r7KE/Xp4KhAUNcNqTkywFddwjVYZ/xXWZU/geFn7NeHuzJKpv
	 vV01NxSbTLIy17+ZzXJkPmvnwyCQLKl7PyLzjgHMo4ZMQVFcJ2vZ7/k4oV23ER4N8G
	 x5Y2T0xwq1j7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90572D46BFA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963543358.23668.1231244096797351532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f472853f8eab1ec8f6a9502985c1be3b9d39f7d35e77fa9bc27810d761265f
Date: Wed, 28 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769635433
