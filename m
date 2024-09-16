Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F02815350B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726484154; cv=none; b=YrClBeyMmbIibRXm7gO55DNZm1xWudjZtn8YdPm8UNq2UH/88nYLppXlMClrPCiB/WsxzqttrigVQdovUuH8yRHQcnWGY9qIgnNLdj0UmQ8Pfs110dkga9W/eRJJR28Jxw1ha1LInJMCp3gmxqJrNiwS6tuI1Dr2NfaqRfVbwF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726484154; c=relaxed/simple;
	bh=CbL7O+XDOtBfOI6SrL+5RnK+JSTFaJ2jtnDDbiyNrUI=;
	h=To:Subject:From:Message-Id:Date; b=BLKiSDTK9ny1U1of/PWCJGaiJgCLIRzKNDtksVILIPUeT1o43bffv3SUnk688oTz/T2fCsnAUsnpKEHUepJ+4G34YScZ6OAhTu9Um82wiYV9ZmaDbelkEkXbCk1EFBQXtTyF1oqZ1vEDazDZn2HCuIg2HDJGPPXn6rd9LMHl9C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqCvpFKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqCvpFKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CAC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726484153;
	bh=CbL7O+XDOtBfOI6SrL+5RnK+JSTFaJ2jtnDDbiyNrUI=;
	h=To:Subject:From:Date:From;
	b=KqCvpFKgbHfrE5PvCi0kLuXr7q/Zf+PrMK+FRZ/55Vn/f05mNrngQEwyOihk07fme
	 cApQCsEGPM7+W/ATUyS130XI0AHu3cS1ZjDum6D+/VWHAWxjJsidAGxS9qgqji8+gI
	 I1hlLEUIMW/sByElFCV9ZQBxtUe4OzDOTNxRTISBR635Yrv7d3vfaStI15v8SQINI6
	 mGzFRvhdNepZvHCy92f9e4RcPg3DkdZqwDgtqK4z7RnFc8tEabhEXXp/1Xc/8v9wLt
	 lX0p1darRYN3J6Kb+pX1kQOSbNNDGgwXmWrIHSdY3VA8Dma/pn7iriPCgYAO6qehz1
	 NMyXBXvCA59Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971CEC3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172648415358.25122.7928316151536397106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0520a6b74beb849988dc3bd0cbb0cabc9549375e302f29bd40694072faf85a
Date: Mon, 16 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726484153
