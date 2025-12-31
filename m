Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1291D221F15
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767180834; cv=none; b=ku0A/5q5Q2Ra+RFZbi05kg1bJ6rF7JPRJ/fGT82fXiLvbb4oLbjPau8Z8htmbPo5bxp03xaIHgbGopXsBlPuL7uxjOfL2di7dXyulkTghChNOjjulWIqE6wX2BscFeqh8FYQY7nUfz8OmJmjmtTzfe5sym4vqoLIUkVUSXnA6KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767180834; c=relaxed/simple;
	bh=Ntm1MbhrRUl3y08P9qb8rpoVBVIMxV4Ir7hkZAiy+c0=;
	h=To:Subject:From:Message-Id:Date; b=TMlyWQN6vqNl/va+vv4ZXRe0ahrvdVcUtNraKXnxgt0kdaVjK7nr6Uk4gq2tll/Sr6PGICUgbcGt8D7k77GWFEYpaRwHhfsYdPxcTme8xYbdYjHWnZv74Vu5eCIvvDewz1XU51KZQVS9GQhG53IRvNGbSDdCpNc979bJyANyeQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzsGc8GJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzsGc8GJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2CC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767180833;
	bh=Ntm1MbhrRUl3y08P9qb8rpoVBVIMxV4Ir7hkZAiy+c0=;
	h=To:Subject:From:Date:From;
	b=dzsGc8GJr9A8F8a/U+aaEdWqZMkQMVxjZORcQQI+eD25pgr6Z1EHpxit9KYNI/5nh
	 EOopsZebBKscAKrc0/FCgK3QuH56PeYYsO9IVSIoxtXQTuEX57E/1bH0Yq3UNH1r1T
	 3A5zUdmHrg1XLbaKytBeYt203cDU0M+xsR8R6x+InAVW9pzMj+L0HvK8aAq9G4xx97
	 WNqrKIZbIA10aUALOcdK8MQkI8v78+oiRjrHSWrnwczUMjX4G5DicqMm22BdfBiqK3
	 hHyo7XgKah4uleqwYrvikRZPqu5f5DlTzkMJ58gcpoRt7Z+OikFhXsHAGeQUDw5Kco
	 RJf5/JlsCAzmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B8BEE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718083357.29233.13785915547268897925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba9d5ea9112ec868b0e51da16f59d01d93dfa44f62a51ba76b4982bc5377250
Date: Wed, 31 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767180833
