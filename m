Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D06299948
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776764254; cv=none; b=URU8+UX4rHraVgGAoDl/tVyC29BdkI2MaWttfgI66/7mI+Y1y6/haEEMsANHlLI+L2ubI5MiJnTXJRoelOTjBOyVkhsNs05Bhq6mg4GYL3/tQk1epNqZae8JDMI0iCoIsnmVPPM0xT7eulwtVCEvinE9C5zoW71VoFu4Wtaqy4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776764254; c=relaxed/simple;
	bh=4hMMxXxc7KxTxutG4QpMB00l+4oSlB1ayCwunuwsdG4=;
	h=To:Subject:From:Message-Id:Date; b=J75n1cLA4t3qKT7nisjPLxNwbPpJOqOBKizgJB+f4qzuIyA6IGa3ZGTvI3kSvrY3717Am5j1l4DoUpt8uEW+EHL7Dm5pXyp/rz4lqNVNrH8s8MaO91BR5DvY32efVND0yNc756rbV5eo1eKR2IJ7HiRYMsSz3qdw27DNpHx39UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPmJyQUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPmJyQUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71D8C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776764253;
	bh=4hMMxXxc7KxTxutG4QpMB00l+4oSlB1ayCwunuwsdG4=;
	h=To:Subject:From:Date:From;
	b=JPmJyQUU6RGJgN7qxRtokugDrmPMAD7PEg8mIHJHc1/hQqv/NYhusc/sX+UERjD3p
	 jbDKu33X5tMTD2mxDJy9rBofbrbZiV1/9o3pZBjpgz5bN/eNKoyYfrpdMiDSmo9KME
	 SVXU/acWpXRfzxXqdu6dROCRJBeNWbgGPdkkLvWdlqTqbS716gbpK8uZyJeJ8WjwY2
	 7z+x1n6unoWhSWtOQpPztWvHF7ZDtSJTJt9OlMhsXCa0hvewkYzsyJ7TX36uypNArO
	 V2YrEUycEMoYmGgHvGu/dyrffUEEzDujeTto2XR/32BIUq8Y/G03Vuon/PS+Yw2Z53
	 8GiWlBUSxU1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE24BF327CE
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676425370.6827.16726809120934975935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f252505fde3bbaf7b9a001a8e030ef1e34b62dd76db347244b37a74ed79839df
Date: Tue, 21 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776764253
