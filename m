Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFEE2D543C
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749631194; cv=none; b=arublPOnLW0aknGlV3gyDgSv8s3463sqQZGcIQ0eSSSDdZMfy7Arjr6oQPdBF7knwCmr1hOBIjp+nmZnau7gtoWYnVZ99x94H6OyrORYIEEMFk3qnmgGG7pJiWZZIHtXGXDM2YyC3ML/EB8Pnq38bL6DNKBLuIf8UFMqjSPq+2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749631194; c=relaxed/simple;
	bh=GFJUibiKngVQDvBg0Jbw5BBqC2TapxMF2HIVtaYQNBY=;
	h=To:Subject:From:Message-Id:Date; b=boRAjvczN8rDTlBBt35KqU/S5N15FKSrATpufSKqTYkWqC9dKD/lGNrBptvGIh4BTKQBXB3CvIiXfpO1s3dRd12z7glPkwqnoiCheI/TLelvrho+6G40EV37zCW9ekyHr857GUJeZJn4eIiKYz0UpLfoCSxVxYqdey0AMG51igE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRSYQlYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRSYQlYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACAAC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749631193;
	bh=GFJUibiKngVQDvBg0Jbw5BBqC2TapxMF2HIVtaYQNBY=;
	h=To:Subject:From:Date:From;
	b=lRSYQlYBshVQ0FoPRTMX60nBsBJ61IQK1fhp5vP9k9ThANn7gH/BAC4I3VyGeNida
	 CrKEeBmFlOKXti7qakZXvav+/lRIekDEFbd67bukc4shHhHjCpWgrjjUJIyGbyO9Qa
	 IxxAS1Vc427idIg0BQG6yk9tVExLzaiLJaE33/O3KKM+Nm1kiZ1pIoPGziWEZupt2F
	 +SDgaPsxAZrsdNGc/TvhNxgT3O9W/cIYANCSSQTdPrEqLKRtOsGug++3w98ixBnDhH
	 +/sEUnhjuLJ/P4xOcH29GrDwZsZ/vX8YskTWULeCBfltQHhz22EgFJ0icKpCbtFbL6
	 XcyqXQ1CriXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90450C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963119358.14913.6757771039720316566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2f69b925070c08bae088322b6b73d2b53db5f9add5857fe9471c5da887c680
Date: Wed, 11 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749631193
