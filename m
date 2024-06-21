Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403E815383B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718974943; cv=none; b=NMRNdHXGzFkrB7XTV9kTq/gOEVbBeFLmqLmb4oyvIK+EjVWXuLHvBFe2A/DZGlir7WSgw/nRtEAMsaYFXkNiGgHtYdJNkRHHwAI+RHSDYZu+88TtnsBHadrXMExkFr4wxDqqKKhyWtyAWIF4scWMNjOLzhCgpoY2zFLa+7oLTmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718974943; c=relaxed/simple;
	bh=j436FwFsL0TbZ43qLfqZZrzObLsHw+1NZcOtoHrwKCM=;
	h=To:Subject:From:Message-Id:Date; b=KZSEdN0kUY1tcpfSg0rGsKCKTqmaGow9mq8nEYrJ8Q6ElGHo4ptg4hUXmST41rPVsFdCqgKi4btRVDzcbGGdIPyBGfSdNLcZSd8m3GAQt+CWU04gSPl8xoe9YBZO5AdZlKXV85DNw8sEu7Q2mAgzdR+ISyb0jssyDvnmBPQs8u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qib4uibm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qib4uibm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61E2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718974942;
	bh=j436FwFsL0TbZ43qLfqZZrzObLsHw+1NZcOtoHrwKCM=;
	h=To:Subject:From:Date:From;
	b=qib4uibmbu/ZUkVdiMKOmz9K1Js65b/SNERyFbFjQWqSCzX+gXPr9TK5Y6hqLdhEM
	 igHnTXL2N5G+58JcOKDeHCvV9zRi2UCZSqHyidXNnoGz5aQUNKFAReNeDouTppWI1q
	 yJOPrW+UCqUL0tPMKV2VYW/j2iDpk8R5PmmcM4tQEQULC6H1wPySY6MtgvGgGd4ruC
	 AQRHtCbYniQJf99VyqVQS8QRiNDdUVLcVhr1iih7TRqjGoA3D8+3ZtzW+Zgkti2UBR
	 wwLm9Qvtcz7/URu221T9OPNtc2LUQ1GjxKGhYNIcnVDkJheW6N4XVughgng1wLF0PV
	 GfzOay4evD46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64F7C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897494280.3726.12691822120936649443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1961e6f5ef792d6df5de39079edcc464b483922b0cb0bcc70773920bcb9d6fe2
Date: Fri, 21 Jun 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718974942
