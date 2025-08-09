Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447BA255F53
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754742594; cv=none; b=Fw6EKR1J3KhKZk877TQIn9/KUionhu/zy1cq2at/hR4P936NQLiozlp5R601jRdN0e2JZopsydftmPCFP6191cQnbiaaNWZH8doHQDVRBuXJJKS0FpQaP/ouAOPkQebaX5fhEAsDoj9MAT3XjjjNyrmnf+O/QVjaw7DiIRJJlX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754742594; c=relaxed/simple;
	bh=BHaFC/npmk4j9HQ1j5Voy/TF4UwtfJ5W4falsaOALdQ=;
	h=To:Subject:From:Message-Id:Date; b=px2KNAtXUEkIGOdt4CHo2fK0+emPLyz51tWkpigjBqDlk+DdAha3bIOqcVgTialGMidEqDdp2VfnnIQ/QnYl7O9RJqpCDpj405Ofg9OnOKZ8L4q2+ndzLytjqfkz0G0FZhRYmtQmZYw1GovfjZLRKTmQhtDPPmA4ur4gvNS3Mzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdqHXvEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdqHXvEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A685DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754742593;
	bh=BHaFC/npmk4j9HQ1j5Voy/TF4UwtfJ5W4falsaOALdQ=;
	h=To:Subject:From:Date:From;
	b=DdqHXvEzBkkufW2v+ychotpQBDODHPMLkVe6kWXs75CdO6+IfjWLzZreyo//duGzJ
	 Ymr1k3wov3b6gunBtMq9IpWLr/XS6bfWuR5eSuTH91vc6oLsebAnEVpL79RJZuUSNa
	 vS+fIrHpoE5Jpukg7om2qjFVFFQvTMDOHlL5slJJUw/ss1JWeCpAkRzaxR2ez94RXi
	 FCOYyApZ2v78LUYt5N92jAodYnANXa7R8qiWWGDMt/7SOdvonAUWc7tMGCkJhhAwav
	 x7CXryV/5aOpDXc0Mnxfk/igJy/9q1rCbAl+O0ybiuZ90t0YBmCI9N3atvwypImyKu
	 c3cZ+JJGllnKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92115C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474259357.14204.6123260874200167622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1df0b0faebaea72ee4506b0851e729ba67ffa17d35053152c532973b5ad796f
Date: Sat, 09 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754742593
