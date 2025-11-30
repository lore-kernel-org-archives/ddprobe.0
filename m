Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175561CD2C
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764465774; cv=none; b=ZkCsK10/qvlKebJHzERmwA+O+XQ2eUm3BQhi9xPTP/D89L0QUZnZlI63L9z4es01dmoyzgHAL5whTpFoJSFunSUwQ7tqXhKB5MEdNhQjpU216q7c7f2FTqyMMlD7a5/+2nRKYBHN0ZoBoUIuImlZBRqjxkvTGsWrWN/lNzka+qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764465774; c=relaxed/simple;
	bh=i1ghhmexUOWagRoqjwNCPfT+Ct+xXPh4VZ5qRsyr9cI=;
	h=To:Subject:From:Message-Id:Date; b=ZFepA5JmSwlNkkEhgyQWOe8uTjLbNqnBzUupM3txjSpD9t43EZ80a1+jcjBbEgBWgViGTnezOL3ktMYSuz4D9ONo0x/dDvK8aEBh3OP8cjTAEY2CiuwQzEhj10vEq7vq8t+r64xXXi7+uV7+y/tHLjyFOjserYul+8vFuqAQA8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0GBqpUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0GBqpUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99DBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764465773;
	bh=i1ghhmexUOWagRoqjwNCPfT+Ct+xXPh4VZ5qRsyr9cI=;
	h=To:Subject:From:Date:From;
	b=N0GBqpURtRkQQYE5qXjI9ixtgF3YNrn+egZHf0ZKEN7cYYmfZuz+NaoqieGSDabyw
	 HUU3jhXec1Aq9TCcjF65CQmIaEDUTMZ60N+8Dlad7pvKQf8lsL5pqfyMB0H22Kz71R
	 vbIL79dXhu7si29ZFKjIRYPEyxes6ITgITGDYObhHNPBl9eH9hwh0pB+9Ag6rnsr06
	 H5kh6ajHB7DHKw5xpZBWOlVbST36+zI+QRZKvj4GxtxdKtos+TpWhEc2bt6aGqUMTA
	 8PERL8sQoz2os2rQsg3Z9A1D6JykxoCH8ZxOgMS/6dhF1JVP3krdi7Ior0DUImL/x1
	 TFZDsrWiH1O9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952EFCFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446577359.30530.3552302752282881180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a10e982a493d9ecd532e24fbe7d3a95b028f1299c3d60a7e80a1bd88d90148
Date: Sun, 30 Nov 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764465773
