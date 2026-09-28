Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C32548D87E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790586634; cv=none; b=Jj/F7zsVXHK4Ev/g8v59+ehYf1Fk61Kp4T0Rsa3HAKCqdJmX94Lae+dA0otY87WYfxO3w2W58Dkpb7HSlI2dpfm5X1jaoLDmunEHE9mFKUVxwEEc5oyCr5y7XrM+wNPx6mT7Q2eWorv5ksBwHB4K6jTbUSKHFk6W4pz3vWNI1mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790586634; c=relaxed/simple;
	bh=Rvqvyu+hQd9vg/ukTzRIu9iNBmJOJdWkwm3qn8r2Vdo=;
	h=To:Subject:From:Message-Id:Date; b=d3ZxcUjfQDzM/cVGhSZmEb2XFdQWmMMox435zXeVDfSWTCuegOXPpeQsiV0VQlI6e0TnI8WBijNMaHeda8r4fVm64MpD9zOzk0wwj+kNZYumyBSzM4ie51ZJuxADTCmf/l7biocZqC2W9teQzHKhIM/W5GZppqq0/1Ipxa/tQGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJjuk5TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJjuk5TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19CDC4AF13
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790586633;
	bh=Rvqvyu+hQd9vg/ukTzRIu9iNBmJOJdWkwm3qn8r2Vdo=;
	h=To:Subject:From:Date:From;
	b=TJjuk5TBlrGyVNKJuv/t74BqRk2XePbXTMuw+m0Ak8ICMvXoJnauAtFHtT1hk0VhF
	 y01pu3z+99sAt6Gtx142hvM2Blwj+q8z2gJNrRrKq+QqIjkF8b/OUCEXGu807M6rtZ
	 62V214Qm3aCpehIq/t6rF8ciN1+Aua/Ua7/YL7FoUQP78PKCm7TbJB2AyKDvOD0pB+
	 rOasIITR9uANrPVGsw9UVjOGYKvoSG6lC64kYC7hAJ3cnFamg0bebcdQTz1LY2t7Gr
	 NCOdH7BmJHiw9e43sv97q4MgnVED74X0i42ycf6aaJK8caf6p7PLFh7CnuhbUyhI1+
	 qMMKyyMW+OOWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF38DC9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058663370.15190.16650615669731264665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202327d43beee55d79d69ae4578a3c6ecddbc528dd3d4a8b66c785835768e407
Date: Mon, 28 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790586633
