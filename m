Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5023F1656
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787781634; cv=none; b=rHwujC6yXTnyR/T2IY1hYKlrOt+S4uwPqq/uqF4oegvlwJW3ffNURJRyvrX5UA0bkwVoSgeb2+7SkRx+lI9OINLVdamtAt5VKJDVt6w5ZIEc1ORKyB2ZoDcmHVq8iMFv1eUUh64tf+q0h54uwWo9rXaaGssPd4BFCODjoJN1YW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787781634; c=relaxed/simple;
	bh=ZUlAOlfnZXNjYZmXDW1hbIOs+o9E5lj8ZQXhieNk7Jc=;
	h=To:Subject:From:Message-Id:Date; b=HhkNUaskqvf+UCTo+cDiyTt3q+Z5W2K1/QHeqClcAFru2O7V8f/q+XZjNfuCxE7P3ytNnQmmr52K9NTZEd+zb2FkQT9OTY823t24N2WUMJ+ARdMlVgFCNSDxjOqM66JGZtXIBHNUIqVvyxpCTbdP3iy2F+CiRNHGT8gyehdQbZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdXouusX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdXouusX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CE8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787781633;
	bh=ZUlAOlfnZXNjYZmXDW1hbIOs+o9E5lj8ZQXhieNk7Jc=;
	h=To:Subject:From:Date:From;
	b=EdXouusXfUpkUMFBXzyuOhz/3b55eGFaxDWckuAs1UOxzcJW4J6ym0yzOzF0xETi1
	 dCk8hWTaJSun+DtYoaXdwyvMUESf0O2mlR1Fwj7y+Y02cx5LQVn0aLjOFKf+t79qg7
	 DjOAuG6Gz3qedUm4e0EyeOgM/m4H9kKpqvtRidrqZUGhkHGakg7oMPRV1M/slSEtoM
	 RVpN6Lk9xaeWNE5Rb+hX7kVOE2/+l+T8qXzlwnzi1E8QzveaB/KrB58YD36ha6JbW6
	 Agw9k9cEu/RPXoCtPU+2R/sgX8riSFSwLr7zlv3M7bH2cVdJ/cSLm8YP5j+sNNzMY3
	 Uo+Q3OiZaMQBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F55C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778163368.16325.14597560695397618554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b864c6b5e1116941da21eb725c22fa0bae870e4f5cbd35d57e407689c2347c
Date: Wed, 26 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787781633
