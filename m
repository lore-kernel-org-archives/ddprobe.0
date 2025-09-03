Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7E42E973D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756894194; cv=none; b=N6QjutIii+mkoQKgEGXmOKzW8HRq8WC9Z225IvcSFEvKDJEnCdSLqD7SHp/eIGkrGkS0WHv+n4h54UykgYBX0MMjK2MlkOgZe3ySFVZMJJwhXkDsJkbMnpv79twvY+L42irHGv9xijlzg+uCFPq7K7GQBkM/ic7H5u4dafAAE+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756894194; c=relaxed/simple;
	bh=LbIDpYI7bV7Gh3dHSDeeqxzDMyfv4oE8uzJzryd5ZrI=;
	h=To:Subject:From:Message-Id:Date; b=FSPJrCh/x0mnaFHcrcuHjsXdzkCjY29EMpV1ZP/rb1kusVcdCTdApA8LW8Cgwd+yHEWqB/GHdV/FcdrT0O9H96BKiG9oK0T7S3XgvbS+rl0urvU6upx9krEma95d66Q/+OFVof18vMVIJEwsc8XET/7kYPpcS/2wuigWHTZwROI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRH+tr92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRH+tr92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3F6C4CEFA
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756894193;
	bh=LbIDpYI7bV7Gh3dHSDeeqxzDMyfv4oE8uzJzryd5ZrI=;
	h=To:Subject:From:Date:From;
	b=rRH+tr924zqrdjI8xIumVgY4nrrAnFN1XTwVaIJhGNjgiYz485H1awW9MDT4JZk9F
	 n5RDvfIEgBpcOzEdLnLNum+dQ9F8DU0sL3ZA+DUFxcDTfHOcXRiDX7bv1RoHIHktJJ
	 YQ4gClX6P68k7EM/NQTLBAtBW/XMZVoA7z33BrWDR+HCw/xNnQpGO0LX2QCA8dKt+9
	 /oQCyYknk434Sm7F24HZAiWLYw/vcZTJJRB3Hrx38Kk1Vu1dPgjaMSjJcdOuCnSMKr
	 NTKMbTEocfnSIjhIjm/mkvZ0IdP0ABgtl9J0h9/K0C6ne4tIgf7uvdXXPhgmm2uIpO
	 pvY2J0jvL6irA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B2CA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689419361.6195.4918168559748819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353d589c7b320a9a3a0efed844018ff6c07ab1ffb32644aa233c263ccc6a3b78
Date: Wed, 03 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756894193
