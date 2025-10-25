Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4135118A6A5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761369594; cv=none; b=tcKXFqiMDi3PmrUYkVdvJAXQPG20V9BFEyAmcX++iMwM0xxNKQhLdEXvlzEpNuINAIT97WGugvgzoJt0detWAMMZWQTQklerzIkDb0G1yLGxlSMRuQfXQWEQkKh/7rKN5QoktvzLbR00lICxDUPB6vLMD7o0UVGgKpuOkcsk6Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761369594; c=relaxed/simple;
	bh=q+O7Eg8LBwIdHS+2Sg9d1fLzrgRUcUrG1JONVD3XUBc=;
	h=To:Subject:From:Message-Id:Date; b=UHBDL6h6I5cTUwRFhlIIVvX4QC5GJLfOgiF36Axvqjo3Y/xs4cgqePJk8XGZ9PpyY80utldY3Zs+BdjVelp1RMjQ3HaVN6BYKVGLVMPwyMXu+xDPY9kZDXIrk4GncvV4BBqN34L9nJwlwMkJS6Ir+NQtyvE+3ZAyrIeKj/46nCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRoitVTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRoitVTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA018C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761369593;
	bh=q+O7Eg8LBwIdHS+2Sg9d1fLzrgRUcUrG1JONVD3XUBc=;
	h=To:Subject:From:Date:From;
	b=JRoitVTFRbf9p5hiziHwYTmJc5/3pZ5x2gnH+v6Bz88mP+UICVfaSqo7KhSNUHaU1
	 t7HWcQ3ng2nbVxod7cSnPXqd2aO22axYqRZKEAWXuOSByHna07S/G+VgbHp0FuhjN6
	 4Et6dU6rVv8FyITtwc6fmhXQ5CV63UoAUQczJmCCKT4Ffc51nHBpG+siJn+f/5gtqZ
	 Mod+cx6O4rvEwjLsceOJQowv+wMdQ0+UXJgM3K4iRpetayBzieW9T+5yiVAd25cPgT
	 PLEo+XSmuOVGnZ6xh9/7XY7bDEyN0N9TqRIh5p6jsGiZrLNet+DUw/9TlofVnK5U+V
	 EiwTn7QTQgaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92455CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136959357.12708.9868240721792932713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41c687e3abc05c3bb54b5418584dc057f7f5dc714a326f4dacb19f658fe237b
Date: Sat, 25 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761369593
