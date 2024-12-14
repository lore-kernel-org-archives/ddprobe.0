Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52857946C
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734208554; cv=none; b=Tr6F31wGN9h7Dl9Dg1NJD2i9LddloY2PPC91J59UO384i+doaHI/ds/c4ewvYOazBZNsl7aCDqRPRrwiJ9meVpJHtGKYUot6YQdLbfgxgjQyLr1To1AENt9wDxf+NtQ4LNRbd69RaxnBegSWIgSC7WWFWEq5AQh/8sSjS2ZPZLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734208554; c=relaxed/simple;
	bh=c+WZUJx4x/rMYPnFhseDW35iOXS/2Om/4YP8puNkH/U=;
	h=To:Subject:From:Message-Id:Date; b=BNJC93yKFLdefMECNvsTvstPSrNY/tySkoE5f2eheAT6zEMbL8JkVR/jQXsrLmgcyq1pbE8VOKP9FIm8Q+Axu7NFzNZch5eQfC6C0i20tZaWYiGnWhW3gE4qxw3awMJGKHmyL/1+qTYyjCratKjdi7Sne4/JU+3Dp4BX5Qs+qVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmgUIDMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmgUIDMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D54C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734208553;
	bh=c+WZUJx4x/rMYPnFhseDW35iOXS/2Om/4YP8puNkH/U=;
	h=To:Subject:From:Date:From;
	b=AmgUIDMB2HAakFnwVsC8VF1upf1FIkxI9N6KTfdcXiIvPucir0lcOLPX0VSxjQKdW
	 SETc4aTyOEppkI/RyPzt5wEYwzrMrRiyINlpEdIjiHv9X+e134VcEls/u+VAZK0I/G
	 4kj7dDBsSNx8SUM2FOFz5yFKneeeUDfUL63/ROtBgrsRAX4O0+1nMGc24kNx7/6V46
	 IPzfxR9OshexAWhcdbj9dG+lEGrSXGQEW6AQrcv04636MhKV3A/SVM1xHERAGZnjem
	 PezOu11LOcRX4qzjbzlAPXrV3vfOUCjtsNpfEak1Z32vHhGJwDlXWuU/iBqTuaABr8
	 5zKKQnP2hk9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2426E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420855361.19383.12272413890856785958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfadcdc533b4351adf39a99fa251489ac2e92b53c17703af207bbf262725ff8
Date: Sat, 14 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734208553
