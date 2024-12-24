Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E7C180A80
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735068354; cv=none; b=CUA7wako07FvwK9BahogBAgLPS62d/VCx2vNe7I9Z/nGzo756EyzT40tLsalH3ZW+y+TNEXg6mnMvVOS64yUztiuEjBw/IJe7XEnpgSE6JEViYYg1RgnyDXqOS0Wi07ipzP5MaU67k0LxVWu8Ff7Bzipj8GcpgG/Rxdfui/e2Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735068354; c=relaxed/simple;
	bh=WOVExTCZhCJ1akBSxQ9EG6ADItrK8IzaCe6I4tpe4/s=;
	h=To:Subject:From:Message-Id:Date; b=LtnJP/VwB/wrtkwnbHhetfHBFI/CC/sPfIVVlBJXq3sDBWM0e5+KG8G0jw8bApAlFoJN+pbhFj9kXVVD7vc5AKtjEa4O2fwsZdZe/OOuhwF3Hb1QBSQsimRV80p1377zsYYZ0UrjfBYcsvZWtnmcIiZNNl/+RBfID5xRrHQGlqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRMa11aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRMa11aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81ABC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735068353;
	bh=WOVExTCZhCJ1akBSxQ9EG6ADItrK8IzaCe6I4tpe4/s=;
	h=To:Subject:From:Date:From;
	b=ZRMa11aLTXOeKzxORd257W0658TpEace+39rqVT72mQwZqgpx8Hn4lgGw+IOcyrt3
	 yJieleWsbyggcsOr+VzlFz65p1rNzgBFCsxqHrsWy8W2yDjq1wuhsm4NXS+wL9r7JR
	 wEPw5w31pIefX2LKpulDQYFMmwjVFaUdACpV0XfCEpPSpk4bGL2N6z3ybuJtKdA7VA
	 fKDs/dZ27nrHfcA18hxgrVAWZzQE9kPj/LiaNykGNbHJbOWNI4v+E12RZkIIANUAwD
	 B837Gn7u+R6QkfiDLu7v0vw7ZTsTmsQjPkGtdC6ht6jYcqoN5J94WKOuKa3hE7KkRB
	 zUQGUZyxFkiaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14E4E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173506835365.21428.11648281750106836549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bef580f32c536c3570ffa8d90a9c47a074e2d68e1dfb393c74718693b31410
Date: Tue, 24 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735068353
