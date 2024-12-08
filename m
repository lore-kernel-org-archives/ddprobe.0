Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3844E17E0
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733634354; cv=none; b=f+IKAnGSkx9FbNI/LYYjPMtrRcUuvuTW1umCQvXnU6HYubN8initWYc3rmhrPVm5RWrRUGdCZeunC9JaG0qmL6HWRGn0wBoGBC9bSvSop9ZT4vvtDcMoJrRQtPVCR5CqR4E7rrNgIG4kvYAcTeQxRDqCQVfaA9UABCrM73Wpipk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733634354; c=relaxed/simple;
	bh=CcQB1sI/U9em+534za5ZoU1v+qblCyBPizJLB+FwitA=;
	h=To:Subject:From:Message-Id:Date; b=APylgCKn6LVhE/JRBiXAaW2YX393pgL0qzFU8BV7596EsLKYHFb/syrLJ5GOJ+YmkI4Bg90ABUHKF5iSOKnBfNfndx0nb1kq6oQjnZlEuQfbXo9O71mEgoK4Wng9zdQJ91QRCffYY6GooEHCRmpum5nO9azkPUdU1p4K7ZeyHmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEKnDhq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEKnDhq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EDCC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733634353;
	bh=CcQB1sI/U9em+534za5ZoU1v+qblCyBPizJLB+FwitA=;
	h=To:Subject:From:Date:From;
	b=ZEKnDhq2u3JHdoCkog0r6mFwpXRSElExP7sU6+C1bup2mJz+Ma1xcCVtBD6ezZJ+g
	 uIDTcPtnS8CTL5oSQCf9cT4+UN7NXf5M/tVRMBVJSy5vuNLV+vV6oMqI6uNCd3H1D2
	 jQizUoLXOg0slc+XaNCwLaLD7oj4mK4AQpbsk28vw+yYtFb1D/vUShJI2BRa92KMkv
	 9wTGBLGdJGw5gayRv7q018M+JnHvbULXeO6sn9ZDm1uidL4OZq8GNGI+OIYB689lwV
	 nPhjLd4wIyfaU/vCE4pIVuxCUY91E6m/lP8dMO0Y2f4Td4dMPufrKnwGm+LBntksmF
	 rYp+GnA/G4dSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93319E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173363435359.21880.12891466318988303589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3885af982aa1ccda40b17af8de1b90cea27885022a9494a439f7fb9ed15a2942
Date: Sun, 08 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733634353
