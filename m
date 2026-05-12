Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE9638D41E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778588434; cv=none; b=rlCNOsN0XZaYW7RK6ww3vLarx/zzwomLcmUo1cpj1D45+CRDPXBvDhWWizLfm1P7874sX4yfItXiLZBPM6QNDMZNgHW9J9R0A1iu4bVqzJKtHfd8bP8ncT+PEOdhu6nxEzzW6e0x4cKxTzpZj7SJTreRZflmgoujn0aw3QuaEHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778588434; c=relaxed/simple;
	bh=vVwSCP9FykxDYJG7AVekfEhxzFWADgHZHRpX3YsXJmA=;
	h=To:Subject:From:Message-Id:Date; b=VV9COZLEsxgDRs80MCWdcgcpDf58qe7dMgJkF7sZ7wS+Xa3BfB0wpnqoNBNLDGiSrlScU79XoWUdqcJVsRRG3KMvaAOf3FNN6rH9ipJ1eVn6g8Fx00B0xXWutKLTkmjZUlRScoIYLXqaH67y+MujH4djevXaqwWF7MEXBtTmzI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0ox5qoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0ox5qoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD28C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778588433;
	bh=vVwSCP9FykxDYJG7AVekfEhxzFWADgHZHRpX3YsXJmA=;
	h=To:Subject:From:Date:From;
	b=T0ox5qoVzEl2V1TddfVZD+DqvHTwdVCDaUDvZFigparK3BfWJOg3JbtrHxXkcAUcP
	 SGB2vYqYA/hnlr1QdfJTws42f78SDiXgrsbD3n6FB/o1Rrvpx7/1boc76eRrmWqPwZ
	 sAMSTyA7LDok0eSfO9pQAVkehNNoFHHCsbFXV+RzJNWM3eA+9C9H/gNFyeWey1DvRN
	 GlOXEYDWJ6jdYBCDpbb/pl31a7b88DdxZvhi5VEvpYL/Mrq7YPWQ5MbuPebZ+G9nnl
	 hGZlbBGnF2XTumEAHKXbPTNgb0jlPes2jvIgnrfKxchqVJLV8YeC/NSjGJZmQRPz4e
	 WHG69DV+fEBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6B5CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858843369.5172.13097161573210097133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799dc3e187cef7b0bcd0967951cd3a5843cc2bada04559e0eec00c76ca80601d
Date: Tue, 12 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778588433
