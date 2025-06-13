Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1117A2F2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749823194; cv=none; b=JehpyBBoTWNNpWsezdewbdoGiLI3kznYitmFb5TujMupfhbxP6QnSyLWU1M/IIsl7cks1vfzmesCSm9R01FblVax0TEp9mhrv8LRzrRYUwzk0tR/Gee5Xxuui4chZn9Fta5SQgMg6xLkpX0SLpg5/PRteC3mqWNbx1Y4X0K0X08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749823194; c=relaxed/simple;
	bh=8DkVWEB4KkV8qlYE0ON33TkTO29trKpqB8nZHK/o0BE=;
	h=To:Subject:From:Message-Id:Date; b=OJjw03xy046dgDgSHWsLLQLqFoAPVodvRgfnwRj3LScGqe4Th6EqEu4ENMNbYYcZUGzlPXotODiomxwx+j6viwGP770xwljC6govg/an6klQ35xIl7C6LuNcrVHBKh+1FISFv2tNlMZuLO+FGf8WtjiZN2vq8K9hOvdkzvtdZ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBV1DhHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBV1DhHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4136C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749823193;
	bh=8DkVWEB4KkV8qlYE0ON33TkTO29trKpqB8nZHK/o0BE=;
	h=To:Subject:From:Date:From;
	b=oBV1DhHHUNIIhkv4ozpWr75DGCZ+1wXxHik+Aw2SFMMUOuwMq46YO4naYCsmPH+PH
	 veq33gN/xFITVYvdCl3hNYTmn14F4WO32vbqaX3/+w/WZ40zpjbcRkc3GTzEY/xZIG
	 c9MFOJq4ku8iyoyklhlgF4jmsobk3y5BmtRFCWFJZhRn6uZ/kIjE9MVTP++1QUvNUj
	 B2gGumEsjK2EUY/FbNqibcxfT66jPUAqepl/eIjAyvqAE++vBbleIQWTSS8nBlKGxB
	 Bbyp1rg+KXdRQdywtVn8PJJohhHQ/Ja4HAmE66u0egnPB+rp2MQ7lDAR6J75BtwtzD
	 11t298GeYozpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9207DC71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982319358.17465.4922951393713432020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376f436af0be3a1e9bf0c3baa68504ce411eb93febcd8e1edca8176c3e18c025
Date: Fri, 13 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749823193
