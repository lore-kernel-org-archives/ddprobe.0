Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D5BEAF9
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763277654; cv=none; b=d1XpLxPGnO3NDAr+pn3ZLtlxLrZYr8MoyHv0GR9NGc3Qygg4iv7Ql+WIMmoKe4pp1fVyin6tnpUmkIa8sYrvyuqpZg1/az8o+RK9MR4wIe1mM+QixktSG0CEWfUKineFndjseJ+CAaD1a+Sgh5+siw0JENOj4KyLsVtFk0cR6vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763277654; c=relaxed/simple;
	bh=UKjxd8uCF8kBhfKGrR3nok57lS1S8MbQs7qdrhesuZs=;
	h=To:Subject:From:Message-Id:Date; b=twFow08Z5X1Hg7eelB5LOObBJB13MZDbloOOvtKWVJnLcZLido4M+uazZgd3QB96JgrROzKUfVSe1XhehWgs6b37PSOtpK4xNGOWKlZwR/xxqFs73dZSx8J3m9zPPkpQdu6VEkrPGbjH25frBce8AV2iZN1US/tLRyGs7VEHd7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCzlUVbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCzlUVbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD7EC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763277653;
	bh=UKjxd8uCF8kBhfKGrR3nok57lS1S8MbQs7qdrhesuZs=;
	h=To:Subject:From:Date:From;
	b=MCzlUVbJrZnwCw5/SyMxXLGWcmbpeewVCjmVYR24QSyOwISwIjssBAA1TsuzckDtc
	 x1HYKeqeU33Cj40kJKScCnkCWl/Vg8qB513D+sJ4pV9u/Kudr0GeR6J7oFDO9GBA4d
	 ahUcmoSVGxVUtqtSliE7xxR/LajkuVOKLWPuLbjy667/WRf1YhpFYn9CI2cE+pZ7li
	 3jgjKKZdkAzjiEQ4zL99ze6kT0IcXKmA+GieHryPuMt5b/6QNhaX0TG0bmqKEEJCGQ
	 RigMsOCewc80AlGnnepvTFgjYjIcLix7xM8GEfRTVgVqzQiw+ztVYJ0zoG1Y+HnKIK
	 hEtZWf8+PqXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06E5CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327765358.16426.10118441763062423777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b734fd7be92678a6926c4e8210c9df9116fe41beeba125aec1fc9cc512550a8
Date: Sun, 16 Nov 2025 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763277653
