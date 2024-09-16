Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CB2A29
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726446354; cv=none; b=Q3mt6Nqu9vkO0zQrkDNJdUp3ODHOJe4w3gjZZDd1hx1JpaG+jz/N2Q3eZnnPdQN7qPtmlM4k4Pvf1MnP3JFUEruFAVksmsiYbWSDLTfk/3VkVJ7eQ+pwO8K/AqmCC+Yb9lj170OGySEyaWqleHH9nhVs6AybzqJuGeQJomwNGLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726446354; c=relaxed/simple;
	bh=c5yZYPrSM6gt/V+57+tzKnLZXOYzMYFNuzue3lYsEm8=;
	h=To:Subject:From:Message-Id:Date; b=dSr+NQ1YN7EORnmZHE+KLlGDwAuOEl5l24mkNeurOOMo+UnvJ6gW8tuSCZ9y9aaNUdq9hg0yHCFcxW51H8nHXFvQycnCkeALekIOjAjRSxb4OWj7SzxBKRzd2M8eFa7OdwTHgO24FcG+5t2H0bJz144aRE/5MED9PPSHXsduYlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqS45rzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqS45rzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD95C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726446353;
	bh=c5yZYPrSM6gt/V+57+tzKnLZXOYzMYFNuzue3lYsEm8=;
	h=To:Subject:From:Date:From;
	b=uqS45rzD9K+ZEA82LH7zysJotQTM9auRfV0yPUwShVCSzsoSf6cPumQuqDNOUyo47
	 DZBmAJqG1UEjT2naqPLhi7GqygMaN6fScF3x+tn1F/q98RpYld8GI7YuH9lGTLYwxv
	 qSave87Gf8jQBTxK/oswPKbMTpcult+XPuqP3gAevx52KqF/DiWr2dkP00tiZiMil7
	 oKQyToVo0nrEwxQLLM2bIhQIxNokP90p8VIQLocJR9ZiakwZrTHd0bUuZh2l2VifY4
	 1wIder5p7tHlITg+OaB7zVSeycY2OTtWz6sUk21wDFim2LMPF29wRT6H7jSFkoAHky
	 3x8Rq47v1L/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96713C3ABB9
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172644635359.24365.3955601072538767330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517f5d30607f3e0b899549a76a0201d4a355757df8a12d7d86b5bdc56d00cfa3
Date: Mon, 16 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726446353
