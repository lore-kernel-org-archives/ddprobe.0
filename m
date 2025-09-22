Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DA31E502
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758584394; cv=none; b=qMVidaa967jBAdQVh4AUU7f6RUiHTv9v7DGW3bW3TtZuz92NDFJGC6ntI9aTBM+baRPYZocQ7A/iaSFRnDuVQoaeqv2sF8YIuUFPGODSlusCt7SbGNT+I/DL0vET7Q978FRBSL3ZC+hjACMviJnKQ9nI6fhgUA9vy0OVI77mhCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758584394; c=relaxed/simple;
	bh=lxlQdn8x9yLzE7hufkA76B1bg79jCbfLY0KsMq7WWrk=;
	h=To:Subject:From:Message-Id:Date; b=uvmqI34Qe0dPhr+BwUcC/f3ILtDAIKlTTqE0ifs/CVmgAdc51ToBHi09c2CcJz66ezZRLGHjf0ofUar6AEgQKoAp3Gex9dOA7e+Ih7ZxS7VQ4faTS8NNDAsBGlQqzMonvXMl4Z73zs41IOAxQedLB6P8p4OkASrstsAfSlnCJ/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ7bwvBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ7bwvBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B68C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758584393;
	bh=lxlQdn8x9yLzE7hufkA76B1bg79jCbfLY0KsMq7WWrk=;
	h=To:Subject:From:Date:From;
	b=oQ7bwvBXYtZ9JEU5a7/p4MqSf/WXuC4UYYoFODDde/MjCyijCPQ5mbx2GMCFEoLMB
	 099/hBenAMdjRiebmVKl453CsBpbOHMys6ml5wsgP2BaS75wKqKwSwwLKhoS7kHhWq
	 KzRvEFJENKKuw1JMp2WU1WnF7XZJ4XiidVdZsI/Iig89IcDpPkN0ViBAUsUQR3pwTX
	 UNmqkCxpy6it3H/9PSsJrgpgnMN45YOM94dhJ1ZPLF5PSg3WiQnQ3WKsoDTeB+w8Qz
	 i+P0S9FogAgYnofYNU3PW5q5om1Z9jEFBUOP7WPT4WE6UGj4DVyyfV0tfpp/O6bk4E
	 rtZgdyWv1jJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90676CAC5AC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858439358.11128.8082624720459271732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605dda7b43c4959d594e67fdb84e67f11fe3cdc39da36c036fe9109768bd4968
Date: Mon, 22 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758584393
