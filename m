Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B26B748F
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747162794; cv=none; b=fkWDxI/JPGKAZLcNrRLFPQNZRgE41waflQNlwXazv/CNPrQMWkyFFLVmnTfJb57Vc6ExFaInp8u+Pe0DXvqnNZB4FfoubYvPd2cOKk3GK/AeiFEwfxCn0G+rfhrkqd7pT2CWissuB3K3KsoujqiRcKyfDbeq1A0srccJBDj+8dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747162794; c=relaxed/simple;
	bh=a8yCg7i+jMStCDfgb7uNmzxJaUfst6CFoWtRUGnWae4=;
	h=To:Subject:From:Message-Id:Date; b=ovkiNtCFzqXKR0tJtBmFwVrR4pWfXrD9Z9CSp+dAwB12lW1cGyo2XCpW8N0aRY80VV1uhVgtdqBd1wvJ+GM1ovB/TWFe9jZ9dMl1xf7jJW9g2l8zbchIZf8+eKBF/ogox90I4BPnWnKPJw7XfY7FpzwvftVMs+86doh26YSLtSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEbLiatB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEbLiatB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9EDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747162793;
	bh=a8yCg7i+jMStCDfgb7uNmzxJaUfst6CFoWtRUGnWae4=;
	h=To:Subject:From:Date:From;
	b=eEbLiatBdoZS/PNRe7pFv172mEZps/9RnrGViYFSJ7kOTl72ePU/iPzPGziQr8wow
	 IpGyRMKOKaXx8y02ChneAbDFHu448DtmELM+sq3P40XGPimRD2joHXK6z53Od+ky1x
	 EcC8NvlW57Af6AuPkrx48UduG+GuObcCa15y0W7r4Yme/cKkwCu3FajwAwlcaANHCt
	 trZyt9W992t2N+4w36MrgEYFqu9Knyfu2DW5M/FOef5YuLCc02xPvYOKbver5ePZOe
	 PrxrDkPdpHnfDPVv6vkiVKbxwI2jMohiYRKvZhTQHg6d/2USgStjgx9CLZe9owIeSa
	 kpuAviEkXiH7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE1C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716279361.26567.2888471766996608532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51330ceba30e054b01dc1f71aa71739038ed5eb9c349dcd155d944b1574960a
Date: Tue, 13 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747162793
