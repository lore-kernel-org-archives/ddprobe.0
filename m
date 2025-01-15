Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D3433DB
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736912754; cv=none; b=kP5u0hAR03mklZC2URpds1NekuTbpb+PVzhFPz95yPGh1U7qddJPs71PKZISunUBhIdLXhNjAP3fP2uEavX7Nd4CNuxou8pkHB5KlUijPY3QfW7ubpHWCYD/S+Ag2vuvyXJXaHy9ehLMblBjmLyRd0dalEvqkQd08vtbfLpFLCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736912754; c=relaxed/simple;
	bh=rb119d+ZFnJohO5Y9W/gwgLcU63mG4+hNXVKT6gqKJE=;
	h=To:Subject:From:Message-Id:Date; b=lRaCDBnlXYKpEDYv//JyBAX0xgLUAy3LhDjmHZEhn3hgqobhJRDz+McsFe/f9dX4POuRwks/SOhZ+bbMgGgGTdo504QasdbYJB9ei6XHfXZYPCjjXdiYCahZH05I9/IBZ/TSJ3DKf7+mKQ9D58PwHKC8NpbLWedahn/vtsK3L8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V26+A2LK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V26+A2LK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D066EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736912753;
	bh=rb119d+ZFnJohO5Y9W/gwgLcU63mG4+hNXVKT6gqKJE=;
	h=To:Subject:From:Date:From;
	b=V26+A2LKBLI4+3WOwxpXSM3DVaIa0vWfGXQJ/1+HcVeygNB2loD5TFvTtaCvc4Jsm
	 oPJHGCj8mpjTa3IPq6TFF5Gh5zNxsHJINIe/xE21lK7QCyYANdBs+Xehm80ovQkbCu
	 qhDUGvjdOVhbAGZwLqYuP/Sn44qP/nVCa2Etu+IABQLWm+SJoK7bQRN00wlWUfSzsR
	 P3wp1CZ60iBttwfCNynB1297x0RujNpOEB85/PhoKQHmynIfHWy9KR4HhQfzCWJWFE
	 /h4nsymg0HXX7/meMH9NrwJf/TPGKTqPcRzJNvHCfY7a9MA0U6b6dV2o7DJztFwkId
	 ith/o6ofHzKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4B9C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691275374.14311.6054478906463201300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f6d93aa02301f40cd6cac5af38f6b1d7433d39c01dc7736664c5de691edada
Date: Wed, 15 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736912753
