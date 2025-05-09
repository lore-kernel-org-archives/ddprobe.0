Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFAB22A4C2
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746775194; cv=none; b=Jrj+yl1nLXOIebWh88071zihZ9Sz7XkZ09ctQRMSxoxS+Qk7CUG5cjlNLX93K19DuVpOpDeqQGio9PenCUUVnNtRKmlm2SaLrdjh3/krGYBQTcGKLAVHXQNMGjzNrspnMZoztGgcXmeOutQy2DZwBBs1f4yexmxtNchj2JOaCCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746775194; c=relaxed/simple;
	bh=iVh95/hj8Tf9DC/MqVA1/BHygGHDCz3T/H5dGwgmLcA=;
	h=To:Subject:From:Message-Id:Date; b=mRrV3+oZo08RoLY8t8RQPlqvWRwR87/JyhiPcGOB1Wr8UI7eWtdLpKqIWppgRHO0+hTv1yXJZpBRO3XsbDiczTxR/ceEBhYUkDEtiLeXDLmrV3YcNCsyC9ceA2vEIHpm7UOKgnHV2FmK2CgxK5KxT8Z5MS6dtJp3ACHbt41Tf60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBoAv/iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBoAv/iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A503EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746775193;
	bh=iVh95/hj8Tf9DC/MqVA1/BHygGHDCz3T/H5dGwgmLcA=;
	h=To:Subject:From:Date:From;
	b=kBoAv/iE0w5Ch3/iFMM/e6Gjnb1T1Q7SLgOhz5g/KO60O54JTX+1fMiOc1DecezZh
	 0EToKV6ZijW41hchcP+TVLjGtabet2O719BWWNtJHh0EmW4nOTj9FiMvlDsdLmP6+2
	 N8cjPfNf5N1vQfmoHuQJnP+kLNOxF81AzlfXIul5U51KMJAehPheunVDey1NV6LaHY
	 feQb6iDcwsgRfQBsTiEcdcAV8pUmvZIWkAajevOqODKCWEQLtB2hmiBWBTfHTonSKV
	 /h9hP30FXl65ML+hcvCqe5pbG1R62mwSlfBFV4cF6A8Drp5WyzqsPET800099QChvL
	 uzi/3IbaV3FEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B0C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677519358.15428.5397613739142446625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c2402adc82cfd74d00bc2fe51045ae618f9a1ac41667ff8d3fdc08a06956c4
Date: Fri, 09 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746775193
