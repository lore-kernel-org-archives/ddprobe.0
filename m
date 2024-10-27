Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBBB79C2
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730055354; cv=none; b=J890LEJ9GMIDPhs4SQHGv71DTlctqFqRdwUKSl7on9bNeSxPgMsS7Wz5HcPfgqbk90XxncnBdxN51ZMUPOSumQs1pCJJ1dmcEX37wNqkrXN6rSCM0NzdeMS+144yNHVTniC2yY390+y/V/H+2UbJHzAUXO3sOVv+yQ/FOR6EtSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730055354; c=relaxed/simple;
	bh=0RszBOS6s36AKj9O7yohHdxOdUPmV00Q1zo0lJBuQhs=;
	h=To:Subject:From:Message-Id:Date; b=pQE+NV1OyXq92hLMcM+DITzJgxVTGIRXiV3nEPTYyO7FfjxfslTlaMubaXgvyZ74MwcBgsQ4iKMU6ENGb3RUZ/d3mjbwGSpMcAjkqnXfqENwO3vBQyCpd82oE58V6ClOnIg6CIfl/vt6SIvKyEJQExf/E6ei7Rb307sQFN8JyTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrCrrAvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrCrrAvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23D3C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730055353;
	bh=0RszBOS6s36AKj9O7yohHdxOdUPmV00Q1zo0lJBuQhs=;
	h=To:Subject:From:Date:From;
	b=SrCrrAvqGvmpicj9mn/NXnV74U1WU5K9cUfPitF2ARpyrh9dZChBVer+xOlazrMia
	 wDfJd6wdeh9txAYA1mKyw9UQBurj5Aecr65KpWWRm1tfoSo3NfUr5SfJLjIwd7tX8j
	 lHeRz3ktNxlZTcaTSfLnvqqJxZrzj6L7waH3Cb9mUnxoEf0jDTGaEbmFUaIr5U4u1P
	 ChTCpf4liSgPNkP20RovwONAJU1EsyNXD7h9OgEuZ+gfrj9Z2jSCHnpnt0sYXO7dfQ
	 3vzqTDCfWDLJD7AJfrkG2o9qQHoQspl2vz3x8ERD8cHn4Cm9mRfdxht2we9ALeo8UE
	 0N8wkqT7hdl7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DBFD13578
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173005535359.4099.4002875300567103600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43389546ef4b5e07df498a99166f5a033ca2146a488ba5473f23fd81b8bb313b
Date: Sun, 27 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730055353
