Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D18B22172F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749542996; cv=none; b=VCWn9mCuCDv9+Fg7/onbtAN3iIxRuw31s00VlAY+3Tt4PYskT+rpeKhMQHqFB/YOtkqRuy7RVULIf8+BjPeavbaWFsfV/OuxcGm2To16l+gAraesXRCQb89bxnyInMQq48Eq7gScFR+YEDNP3S33tLxyia/ML9VsSf0QHcmzPeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749542996; c=relaxed/simple;
	bh=AbR7Ee40iJH3zHqnp4JzKLTlMitE1tAjygXm/7H6Uxw=;
	h=To:Subject:From:Message-Id:Date; b=YErnwKEdYsLSB8D97reMjPXjhA3YrX/6007xwFmY6SVL9t2MlwZZSkqbutAeZKVQ2OxXHj0qFLU9ndAFDG6xvCgSvJMqAArJ0RExQ7HL7vAqN3j/5e+jYsbWvurkb+oVqwSKLLv+IkHhq7upB9lo4Zq9SfkDOUxUpaleNTBUTm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taCsYcA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taCsYcA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2774C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749542993;
	bh=AbR7Ee40iJH3zHqnp4JzKLTlMitE1tAjygXm/7H6Uxw=;
	h=To:Subject:From:Date:From;
	b=taCsYcA8KtalJJ929MtdkFug9iQ2HPHiWwbx3n0fE994v5fGorNHxsdfXiNffVWj8
	 yIN7mgXNIzUo5t2fiXvC1l6bVxlHtVwFc6psi+fREF5SWOhckT006kClqJtVdv8wlw
	 Jjtko8I9VpluUnHGcDo9YQ4qwxsEBQDEcmSlq+uCB76Z9l0NCEJLM6Xy6eJOpb3UkN
	 cq08P91t3BFyBqRmhsRHrooiipNkrylAXIc6cyEhtQmf0MQ0OxuLzTlgVx6BLF/rzw
	 JMc76L8gkHuK+6jVZFXdv8kq0mPXgLQ041BPrE6U8U6iEczpsU3axVBBaZixzCEkTp
	 5B4lgcRRUALoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91372C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954299358.5008.4907565717590578626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd85ea623dec4f8889042a9fb34294ecbd6028f04737c22a9b17b0e0ba48a768
Date: Tue, 10 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749542993
