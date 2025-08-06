Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEC6270548
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754479794; cv=none; b=TRqZcI8VHN46KBiYfeFgNo51R9wlN6Tg/h0gp6cNMdKlZd6oYKrux5+cxAks15uJg+Pp1utI7nmDxNWcccObWyI3llTs+U2+mhIb5JaW3JffDLwbtbFcQBSslQe0ct7HyZ1JeowYmYRAjcJyk0/5o7ul2/USog+GwDXU4VFWrVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754479794; c=relaxed/simple;
	bh=JWxoLFAGZtaaUhhaRdc5yHOx2phOO6eF+hM2aTB8s4E=;
	h=To:Subject:From:Message-Id:Date; b=YqtelVKGhLO+pzw+U+hoVzhh7Qxu5UQ3AdziHHLjqZg9yMfNCgsf+KqJ/al72u8PimafP11OcwV5k37pz0VQqy6VC8gtLQpShx+RYo+4vl7GugYhbND2i6u6GFOilyODbOtXDWnGPs8yWkhQppxejLw7AiC1nXRv0t708RqVFCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avO946kP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avO946kP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754479793;
	bh=JWxoLFAGZtaaUhhaRdc5yHOx2phOO6eF+hM2aTB8s4E=;
	h=To:Subject:From:Date:From;
	b=avO946kPcRos8O5V48F2OY6Rm872OejzGw1h/uJn2qZU8R7anPS/ZN1X3EcJiwtVM
	 Q94Ji+6a2vIj5+7W2MfDVS9IL6Y0in8IuyxDgUbXIYLIxwMUwCZTNJs/DeYoETCR/S
	 lme9F3cPJoXIfZdvwz1BKosMGVLVquDuJFbwOy0lkLP8g2Bgj9k1SFsaHpclWnFZz6
	 4q78y/MiqoohxQpJXkX/EMBkD0NcPAbv952kN4RTgWQSWagtMgyGy1XajhNoFjQflD
	 Y2P7Cy6K26c02GW/vmXU1sXmqJ6MMGFfWefxGpGBTqN8S8fgH55lVh4KR37qRHINyL
	 AXRkjDH1YNYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BBC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447979357.22105.15232150682830549319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9ba319a30de5ccf605855c4701e3005821d6e6baa1497a905411374be0a646
Date: Wed, 06 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754479793
