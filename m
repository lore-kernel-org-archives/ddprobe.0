Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBED1EB184
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743504595; cv=none; b=ID6UGerXHUsruYM/EWcKucGYmaK1lRu8arXP0afevf7Z9IhNfZxD5empp4++8K88s3oJL0zNW7SXladxyRvTJG+v23dHNhNynVl2Xt1vF5b6VBrBeWpf+CMLhlGyvssL6hdGR6VkJ+jVWirRjXRb664V/i/dxOiRWHoXtCaVMXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743504595; c=relaxed/simple;
	bh=tp1DMgvlLu3XL3r7Twe2TfZEcphMf19ezfX3jylVyRg=;
	h=To:Subject:From:Message-Id:Date; b=ispVIcms5wX607iDuKRba5j0Ji3K04hBroksE4+DBNMIVh401inDfi49UbY5wHgaujEATrVhIgHbx6DCWdJqn6E9Kqu07K5FkDqJpvqlvAhLmVB9Ath5WwNT5EScCChMutlwcWsL9BjHIurSwG65uSXamGWJ2scJl6D61fpYKSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJHNHZXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJHNHZXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A06C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743504593;
	bh=tp1DMgvlLu3XL3r7Twe2TfZEcphMf19ezfX3jylVyRg=;
	h=To:Subject:From:Date:From;
	b=TJHNHZXiwFHpAzB74qfNDBYQuNW1YCurqNTAtsvy62YLJmIHWa5lwpjp/3tT0AF04
	 cfA/YwCxQmk9/uy5mcye9600bdQdL+A3Lgjz9A9x2D8zzXMF10nL1mWKIpW2f4swtF
	 /kgCVXY3pbHDV38Jqx78n1RfW2EseIHDF/jZY8GtM2sO4xLbliagSq76z5M+OQTU3X
	 /l3J4CcUd/vO6Ix6C2gTbX+dODn78I4X2TDoLy19lqzUWfok9CX0K5i0tpvUh1lUbM
	 0KiJynTq+kZSYAnhq30HiClv5olxhfyBUxn7TDEZhPXt5AoJtFW5SukcpILw0d6I+0
	 UV5QqlFzo42hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963F1C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350459360.953.5993380321321370254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc13a9fbb103a08b0bce4bfbd3854d26fca3cf1b7ecdca62e83926c7e643f6a
Date: Tue, 01 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743504593
