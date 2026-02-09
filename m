Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2D6217F31
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770670434; cv=none; b=XlBDWUR2XTw6UWQC9cm5n6BWDG5IH0QxX0Zl+Eu1g8AhZb806k/1T366laittQAzI/jP77ScbW2lskFTF7xNNOKPpDXE53FiXqQkr+9egjoJG4Mwi5+3wSIz1QCpCiTrxWihA7FnGIrvuXtIlf7LPnl9xsrlBTXnF2cFayVxzhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770670434; c=relaxed/simple;
	bh=bGvymJ3fPFYCc2WZPqclZDep+YqlQzNbf+8nElcYKK8=;
	h=To:Subject:From:Message-Id:Date; b=rHpw7eSJ+rTiKNg7/IU+rGcep36qZEBMY0z7IvvGCCs/BwcIFsKy4Xpu5b8qB22fOowvvpqaavkJTIYjx/IqhWfXZTWXW8Snaol3mTt7vhLuU+8zJWi7Q2gRkM8Z+mKRu/SwSus31W9vJi3PfbQiOuwer0YwUOl4PY+0MVPH3jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYxdf+7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYxdf+7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDB6C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770670433;
	bh=bGvymJ3fPFYCc2WZPqclZDep+YqlQzNbf+8nElcYKK8=;
	h=To:Subject:From:Date:From;
	b=QYxdf+7GknaFE3imtximMRsPaL/ZFFs2j/6OSC++IjLMWcc9KgxgMshJiin6Op+WR
	 DMdsoEDdL1ytISnJ0mBrSKi9cXe2DpF6m4IZ6NcTLN4EfjfQkYCC6/9csi9IxNPcjL
	 +4blXkrQUvIeVfCveP1V7TwOU5qPGv3y4QKQXIRIOr06GLnKGzXWXVk8pA7veZdTaT
	 qcOcA33vTv5q32XriP331AlaJjdHOPEGa+LwW3U6K/sz1kIcpphhwtoF5M+Rt5+QnK
	 2DdNHfCVjiRb/zi/zRa2Qj9Lsugcw4RPd55/kt4FIZeq7s1JZA1PXXn6K/ac0N3GaM
	 5CtI9d3MUdYuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60E5E94605
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067043364.21865.4223717484272200378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3db2c4d498c6095359c48aa47248c1f9f2198690b805452cf2a7ab00800b188
Date: Mon, 09 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770670433
