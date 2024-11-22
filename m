Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243B222339
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732296954; cv=none; b=SWgzq4+UvXZMjgV2aiBDjBGoq53H+uU8tMaHQpwN8m4IZhG62aUtU93DBuCCz7RbcIp42HwgjfwX0579J1EeyVRE7c4WodEUjCqnjm8aYKCA8t5z64BktsVMQYbuo4dGyb47DJncn5XrNjn8GUycEVFsT4D28hbYr15HoPY8+0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732296954; c=relaxed/simple;
	bh=7jFcDlXW5QP/gzq1Xv+kIvz65NBXtQ4VPnOlqICR4Nc=;
	h=To:Subject:From:Message-Id:Date; b=f+e3dE8letPVJmlTizqr3JYHqRDwjQEieOuayZpFPi8Gx3R5yXiCsB7rcQElqoq4SpDHH09HzJg86qd+AOLDOzfTWtQTxJ7lv2bngJmBwz1mHuzCN4rmcZj3G3N41pxpkE6NFt253SNoTE/7PbnR2Ud/qhYfyYAjVpJoaFaAPJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knb2ViIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knb2ViIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F5BC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732296953;
	bh=7jFcDlXW5QP/gzq1Xv+kIvz65NBXtQ4VPnOlqICR4Nc=;
	h=To:Subject:From:Date:From;
	b=knb2ViIAaJbmo+k6abLwnBHoBpJU8RCciGsDXEl/kktd69LjTbcDTPw2tolhXg5lJ
	 D7VulvZ1ZYYc/Q0FLfDsxLpp2XQ8TPWFaCyQ0cAVcZ0k/oq8yj77MbqK8KJ0QwH58B
	 dz6iJDBYTmahfDb+5rG0zG1MCPac4LG+hLbv3TzEhgiH/H0vTZdt3T4Iq8SSWnGrRu
	 xgjK9KQ7g+MNx/K6e0RhfeJCQaQjfK836t6H6jITBz0zHWSckIw21ogiuXZonKnRnz
	 u1VrnV9jxhwTqHvYvq6YRL+kE7gUDcCKlWkvL0gV2QSnZXALLoBp1AJ3dryqcxmrkl
	 WuuZ4UEBytt4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E587E69183
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229695363.11165.16347102012658329532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196e739b8c5ba608405899dfb0ecd81a58ccac8958eed192be77e847d88062ee
Date: Fri, 22 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732296953
