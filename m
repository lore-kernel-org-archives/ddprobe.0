Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EE32BCF5
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752894594; cv=none; b=QeTxDthO/U09WiGTT2HevGOwrDDhek09Q7yD9elVPJN8MGniAYQcf19MEc1rhKFw1WK1SP21FD+eIDTPfk/hAg45KTxdM7qj5a+FN7q9BHQ6LAsCj/zVIsNWKNJRYh7CxyWLO2sZS+A0D1xubXemVfAREn6QMzpbihHcZBOhpvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752894594; c=relaxed/simple;
	bh=ru1KEsODOxHgI4hKhJDcGPfPVbbz8VKSCXxholyWMek=;
	h=To:Subject:From:Message-Id:Date; b=gDxCG+Ugs3Kr/6oC/Ga4PsLTANuePbviC9rxYMEuuHG2yx5o/Mkkf4fuO6utk9jkDyut079+0Fx0aJC2pxW4qRQ67eD0OaCWf5MNlZi4Lk+RYqbvB6oqqfPxcO+yo5XM8egBdC8BUqLJh07b5FAXsgX4mOURUkpKxGOwZzPtZgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh3H+F6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh3H+F6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F3FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752894593;
	bh=ru1KEsODOxHgI4hKhJDcGPfPVbbz8VKSCXxholyWMek=;
	h=To:Subject:From:Date:From;
	b=sh3H+F6DIgsReEop/IAKsYRppM+y/S4HcbP/KQySgbirm3aKk/cQkrNCmYPEgmJ6F
	 uELTRygM3g2fm2kAA4a4SQlCL1Si8J9hAk/V4dXEG5EElNkCp4Ry573e61POEErqMm
	 KrBfzMDk5qX60HN5mqy/vrWckfWPXFTqho81TIqMHz5vWRvgmtBF8jo+i25HhLrzV2
	 nPBGy2D0HG0t+5B76MAclYFV54K4y40S4wTjPrP26nGxO4npAGRJep6ZKNNHAIipVV
	 /4Xp+NWQ1i/XUIIPsn4lGc0Qf+9j0JE3WnF0EBCT1dGycGzdeXve6b35WGZNvN+l7c
	 HIepdae0cCpcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524AC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289459357.7591.15792827010009277386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ef847515aa0dd3cbc6c8785a35b4710a94f54fddcfb64287ac510f705fc980
Date: Sat, 19 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752894593
