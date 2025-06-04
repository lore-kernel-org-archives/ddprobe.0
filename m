Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F501D5ABA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749052194; cv=none; b=f7EGePF9+fq1PKsSTnhd0H+TLPhNVxHjcdzesM5N29VbtOkVYBUdK9O5TiEL/koP9c/EtB73hcfwXjTsRF92u6UeTGgxTyXFTI3ReiakR6wHc07Q2oo1Y24zRP35+OW7BBdJAI6vR4400CktgYbAgwLn73QdOQ+CE+BBlGFv+44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749052194; c=relaxed/simple;
	bh=9BpRbLg/dnHTPuF8zsFYXqWh6Sl/HArGzSqoF+9l0kw=;
	h=To:Subject:From:Message-Id:Date; b=B05I9pInLnlmvOAeEu2zZuQT0eYCH0TgYFrdXH0wXdZFsy3IDjCMIorlvIwQzRFj9fz3rm5do4H4HhuND3pVQ/B3vAgQBV90ABQmyW0CJe8MYgywm4Pc5uqrtPUVi00mIDjYLkrjx+pDHxpth9qZO8WJbs8hB4vAuOh4GNbFbEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qScpU2Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qScpU2Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4234C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749052193;
	bh=9BpRbLg/dnHTPuF8zsFYXqWh6Sl/HArGzSqoF+9l0kw=;
	h=To:Subject:From:Date:From;
	b=qScpU2Z8KzfBHgbwlPVck9KvOgItjLkUOW3u2NNGgb94nRJc5ejv33esrZZq4iXja
	 jt40DgfySAkQSAuPcSGa+EFBmKuy5mSIAljaK8lwChRQSdtWTsy6rOy8KlqKuCrXXt
	 S8LHi+am9tS4uLg5I/rAHe3oJim3dr+oUvlUg4FQleQaXoM2taA+GjJLdCCuBSl4vn
	 IhEBNiPF6wlaVrgkZeSIvtglLRX69UwR0sXBLMNg0JDEo+arL/cQR1OF1XpL9d2qYR
	 63AQ/rXOgYn+6VmfzZmUrenohuoqDTIsjNUeV7xmdXnVX8S09oB7PU1mNYEWPouE2X
	 3Pe6OXc7H8QuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F9EC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905219359.4711.3552967234335515479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4aafd226bcfe6d2115381661761f12111bcd0d50dc24e4e4843cc1ae6d8a24e
Date: Wed, 04 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749052193
