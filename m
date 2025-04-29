Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DF3253336
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745892594; cv=none; b=sDj85XEAfdgyCqPrL4VWMeBzeLjktpjKpJdrfOc+IdHAGu9D7d081L/f1gJ6YCeNCuwGxxwBG5dkZcWlD6Dbb66BXk5B/4IjeS4iJyq/XSq2drc+qpBiowcL+XS0co2Gwmr54xEG80OdJfiYdEk7n0uXNkg7gmtYT5pzrI5swBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745892594; c=relaxed/simple;
	bh=kyl7VoScZen2yoEomBg9gaYXWzBC/rPNK9Mv4ddKb5M=;
	h=To:Subject:From:Message-Id:Date; b=klK20xl0OFJSV+uOz3O23SnlYjWHuCAqcQINfn59o9Y+TyTXqX8RphUKojqtJGQ+H/IoGwGer6Drz0T6ByrBALQNfLJNI1WpUddU35lXUKm9J3qhDI9nOK0P7Z//kGeDkb4qwcKTEs3GgBWr10zQu2fH0vWc29oHrN+oLRMKTuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4woLCf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4woLCf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D28FC4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745892593;
	bh=kyl7VoScZen2yoEomBg9gaYXWzBC/rPNK9Mv4ddKb5M=;
	h=To:Subject:From:Date:From;
	b=S4woLCf38LB52csVyo27nvVU4o8ThIaT6nOAhG48OC/JEmdFYMRKtZef8WtqVm60h
	 oPKnSr9hrZIYIWNCIFdIASI7aYblMMXZaTkdYrFvZhHbGoa2CS6dOUiRzTX3uRyaEz
	 lGCVxc9klGUbIqGEvMN37v52MbvZbo2pKqW+cuiMuL6IQ18r6Z5gNo1Tv+1E6cZ8iB
	 fvpkdF70cla3lrcvYlxQX5kPZB/BGZcyisajl/CtonjpZCsz6OcuHdQjE5s2ZpJwXG
	 zmO8ZdGxAVoBwe3WbTPLuPoqlKv/14v0eOEfzwVzrkaRkSRIpxUpFG0C+qUSpG0HbU
	 dsAh5m29p6axg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C4C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589259358.30839.11482724233480307639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6679c7a499f8dab9b0341b3450a431fd9f8f1163b0296141585026b6bc0fe25c
Date: Tue, 29 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745892593
