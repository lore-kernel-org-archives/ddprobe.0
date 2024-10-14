Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AA51A4E98
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728903354; cv=none; b=Pa/lQlSLOnVcZbFlZmdO6DJKQgJIwabvQPPV+CAb5fxncmpUiucHC8dw1gBJIPMKMUycbMavc9yFQSF3G/P7m+AUz2a+aBkzTnHjyDSaJ4CrNDLZzMSBS4JUpEw/ctJbnC5jVzxy2pY/Aq4WM2pIZ7BzmKMZhAP+h8CRrYPJVU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728903354; c=relaxed/simple;
	bh=FPjWvbi1r0UB7s3/3oQulSttOfEa3rD8WenyuxFbpl8=;
	h=To:Subject:From:Message-Id:Date; b=t3kJn0suiRMb9gjmXxFZZGwDVw5CrXffexTBrKBIaAlWEXdp15e/f1OHzPmCq6Y68J06MqkyiS69rZeudIEAYm7US6xzj+t+lH3IJ4nOROx0S5mMHp+Fq9whA/3xJaBY227JZ+DEQdFIqH4+Q94+/Ik1JCuAOLM2RN8pmoRrujc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyJcVdZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyJcVdZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEC0C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728903353;
	bh=FPjWvbi1r0UB7s3/3oQulSttOfEa3rD8WenyuxFbpl8=;
	h=To:Subject:From:Date:From;
	b=qyJcVdZeecK3TaYM5PUVPJtzN/1uHsmxM5143xUtMsZEJGydlf+k8zwwfX+scJU3o
	 DFvDul04BAgy33h5B1871S30zt0hfumvrWm2KLH7mtvaYVqYMbNY5xNOip2yEMwyPS
	 9jKbXRnOX3lHUMHca/HsSzf0dI/iuNwBaansMTvgmbLiNpwzRNkFd9ngL6+ftGxunQ
	 cdcBLsheMoAYa70hKQDNVrzRsPXhlHKlC/S68Up6JzShdV+aGzOvs8xJnMoBge8Nbm
	 FiTOHTvLAY+wMb7S8AD8fxUevEJEUfywP9L0LtR0+c18kIZcapg3o8X28I5up1qcl9
	 hJx2PZMgfXHaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D312CF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890335362.6541.2002449668431700586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca8a989d827af259f5ee632fc88f5b7bd4a6d1d5d5b8a2aeee062d63f80a56c
Date: Mon, 14 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728903353
