Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181FB146592
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724915754; cv=none; b=H0zqU4E5FULqseu+UBlklkmJhgSxevT9VlP+edrfKmMn4IIwhSgJisqP4boIEiXHNq472JAPU885CIwkmXrb3627esCEtdrdtdLglnRYt6zixwzGJYeU2HdOtuWPXN+UtNL5hcH2G7XKM/4Kny74G/fTytIM3bIvj0Mg9BN0PLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724915754; c=relaxed/simple;
	bh=ffuFSD71UqXm++4hd9zu/jcDj0fTgZ/clwOR3YUD+oY=;
	h=To:Subject:From:Message-Id:Date; b=FQgrNrZvfzzhSpKmCOUnfnxGVFDTe051PoYEvc5kT8gD8pvZJ3eKT8AcLoye5HrUk8EcEkh1qX1LWcDDXelO+Pfmk9wDeevmcqz7eK8b03+F8WPqploydq+eK2GSxJw4qyoJGaPYuz5Qn4ga9Ql8pNhyisksXb4SykaK7yoCw0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGcGuu+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGcGuu+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A545AC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724915753;
	bh=ffuFSD71UqXm++4hd9zu/jcDj0fTgZ/clwOR3YUD+oY=;
	h=To:Subject:From:Date:From;
	b=SGcGuu+lsGT6zY6Ei7xvjkyKJ1sMaIZr/z/QQ6qqo8AQepwuRKA4uuJXwl/zw/4Ow
	 B86qp9VW2bFDtyblaTMkjT6mUroaN8FMsKF94mpLKVvtlDXx/PxD3zCgxNbKkAgDz2
	 Ssv5hvqieqV+7ZtUzSVjJdU3O4PoXigSuNdbBK4zMr4g3deLacpl31DNr+/0AYTaCi
	 AltLq/nkOuty2p6mpwzmkzxKuiq7Ag83NonJ613d3scSMNo6TNdAvwoJErg8W7KGdv
	 +lfLjEMQnsv4DoSZKE4GNZ6bj7gk2s+12580ljjxzq4Lg2XftvRPRqZV0Mq6Haxouj
	 8eCwHI8P0hz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94460C7EE2E
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172491575359.26826.1264510578521316532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2cf88c234d6e97f7c6f6f2b5955e42a2553e081b9d07af093d42e9e1b09f60
Date: Thu, 29 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724915753
