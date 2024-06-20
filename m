Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E6A24B26
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718910023; cv=none; b=RH8EJoSTAz6/WJG2iIfV1euIoDtPW2r7I++Mybxox2ygfzqAAfN69opgDImQyAibwALjn8w7TqN5WqbV+kl6KFY9uHNBpA8yG8hc8D2i29EeqIGcvIgbJ2+SQW2UgyT+L5RFIy2QgM7PPxavFrTKDSiZQgzCIWpkC+b7Yl/81Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718910023; c=relaxed/simple;
	bh=kklC6f5KLglYhk4romgKhWhAm6FsNS23ioe3lpr1M7c=;
	h=To:Subject:From:Message-Id:Date; b=LxCDGTJLm1P8809dZnXoynTyIqni+O8qI2ONCpIRYhYmj/Bunn2cP1clMxrmW4ptypOIplPuXclCoW9MJCnpeKxRUQ/zCt/GK4ptgRChGY95o0KOY0yKlhQlsNN+QTByAxA9TLCQtF8NMnJXOaKDu9HGvXrQh/P6pQnH77KlUcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuPoNNWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuPoNNWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E015DC4AF14
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718910022;
	bh=kklC6f5KLglYhk4romgKhWhAm6FsNS23ioe3lpr1M7c=;
	h=To:Subject:From:Date:From;
	b=SuPoNNWO4MmJ32nKm3fIE3MRDmtSE/GSqHX41/nq4pgFnQ3MEUytIMCUxFDJtIJZw
	 InKLofRYhLs+WgU9WXJPw61xbX0E/E0Ypk2zJpyp/siofOXF1SO18OMNq23Axr50dN
	 uxSnP7oN1HvcfEvELg0MxJBKlWP3rZdESPxaetqhlzsu+r6NXRDIF4tswBjEx7h21R
	 Gm8GxMOHsbHWr/D/g0KhUfQZz6Pz3ETJ0tH0ln/eEs+ZNVocV7svf5UMdPO//ONieA
	 IKCiASyaPkey7/giwtvVBB/GXAbYVaYnRu6IGEH1BcVeZq8cHtsSXyRIlR2y0GRbIW
	 O7c50aENheYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C243EC2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891002278.3058.8557691255076240363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46e6c68aa035381e051c40a32d3e7f4e670c969d6ef716e4d759430f7992d78
Date: Thu, 20 Jun 2024 19:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718910022
