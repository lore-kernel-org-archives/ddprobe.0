Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1C520D4FC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771550694; cv=none; b=aFE9R+OrLFx12RSDnhl3wWacuwv/2zpg71J3/nXsKwE+qUT5zR1DD3AVOm61H8yH+ZKSfoOEkvb5PGEHFrPl0AFuDU8QdUp4SBssdIgOmIFnKdZcJrxCuLgsYKb5xBhTcQ/Ijo9GR13gRUX0yVzJlx8KHGyYKLZ8N97R6BudEfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771550694; c=relaxed/simple;
	bh=tl9QhljCtpcC8eQvyP3Cbs6kfSYgFMFYCDDEf8yC06I=;
	h=To:Subject:From:Message-Id:Date; b=NghuyHp6/HcPuE5LMbyo0M6rnmKQ0F/Fn4qRhzAIqVdWnlfFl6S4pX1khM8rxA5ucfi95HOhVMk/07fldC4PBp9cj9J5y5+SeYUCE6nP16KRN186whmnL2QQdJ0VqTNlqd81FeekdYkexxZ31zhi82xXqCOKnJn1E5nmHvghnLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu+FgF9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu+FgF9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40C7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771550693;
	bh=tl9QhljCtpcC8eQvyP3Cbs6kfSYgFMFYCDDEf8yC06I=;
	h=To:Subject:From:Date:From;
	b=fu+FgF9Lc2PsHm/Y6UEdGE0qCeoYAhZv1u8KP/RvBur9WnlEfBBPMOGUxavgLjclk
	 NGiGUIZrzqvUXyvjxe39dmDA7YXY1tWBz8tbCQP6yq09h6MUI3zgtMwbYomI02u24q
	 Wrq8ioWxnHqEbaCt5Z4BlX4aoqoMC/16p+0d0LzZNU57IOXVIYIdB022Wz3uuL8Va1
	 wOkFYtMZ4Qw7TUaJJQ0tqrGXqL5J0kqwIez38pqKiRILaZ8MEPlhcneiYUqOlVx0g8
	 sT+p0KbLUUrz+fsUaO5V52a27mEkOhe6HWN24jDoTt7JAxuIibrmtpcqk0G7hJdwur
	 4DiBw9ei6ae4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A56E9A05B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155069360.12287.5307282223461521790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f994ea3dffde57d43a3b17d32d84d7a021d8494bacad1e194ade2a1d2048329
Date: Fri, 20 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771550693
