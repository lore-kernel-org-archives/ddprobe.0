Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C1034545
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746055796; cv=none; b=PbnoJdFkglQQlHXvmGtVgXAhgSsOoaymNEziKoex4yOCThG8pPFfkDEywgdbJ81prndhONetLCIKdGHkSSNnx7379FcMa5xLpKFv9/A2q5+wefAu9xy0BVon9SBqtnqSmuRYd/nuQWIvhYisIdpfAGU+n7EiJpXGPAujyLQg87Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746055796; c=relaxed/simple;
	bh=Lq6l8ZA+Jv/cL7zL/00otVIk1uCcfN/Yu59Ut2h4Jvc=;
	h=To:Subject:From:Message-Id:Date; b=stbdzbdyO+0xfGvNtfdh2JHD8B7VIn9oJADsEoLWDX744i+A9wtzTdrZaJG85BVfBBLyVfCk0GKFFgLtsbMxDTKlnmyyjCDYZcx7hj12jNzNpm9Uw5g0KwVVsFryCtpGcEKK+99GVtbrh2NIzuDOC58YL9okGeJmOw0/l6OHNOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CO2nrwvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO2nrwvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40B3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746055793;
	bh=Lq6l8ZA+Jv/cL7zL/00otVIk1uCcfN/Yu59Ut2h4Jvc=;
	h=To:Subject:From:Date:From;
	b=CO2nrwvyJLG9niBz5XxuV9d8l35fIY0PX67SpsnWc6/gQgyRzx9qTX4sMSCoW7PKC
	 yg5BUXrzYIaNyktNglMHdNzoPbwzDXeGGbSZgHAZnJYpToMf+hQXhHU0G0yMS2d9dt
	 mw7hvXsMGAVYpZi7QlOeRm/dHbthZOrodizwA4MGrTOl0LcE6HhQbjJwSEoApNqdBT
	 G9OVcUI47dBH0Fua7E2XLT9rgJQPY65VBsSULqjKh2IKLmW0xFAKfuUC/UfW89dum6
	 0l4bi9x96FFZXKzblOu/frGeV/2triHH+tWJUsMzojyodSisgWeDlnep54Yk2SSjC4
	 iMl6xI2q/9tIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91805C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605579357.31089.12008374367285947178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a8ad6e7595b8e11b09d87dde8bdd07e100ad2bb6f7d64211efb86632764872
Date: Wed, 30 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746055793
