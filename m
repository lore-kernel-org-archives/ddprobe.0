Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EC13438BB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785373834; cv=none; b=e/66N1tzwQDBr8lzJSEug8XD/AiIGAtpWJWxIz15Z4G3+C+8zrk5leZxjKAtK8DTqWVqJtqvUpl0dFPwf/XyArNteODoycsvtuuGLkJ9UKAIUo+Fsd5xTS5vf1sRfuupqSTY/KfbO3KbnJHLDGhzcnxY3YhgVNjhYJI7XfIHHZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785373834; c=relaxed/simple;
	bh=7xU/8PCLAa90izvajuY9p1JqB1b2qULLxKcYurrk+Yk=;
	h=To:Subject:From:Message-Id:Date; b=YWEUvaUwAIES0ThDujx4L7WXnP6Ii8FckpdwNXXjnS2JY5CQAALdOoAfEHrXhBdwM43w5lrHtqiiQwYh7w23aB22bRhtsDbZFjRe8RuEVxDATGUq1lAMrpMe1gWvZeGBzECghgMzLlKQ7RrWcd7Au3v910/wZXpVbdXWypEQXhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7QZt5mO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7QZt5mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE573C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785373833;
	bh=7xU/8PCLAa90izvajuY9p1JqB1b2qULLxKcYurrk+Yk=;
	h=To:Subject:From:Date:From;
	b=D7QZt5mOnJOp8IRsKgCVJe0XzM1vEOecrvaPgTK1+As2o7Re0P6D7q/4pCk7Fk6d8
	 DCsA1+mL2ZabOzJOiZ2cMPlGAzaNp4WcyswGELiJ7RMoUVxHrjWZsa57FQRgpyCMKa
	 ggzI7rNtrGiwH73x1NTx6dv0IZa3/ZbGc4MTdg0lA8j+utf6ars9CgLqubPZp8gniD
	 oNobcGSTQ1SX3D/ZAS1aNWTSxNoW4E2685c4Q/gH098LjlLkNc5G/Jba1qvip4c6mC
	 w6VxOTjaCg8C+g66t8IUDW2jz1Du+sGl2Fo6tKPVnUWnV76XRRTt6BG1dLT9Xklb2u
	 xeb1ogJ8PN6gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89EC53200
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537383369.14410.10587213548596142720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5c805b25403b28bd9facdcd82bfc5e37c1a3f002b405581033e0dec3ad30f7
Date: Thu, 30 Jul 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785373833
