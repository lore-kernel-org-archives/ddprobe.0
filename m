Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E292ED159
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756323593; cv=none; b=XKghEzDVQjMlFCTT95GcCPd2b75BXzHyr/vsB7YGTPu8AFu8xGcedaYRrebonIo4wqLvp3eTERbgZl35PRNG3sYsaEDIbgYR8PCYzfcucDYn92FfH4guKNrjuhrKjfBAwtYCIEs9VaTbxJvsV6mmAOmg1Y9/OJcHlqZ2+lmsQ7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756323593; c=relaxed/simple;
	bh=RaVGlIHsP1RuTU/swIGKLACTn1hWWKfSRcNzGVMSWZE=;
	h=To:Subject:From:Message-Id:Date; b=s7JXLBYrU5fy4uNH3JWUcqOmW2o06hLH+I9QZRQSpMArCyfX0v3jrHbPftuASrMLTFSfeceVrpj9RovMt5EXBAkT0y1l4yE6PaKVArgEsjXMriZAwVmwglBfKTDqGBH+1Z6YtW+p+F9r0VfzE0EweGB/wYWQXEIkAzuhQCtADuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDpREZVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDpREZVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCB2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756323593;
	bh=RaVGlIHsP1RuTU/swIGKLACTn1hWWKfSRcNzGVMSWZE=;
	h=To:Subject:From:Date:From;
	b=VDpREZVjQq9QLtYiaG/W98Uzcu5Yt4GLfhhuHcghpJG3gTDMZ8eA5KsgJ58Unt+Dy
	 NsrhgK3FbqYDcSJu3USqt3SoQRHo+rzUeYAE05kkcdGHemvIZEpoMq/YRbExlw8evH
	 XemSfT7R3m7r9D02L66ahTRRTRV7C8fEnzSdyGDImFdkVQus5HrjWzDnubnJaeR1Uw
	 bSmeXlI2x4KbdDlYg/L9Ne3ZjK8lF6kXwXU5ZBFgSuZ9+9f5QLGrLjuHTLRjfBzHqu
	 AGsWT7SEW7qyNk/Ol5ut5OuKoltGejaEr1mSWKgGZamK0i5+qKk5skjaH8TFyWvd+J
	 I/Em8BW04IPoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F172CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632359357.28430.11747412596430268972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97fc43d3316a5c82554c978e66fa4f78c9377ba83511312b0af86e40fb1f543b
Date: Wed, 27 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756323593
