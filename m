Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D908500940
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768139634; cv=none; b=T0ZQ16+HRr4VEe4gvP147udbAsZCe3VfNam4pgr+6oTU85l0vzRyfJeNZW9LYFmnw9st6mn4teAjzq9EihMU4rmOqVtfyAcGhkNCoFgsNvu404aAd0tOiDJhNcgG+rBRy+3KkddPyanwcptieE/YETcEvdQLxWsOoBnJIYnfEu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768139634; c=relaxed/simple;
	bh=tyTD315j2iZ6ZFMdY1s0KM+vjklk2Ghj8Ll6wYlx/AE=;
	h=To:Subject:From:Message-Id:Date; b=QVNNwkLUEXiYUBJ/CMSmGZjTGTH7OOq2RsaWUt+nHQ/KyqlpucjHN5oeOzqQrcQF6p1q/iEPBe9JPEWiNPoBnmKZIeiGbYcj9P+l5z+Y/Ly/Pk2ZDo44LaiRA6KNhGGjgm5qvjCingPlr2+JzDOVdaFZegWJvZgsHuuyURdA9K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPhXOjKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPhXOjKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768139633;
	bh=tyTD315j2iZ6ZFMdY1s0KM+vjklk2Ghj8Ll6wYlx/AE=;
	h=To:Subject:From:Date:From;
	b=OPhXOjKQU01N9l4B+Kwfdf0e/HdVrc/SPLGB2nsUUdJKQX6v+E/naTNjM1jKPCgS5
	 S6QrhnLS3rDycv1eDzgPP8OzLX3kPYiuzVYhTzQiSETqHvtWY9zTBXfm5AJNWBF5Zm
	 Ze5wxkrCFjhbfO9rzNe52mqzgXiDfvBFpjP+Wue8ifVFNOupVp+7rVJRvOhG+IZwr1
	 1QUjy8C20stZv5Qcz3GLOBLZxW1RATVDiTri8OkKL84+oxDoHj+0/EiCKzwSgBLpdm
	 t98MPKheuJvfHry0ob9xnvK742wudHCbrqJyFOUw4kyNIg5bj0BIDmJRUwIW0mbA5b
	 m9Qrzh4/oZ8Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D0FD2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813963357.830.11165821159040839379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b4e0d069967e2f5b4ec374f79a16442d4f4ff521a56be0e6ae15a5836ca5cc
Date: Sun, 11 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768139633
