Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376A4377EA9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789618234; cv=none; b=VA8h6xLRhCdgbP6t03C8mmI3pb/TFMsMxyj/GDuzFWtI4qluUjFda6+OmyIjB0MyN9Fv3q/XeBvvMYk4G9ZGtZeR4fR1aCIBIx11crFLAvwxlWMayalBfP10jnKVVpV0xde+KUyt4eXAD5V438nJpnOhMPBfR/Eo/gf3V8w0AZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789618234; c=relaxed/simple;
	bh=Ll2LVUiYMt4tGM17Aa7S04g4vWeRJlqnx3S+DDnNMtM=;
	h=To:Subject:From:Message-Id:Date; b=nX1I2qZjFNPOI1TzwPkrbQ2x4AgjcBj9bQHzupZuhO/bfEWZlX+v7T0obqrRwBzBUnVDnsDvHNJVEbkybAq9B5biYShGd81mvwkzX/DauHElHc3bRSlcbDR4V/sKyFUIwGGETAzKocEMhamfUEnAh3Gv7LsMkhc59QalRXmeiO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib+mRSYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib+mRSYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CCAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789618233;
	bh=Ll2LVUiYMt4tGM17Aa7S04g4vWeRJlqnx3S+DDnNMtM=;
	h=To:Subject:From:Date:From;
	b=ib+mRSYndL5fXeodk1gIzwXW5NqFZqZdvhLb5tFKucEXpfHrPRZQqjf8ZYLO6XRWq
	 wUzY4EtQppE9fkYRJSZepFNiNM4D2Kykc05ssvLDBSGjHJn6t92hyz9kc/ksSICkPK
	 Irk/bkyNJ5tavoAfLi4mTX3NoGbL2hX/DXwhqx+mu/Y76vs07qlU5Aau7AiM0b4B8C
	 i32+wKUMfwQQSovqVAVURB/D6ak+9JO4QBsNzZ6PyWgBWKpGKlzAHAojefXkiwSN/t
	 t1AZrHJqNwpU+qNk63sTWQeKZEPI2SdgQ7ZDgA5q3T0/A/mFKMQax2OL4XfPkGW1yc
	 1HFBYrWS7Apfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F48C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961823372.30944.8039345487686577377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ea407c3f43a5222403f38bb9b81f8226a2f4ba8b01fcba7af09446084c36d4
Date: Thu, 17 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789618233
