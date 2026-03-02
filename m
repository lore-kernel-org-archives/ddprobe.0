Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552F7421F1B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772466894; cv=none; b=NM/zRohRYTm5IcWk5R2TD73fSBWeXPa4VMVDnf76XlrL26Gg27hwKQOzie22c9KJMIybRoA6fF/rFXGQ+fp+K47vT0NIexrqYd+7Im1VPXZShXWFocljghjxZipzMAsUJQ6cQ7E4nRd3lv/YvtlkKtCozchVu+80iDUa/qjoU1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772466894; c=relaxed/simple;
	bh=o9+6ADiHi36LUb2l7QqXxHy8VFXIK5ZFeWtXqBGroV0=;
	h=To:Subject:From:Message-Id:Date; b=ou4AMmu5TKkFR6G+IFAvdAPXSXlwWPtBCwGEXtHraLX0NKRNPdSNheLHp/+bs7x/biJA52FvC/jMSBZ52zHiusAx5aFMjM+jG3IN+dSst6xjW73OofyoQmMxnYQsCiztTzfnWdzjYldcHA2EKFzEbnjYpz0PrRBofaJ0hteSgYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWIYD7rz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWIYD7rz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB2CC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772466893;
	bh=o9+6ADiHi36LUb2l7QqXxHy8VFXIK5ZFeWtXqBGroV0=;
	h=To:Subject:From:Date:From;
	b=uWIYD7rz/on0P9lvCyXXNMUIgEn6RWn+fgo5oE6TQSwpfKyhO4m8aZIA76M+xoi9d
	 0NsnZdPTvg1RqZzrIbCoHJwZiNYkZ8Y8D/8uj2obnXND8OS7Q6EyaM890SP2RZ54/T
	 D/9FB0QOeDi8LmWb3prUnE6nYqzqdTqUK3UNP8OEQKwL92oaZnrkGwCBgLoe8tN8I+
	 JxXWLf0wtG1ezCEvEr7ZxYNbG09t22vKjT3yJbyLAmbmeX/WdLquZ+B/qj14B/JitR
	 sIT49yWiTr7ydqGCrv1SkdyuRr0sQXQwJqObYRYyx1A0+vw6R6ngVT4R/eIblCSkOq
	 WgN7FsVhgWqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D87EA4E22
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246689370.13604.6021363392928930532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd67b154fcba8066749afa0ae1acc89bcf31203d27b2932eb98b999d5bc9ae6
Date: Mon, 02 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772466893
