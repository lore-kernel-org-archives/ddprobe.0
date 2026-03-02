Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1631C331A65
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772442894; cv=none; b=GXdo7GgCqGVJDUK9Nism2yEHbUGpMvzJd4fv5V/WUo7qlJKramHDqHawbvD7H2Ptvk/9gjqOXM2exAxc7446cyYQYXvgbZqr/TYptWzOasu1XREZaXR87k4yVYhtVRARCCqONCnNQ3XUE1qQC1GVo6AMFV6smSwQ7GU3sSZwqII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772442894; c=relaxed/simple;
	bh=doqISP8ydlfaAmh+5yUACxH0cES+Yy7CwAIHGRxvDSg=;
	h=To:Subject:From:Message-Id:Date; b=ObhCbILTva92Fkbwa25moZqiCaGbPfp72/upett8zj/GelH3200ATZdEfsUilH++T4Dl7GzY28rd7Y06PkqtYxhYvjqYVz/cZz2FFON2nJYdRHp+4y2wpQpLIcZdOia49O6JL3uRI51Exb77Ov7dk4I5E1Uwk16IsE6m57MXXMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqUcEIjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqUcEIjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5ECC2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772442893;
	bh=doqISP8ydlfaAmh+5yUACxH0cES+Yy7CwAIHGRxvDSg=;
	h=To:Subject:From:Date:From;
	b=fqUcEIjzKNVQ6fFsCY3dqtnHppdVrZUVUUAeH3NLk25K+cDzgJXG4e2ds7VIs1TCO
	 OajtLlkSUAI9StNitfMLIjtV0tuvr+z8FyH2uJ3aPo5Yfg/Rvt/Iz92Gh5FOGHsVu3
	 b4kau8mVbXh1s//MlJqBKtZwjZG+fbq1Ql2+msMMXNCQJdnrPzMXknpXZUtXXc+L+h
	 u99rMogdGkwhjpEcMTKt6b4Lo6ILFb/kC/+bCO6da0t9qJhSY+jgexcM8+GNThZnZa
	 9DwntuII7CzbGMWykuv/WKh4Q3H/H8tqlIQBvBRoh+L2Hljczn8L9vKtI9XwlpV+zv
	 0kTQJLVF09s1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95305C624C2
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244289360.5383.7598558470182054412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448154b6009847fa696d6a22d1244423820b0ffdc5c5d4c4d4cd64dcfc69405a
Date: Mon, 02 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772442893
