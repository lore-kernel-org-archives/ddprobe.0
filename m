Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F1918C35B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 15:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721057063; cv=none; b=IkNdkBqsH6+M7RmAt+wLPxYuvYtGNbo7YenKue+ROQNVbNzDgh4sSTgPBfTtyuIVvPYT3hPRKlaEHpwHkWLvW1iIfcuPyz9IfDydpa7h0qQyPs4us38K6WdccwQJ4lpk3jijgViqQOxRI0yjnyVbGZxdB8z9HX6wfKSU7Lr/QUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721057063; c=relaxed/simple;
	bh=QqZWcHoQNB39vTxZ99zxjkOlBqb+pzYQf7kiEzh3puQ=;
	h=To:Subject:From:Message-Id:Date; b=bsUhA+oOIrvxaNcHuZKoQC1ageaXqq/CPkMpq/SPqkRT+XS76Iq6HPseGbJGix/S6O6AKeeX922czASXPxatMT9jpe7MKqath/qdwSL3PyxY8//wJOhqinLlLcsoOBfaMqjdprLQIpmrZ50EY85FPV7lK2iAFbmc2mBoTrjZyW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/uGLk1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/uGLk1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3143C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721057062;
	bh=QqZWcHoQNB39vTxZ99zxjkOlBqb+pzYQf7kiEzh3puQ=;
	h=To:Subject:From:Date:From;
	b=V/uGLk1YIJh/ip6dbM5Etj1tzAlkN7E2K7TVuuFn1d7B052+84i4SA5biQ6C/stuM
	 tqxmMlTnYM9hyr6fT609RDK6OBcQOu7G6LWjXBTMrEzYjLw1g09WTukmhwv+FkchbM
	 RVh7E8QiiVEQb1WXd5M9qDQk5LOaQo1YjyAiWN/sRKqc5JRPwvGkNEm0BiWIN3epNv
	 0kfcMC8E9lMjtS/RHu/Z6iFLSjphyAJRYwA7QVBFsTyw95jpdxo3Q7O9kuJJWFqwJZ
	 LjwfBu4yQxw/vchSjbKhLCpjVtCA59TEyADzFnOWVmfoY6XRUOVn136urMvVyQjB63
	 R2eVNPzOi+K0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD207C3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172105706276.28683.2243524667439427935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bbbd62aeea91b4881dbbe81c03a4c025a45af9317e43d775cba8f60fa285e6
Date: Mon, 15 Jul 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721057062
