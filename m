Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7CE38A70C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788983434; cv=none; b=egzMjMU7USt5lnzN77pzjvG15EnV4qvlTkyLmly5uhJ+7orxgImaM3kRsfLBbx1VNpVwPlXhjl6DxLiw0KXEFtYvGZgpkZw7CCq5GblEBLjlE0WMtYP0uFomb6MldDm3mkqIDdCEx2mgjf0ByT8g+ZaQ0zvqG77a7qxa5ORhYD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788983434; c=relaxed/simple;
	bh=J3EHNVIUdzc8IRFfAVIwVRueOvUqIjIdElm76LwYPO4=;
	h=To:Subject:From:Message-Id:Date; b=Q++wsSqHm76+4zcC7MjnpvrN/q95mO6ahqU7BpObSqokfdgt+3Z+AwDA/btiIraw8PmPjm4KvM+Zgm+PqlAzRp0+UcjLunLUCJ2KaGCHcL3dMRiu7aoAzH5n+6dvoYM1+LbFl6wg0Mrs2Yz9gIkXipNU/gWAKuysqoIOpuALOEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFvMyUdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFvMyUdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EEBC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788983433;
	bh=J3EHNVIUdzc8IRFfAVIwVRueOvUqIjIdElm76LwYPO4=;
	h=To:Subject:From:Date:From;
	b=aFvMyUdSqBLaSIrF1ANvldtIDJucIo0CQ9WexIJbMl4mI3Z2ZYod+yec/REg9gPij
	 bsPwfxrnWnXL+1G3ERLqfcFpZrsfzaOKCpHzY7/BscxNVYC9n+HVzcGWGDyUc5TMtt
	 dKyPkK5UNPPwxWVofU7ZPQCkBHegvKrV0RnKRY00nmRntr1hWSmj1nzdhjyV+NLXaq
	 gamKxdUpYIDkxagfVcB9WhJz8gJrXKBKDJ3bnPHsudueHbvzx3WGrddIEwiE+fwCM/
	 zlXN3O3oPebVYeUrKZUb0eXuLwAMBj4G3tFivwiJM8zjCiVEBHFkzmO1zGKCpb8dUD
	 PJlHJN9fJ5K9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD37DC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898343369.8844.16185189738097516705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e38c292b9ebff221d9f06c3dc16e24f9ad90cc7827845f1cb9990bbd07a037
Date: Wed, 09 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788983433
