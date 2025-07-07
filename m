Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B56929A30D
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751895594; cv=none; b=r0NPxJgtH/bCEqHh++phiCILT2jh4Mnuu/TdhuSbRwomz7kBON8MKpa7fpRDbYeptrx14zvhLI07Xiqbs1vb+4N8su65j3W5wdfM3LTiQ70Ne1rBseucP05SHVA+0OYEak5qNzzwc5PnI/boGr4F6LH7n00fWWQFrFHIaX22hA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751895594; c=relaxed/simple;
	bh=LmZpvksUPqWIY8EKJrFlqX7i+6r+Czk4oaxiKzKI4R8=;
	h=To:Subject:From:Message-Id:Date; b=rWJ+aiLtUUfDjHmlvWaXeCti+4QJ2XQdBBe1P3juUJ8WmbrkROcmLd9z2uNUf+LrcGlqnmbR0Nx6zAEsy3RFXBRU3nhvin9ABRPa7buHttJWsFnp7MmeYXlVgYa6JlOsBg3Z9wQj312isgZvrQXIzHuaNNaI6fCLGyWEE+vs6Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+KU8Igw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+KU8Igw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A594EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751895593;
	bh=LmZpvksUPqWIY8EKJrFlqX7i+6r+Czk4oaxiKzKI4R8=;
	h=To:Subject:From:Date:From;
	b=u+KU8Igw6gxxP2tPh0ITtKftTXgODB79sXgIp3PAZVOj4lt3u1dMbnP3m4chDO5Pt
	 l4jg+gMNluYnhU09/5vWDPV/Xl5UEBFz7fQ3LUoSHgO+YdLArk8tiAn2dYnRDayf44
	 G+90T4D3PLU7GB114Yyj9KZXntVEbPhUGPVte/y5gwLTQlqKs6hWoFjRXmgMeOrqru
	 iRLllE3YzcMFPJAE9bhY9F81BFVFfrEwBNk4KDuHLw7BLrYoqI2fGC4UMT7PUFtlnk
	 5M5eblQNOT9ZEd5JyiVsKdPFMmrJ5j9sOqwB+KSTDaDjEelPYQ8+iC01J1THAORahs
	 GUcGeLha9VqNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9219BC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189559359.31553.5697450836414238394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e8c4c14ee37f2682590cf6a5d699babe2faffafe0169145ca1cb8b1d78b559
Date: Mon, 07 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751895593
