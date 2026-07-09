Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2655D3F5BEE
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783605514; cv=none; b=XjqJkQDeyMNA/dkLkHio1LaDekdkbg78bJ1ynldJH+Dd9MYAogDtcZXMH7w3iN0DiVuFmwLJEdS/o+G57t/uZQWwNYn+gzKEmc0F0/wy8b1EIaQDweR4hyv/Vyd9uRrVZnnP9oybxlSBOhXMVKvHz9BPn86WH3N+tF2W1tHMaeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783605514; c=relaxed/simple;
	bh=7mYR4L8EviACFsWkS5K6vtYaH4ga/k1sv1UYI43Qobw=;
	h=To:Subject:From:Message-Id:Date; b=euo3hRAlhJLrqhcDcpiJuTDAhi0lErmYLL8o9cTY4/7wPXet/YO1nI/HVaCzY5AQrOJG3QkuhSIF2lXNUdFpGyhu+eK5LV1UiCOWx9qtHgMy6iSF9BzNbm7QVbEcEfi01WGqTmwnmPWhYc4R4mulNgM/cQaq/A+BfOp7nJLS3qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvbEi4AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvbEi4AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1C7C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783605513;
	bh=7mYR4L8EviACFsWkS5K6vtYaH4ga/k1sv1UYI43Qobw=;
	h=To:Subject:From:Date:From;
	b=MvbEi4AHMhUBKuz8ZqSO9b5SaAq3dyyTsMoR6nPe4y2lwAhABb/WO6na9I0oLOsza
	 1Dbz0iA1iPmV6AAvFO1BuhWk5+4aLKOa4pC9r1mgG0jpJJ9OXRLBemn6ozR8bCNDn7
	 JJJ4B7n58FmhwqfUb9lTFIuFRr/bgN/AowRwGH99zUC51PJjiUw3ZeQ7OnH7n3JOYu
	 TNAMXEBbadpQ4A8oZRTeKsrZdCXtoTy8evqWENJpwny2WsURrRC9Swy3/bA4NVEDtC
	 7IAjISUwJio7CmcZm55tNx5IZyaDeQQf2SQcT7lDmkOkuPQcb7CCHqvqewrnSquvOm
	 Ur3OVDsKGqGnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA629C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360551369.17152.8868674009393016275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896b070b6279d2d2499d8cedac9c3032133010a04a4671987a7645174fcac2f1
Date: Thu, 09 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783605513
