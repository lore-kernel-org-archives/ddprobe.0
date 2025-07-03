Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E85291C37
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751540994; cv=none; b=bR4I8F0ToOnCTUVyk5lch2lH9GEbH60R0JLwFiY9GhASJRt+E5fMj/Jn801+wBJoGq8o+YPm66fSJZ7gQcOv8cVbbWWRfXmbCw9wr/r+rSjXxknUVVJU812IUABgkU+v2GFfJ3A6ghozDIbufaK3r3DyB1qiPK5bCM66hTynxEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751540994; c=relaxed/simple;
	bh=dyu8l+jBXVc3YWtpDs0nj19zHTbBjLMZPjc3nexjEAY=;
	h=To:Subject:From:Message-Id:Date; b=bKWjyQZhEKpytWe7neGM4MpL1TQ7u0NpYGW61tkRgvZtIapD8SZwO2TjmvgjTQyMaXeEvs71WXUGtH94FyYF5yCN5nGMWsMb+qKjTHar8Jh0esaGT+D5lvbqyL5hp7cf/areOq2uXMHmbJLbkiDfg7h/gvuQXl3DNq0TfbC8z0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0g0YXHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0g0YXHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0F6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751540993;
	bh=dyu8l+jBXVc3YWtpDs0nj19zHTbBjLMZPjc3nexjEAY=;
	h=To:Subject:From:Date:From;
	b=a0g0YXHAqB9TNSRqSKc1GU6A1csqtkzhVZghvUj1d9y73EclvtFt3nfcsO5G9eWtp
	 6S9nIxJ3sFh/r2qFJ5cPagfBc9xiDZAjxQ1fDICSn8fEfixLy6z5GKsdO+7Onwqw4C
	 5FbcnlVwmsebmIn1l0BCXiRnb6gNFmf9SJOZoo9LddqH8HxN9U2YZc9is9c6s90l5V
	 3B/v4YCmM2Fm2pRDu1d5w3eEVysiwMSnVWKD7RBkChtFmV5+SIeNo9CJhkh/0wG2jn
	 tvDLQo/irypj8qVY8b+qW2h3+VRsPotGAbPILTShK04WxiocPx7NaPJx3u1k9K0hTr
	 cZ9hwS01BBMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEB7C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154099357.6139.17160157547350912512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0401825745a020534b7842d96bf8b13b6a8d1b0ec1d2de0d3d731d88a8096438
Date: Thu, 03 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751540993
