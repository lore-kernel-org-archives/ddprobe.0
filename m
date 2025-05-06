Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3314D1DED69
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746559794; cv=none; b=dzSmWt4dJ9ULySg5DW57O4WLiimLH6MnWYeDSFPdRS+Io51woEf7IcRN7Mf1nCUB4uwwOXiTVZ0mUtlZcOIZ1tEeIkxt7aTr7okphsOy7kSd4w+bqXkTETDh004iqQNLBt38yEfeMjUQN/35AWUObIfxbRtJ5iZ0wk3+IA+8J4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746559794; c=relaxed/simple;
	bh=2PAaE1dmrEeEhbtWeObLgesft4mtuTT39ESx60DhiDg=;
	h=To:Subject:From:Message-Id:Date; b=t13H+3MY9cnj8TfobO8JIsECnae3h4kHApe6WlTJ6UOpZCkXVwYTNfcJsFIKDK2m1ABSmAVzXeVYFjtcOglfLZeaKAHN16Gt0Px43OVNq5ECjC0AdcHe+PLFKPRi/706b0WGbuclEvgAMxw55E6vA8hVpj/kKdf7txF0GG5ztKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjtUnJRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjtUnJRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09ECC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746559793;
	bh=2PAaE1dmrEeEhbtWeObLgesft4mtuTT39ESx60DhiDg=;
	h=To:Subject:From:Date:From;
	b=QjtUnJRthHybvYDQx/u9oY231c5rg1Q/kIpT20zYlTTi5CFnweTiqO8SXe+0osbi8
	 kES+MaFjQ8gz4ojJ94CFddybQOJlrhPH1mW1bsM/zVUFwFdhJYPJ7wIoGa9fI5i7uV
	 /2U8KVx6AC/Ee9soU/qYjU0v+4o1aEZyIspbCTEUNXGG8jnnHRlEs58zprpywSU4tF
	 I+XIMpq3abKz9EGBaVIKYaD5zS6aroLOp7W/ZSQm9AZrEJeaeGEjjMe1ZDixwaV93n
	 cuDYYvQXCc+FEihsdA1EYznCMp6GmiT9dElGAmzijIPqWcYMdho0NxIpNDDyl66flj
	 lAjSoW+JKud5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F8C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655979357.9542.8396316567592743415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a70dbda0c69d4a9490605150dff1c88c5753e2b0630830007f3263e585a7bea
Date: Tue, 06 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746559793
