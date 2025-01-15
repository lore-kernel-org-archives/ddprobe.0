Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9151E4BE
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736945154; cv=none; b=eSaofe3lIhiCC2BxJa9yRThELAqgR8ynrUOu+3lTUwrzQ7KFoP0YYwg5lFlWeNrI7OHrg5f4BcIHKpPnccA8w/5RyMx4yPcJU4RaYyKTgKp+CUgo/wsVFjusLtTM9GSqXmlDsvL85sLNTCVd/cL4nNAr2h0AOGb7/h3iJV7X6TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736945154; c=relaxed/simple;
	bh=yv451j6YvS2WLXVJIhVbH3nlLoa5Yj5wvXNA7Y+PfWE=;
	h=To:Subject:From:Message-Id:Date; b=NvvLmHQuxA9F2ys2a/u/uDfEzr+CaSl9x5+sG/w2AV98F0PVcEUpqKW4s90bVZS4aKtMsiT5p3mw6mO0LA7XX+eoGh85hPviQv/QgIAdoZB+obaNemWQdYc5tcULfO0HATiRHrj3xL30F4Dv8OR/bcNQDx5MSdrKM0iUqq6tNpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTuwN70c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTuwN70c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7E2C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736945153;
	bh=yv451j6YvS2WLXVJIhVbH3nlLoa5Yj5wvXNA7Y+PfWE=;
	h=To:Subject:From:Date:From;
	b=qTuwN70cp4NtqzAhSEMoZAOFdzHHB8kumUi183TBTQtNwSsr615tHf9ExxVkuXSBr
	 9mCtS+3cJdIVqaiRwNiOAA69STggM2GVbkcKCYSLFSHZfum/GMZ54hKwykpzexhDkz
	 HTBkFWdQlhlSyfjYCy3EkGjp7eoBtx/Glc304LajiHk8A4pbgElIFXI6V9kFiRAV7Q
	 Rd1tggQt5P7DM8apdJZ9lN1u+CgoKjsjBfdCWygaXHIgxu0TquJ6DGDunLgjhLwN1t
	 GKZIlMoHXK01nDqrYlbfNLg0kEI2T2ysMTd1I1jcafMQIARjRZ41vqDWBGbPFRpNlQ
	 GX9d/OYxpTJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C726C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694515363.20065.2347997063687598736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002b580d114238c68798986f797a0a6abbfc0ce2e2451ef4fcbb03fe6253d4ca
Date: Wed, 15 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736945153
