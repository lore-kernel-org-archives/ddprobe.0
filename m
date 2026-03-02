Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2FF3F23DD
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772460294; cv=none; b=YlKY+MzEaB/+0QKVY1eRIMgbldh8ZWMo+qABk6Xswn/nJZLE8tnA+0NmMqb2lT6jMna/02gzlDDcGb2vjFO3QyE5tqoTkdM5CU47HMIIAWhpwiGiVkCtgiyfkuG7FPfn3RkwIx77HTrMXmrPMFEWx85NYV52MNyRN+LtWkVwfGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772460294; c=relaxed/simple;
	bh=HPiikeahFglNJAIg95QLTPjT6fGLDza+R170HKbs2nk=;
	h=To:Subject:From:Message-Id:Date; b=oAlxTbSwxKmZnVo4e2jDq+bpqsceVBQh2vVpXqzmcJI0ujB/JfDINC38QH/xGOrLxC6Y/VNkWGBG2huB4QM3XHISvqzx0akuq/BFk6CWA/EDn1GzXabtoUqG5/pBmyaPpmLhB8xoA8ehUhuDnNsaeNmVY5RPVAAqVFOmWoLXmDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4EkGu4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4EkGu4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF7BC2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772460293;
	bh=HPiikeahFglNJAIg95QLTPjT6fGLDza+R170HKbs2nk=;
	h=To:Subject:From:Date:From;
	b=q4EkGu4D5iLAYot7xaD+JN8Dj9mIJKxBo/N9XJG+KiW8kRpT5JfNCt19C7QuXZpBv
	 jGXaG04+FztVjjV42kXmQFe830valzinxbTqgOk9TFRAx35mXY8PsV+TAJOfTpgjtu
	 HnbSWvj+cOYYCYSAXUXhGu2mZGEusz/L5Na0duOl7ffMf4u9oQ3ULvzjkIV6sdd+B/
	 jpmgbQ6RKH2e1DRuogZKg5JUhFMdMNnrIPGR3+uOf4g1DnMq5G9Yg23atG6NZlbFrd
	 EY8VMMmewENtAzE5W5DUzYIyW+eTggVCyafQ15s4S81K8CNeAgmBwZFr11JMvGgGZh
	 GLQLfyIJucD7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8216EA4E08
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246029367.16257.15849954515806912840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9aa2f6596386e8c8a13f9aad5d8de87b63ac764d6438d710ef4584751043cec
Date: Mon, 02 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772460293
