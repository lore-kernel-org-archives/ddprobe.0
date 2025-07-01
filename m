Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B68B72605
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751335194; cv=none; b=CaSSdi9ASVI7omRGaSdjBWD2MN2kCrwlv2crgtqbclZ0w9PSQrnqSkSd2yokg6PLQ5yl7zeSjyjvegRq+ntem4CMhLWTy/kVa7WumSB31+anS3iyAIlPXCHNOEXZmf2zG9u8bkcbwiCWv4uKQ6MKD3sA2hRYUetNXsFh7b3jJfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751335194; c=relaxed/simple;
	bh=3WRxajbbSMZeKR2X8OM0BPWB60N6qgYcB/iuCShbWy4=;
	h=To:Subject:From:Message-Id:Date; b=qxyvExZK9HM0NTFtWil6v7QS37bfd9DOhP153q21vaymM3CQ1kho350D8sMI2rZNsLKhoBYRNZil6trSp714O1iwo1huOoMUXZHQjeuPvoinDwAEeu08/rWQgdyJ0Tx+ostYx3qX104PeCXy61+yx4w4ti6PiEtDTGqoF1NouJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvZ+od14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvZ+od14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A939FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751335193;
	bh=3WRxajbbSMZeKR2X8OM0BPWB60N6qgYcB/iuCShbWy4=;
	h=To:Subject:From:Date:From;
	b=fvZ+od14wl4cLYAeZ9Mlf9nfNXBMlIhS8iX/0eEzolg0yTopdDLrk2GCVLNJfX/uf
	 Ij3sttEbmjaPRQSEeVi17J5U4ksQ3KUyqgnZMdJQe/zX+qXDwPAyvd6Ft7C8oQrl2S
	 IpGhvBWexq5l9rJ3+LCCFdjIIkAfOTmEPhz70JFlopt8LtLfqQvHcDox6IBI/cYYY7
	 uFxQNT2rKHovUhINdAsqXDOoHmaDnr4zzcGIilM+Y0NcQcHhHiDvsrbIUN59n7mcdv
	 Fijr96kbGRTRdrtecgZRjOpTtpbcaYZYzNLQ4QRXIXPXtCgvy9YxP1dbxm4JbqSIka
	 KT/WGbQlXP+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93662C83030
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133519358.471.10102691370159988066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5044a0ca8a945232a41cb9d3367bbe71d7ff74686697fe2a8d79e62982506741
Date: Tue, 01 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751335193
