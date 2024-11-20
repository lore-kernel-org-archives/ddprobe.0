Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D98016DED2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732136154; cv=none; b=RS8haWirKpYUxtaZyuhf4nGSiNWVBCnsTVefzRogqBsHt/pqgAUtOeXx6Cu99ZlRtYbJ1RtLFcJVLug/7QWQ/nmJxBGgVZJ0HpFrIN0OKq4v0cYMog3DL+VKpCKCxxTIrG7LJ1GgJtat4DWwqYkwXyoP08S9q4Fwi9fRyur/Fgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732136154; c=relaxed/simple;
	bh=f9iIR1fFDvjSpP5G1QctOnBz8TzzTDL0bxaWNsQ2HZ0=;
	h=To:Subject:From:Message-Id:Date; b=rsz+p3F8acXHFRk6ym1pvRWHfhGk5hT3VnAjxrsoa9eVvY+R5WhsC9iniN/VP2hcuIWp/w+2Uur0/cGxPufK067awQhw/LK3UWsFcDd/0z+riF3X3lrBmxeXxWQ0pwVSlIrZHE4eLUm1X4Jkq1DJ+s8OiXx27jdIjIxylT+eLE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un2VacVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un2VacVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C23C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732136153;
	bh=f9iIR1fFDvjSpP5G1QctOnBz8TzzTDL0bxaWNsQ2HZ0=;
	h=To:Subject:From:Date:From;
	b=Un2VacVkZV2uSteC3UqelaIVF6wSe8DiKPHOIO9NEl4I42L8DcPg/5JQdG+QtDg3L
	 eQUHX3yc6lvF9g6vXX8aFVDHdgX4SOud5X9VYcxXWy7L5zR1G6X2sysgLyib+gtU4B
	 hWfGA9kls0+STQbZ93N/490Uj+lTyzMk891xVTaxlFHNFl9moAaLvxTQrr/V4RihDT
	 75vdAnpfbFSg2Rk21iwm8N5viQ4Yx0a7p/0sVcz3VZjuaS7TgA43zlDA1DUVh5KZHU
	 rFdq4SpmQwPxb4iEDuLU8TkyRxejhDpsU1rMSAQyQ9Lcm8sigqrcq2OY1ZEHY6uape
	 bvSOTAHcUr9EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A685D743D8
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213615362.16715.12926868028642591611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd755e620a5c615116632fd2a175cf7783b77d6a23fe89f1bdd74cbeb56e524b
Date: Wed, 20 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732136153
