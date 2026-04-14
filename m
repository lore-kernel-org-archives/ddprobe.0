Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A3A35AC21
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776151654; cv=none; b=UQXGG++Kq6lms0Su7TvodCYXkkbWNO/HEoCsKE9LOAAp9JuuLW1n+Nkf44AdA9+/ZLSr9mF8nCR5tasCSU0+Infoj0Tl9Q386SMHQBXPKz3nN5LwPVhJlkW5yBKrLLNYlklAhVutN5r4BCprspFvC8l3SnB4MQ53JK/cf0zKRPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776151654; c=relaxed/simple;
	bh=Vz7gQl8LI8ZmeD/OhAE7wDsEgiV977d5SklH5oOj7BY=;
	h=To:Subject:From:Message-Id:Date; b=hNr/UgjBUdyUSGuCfG779UKZk9BOHidt/fEU4oQ7ZjY92ERgpYW1z3ryiwNlJthus7QSjkhCVcVhznn/o3LyDchZSAdbZ2ikAomvjMJY5MXdhorEOfbQEBsd3MQs9Hmg0KNqjp38q1ddau1q00ECTezogMRWEMryoJksLdf2xl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8fZFRXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8fZFRXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65EFC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776151653;
	bh=Vz7gQl8LI8ZmeD/OhAE7wDsEgiV977d5SklH5oOj7BY=;
	h=To:Subject:From:Date:From;
	b=c8fZFRXnFhu1+koYRDXDRsQ3S+fB4sVXsNrWnM73/LrqCnF7Z3280Wbjor7LaR+SM
	 tnJ2XVMUOujkotfSJBdi3cS3bhjgrpH88uwApMqLTKbKxPwNxZ3qsPtynnLv8AVZfQ
	 5hWGJEgLEcU/5la+kcnunAoEMZJ+SuCkfEzn3egpVLiLrRKNj0tT0rcbPh78DvwpKe
	 xD6/K3cXUhsT1b7/cATu+uQ+7L9gmMXfufXCYL++NjHA+0LcE+fEvdUMeKcDfOhHs/
	 U9FakavQFmn96tzS2CKgs8uU3ve/mgUpib1+fjjX4R1Hiox0BKP09g+T5YLlknMNTG
	 9lS9n8YJOp8IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33BCF531F1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615165369.26590.9350999670469445770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ce5bd1fbbc7a78df8db564baca15f65d8b31ca64d6868baa8ac28d04aa200a
Date: Tue, 14 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776151653
