Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310621AACB
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728051354; cv=none; b=LKLsJGkI+3QhYsraNdEiIrwRBldLuYwMRaK6/PhMh9aU2Vf/hvAYVBWA/0y1lJgKyR6TBlouCF0j217C2d/M1mgAd/HuvCJsofyEQljJCcsXccKTc4ftI/SRTKMHmPGK5Wfgc4KZE0QiJFZo3wJUpxfFMhRIH6jHDDSXpRpviYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728051354; c=relaxed/simple;
	bh=f4viHBS3r+5UJIdVAj9WOFwUTEQZmGcsO3289YpzQmw=;
	h=To:Subject:From:Message-Id:Date; b=hETYp/AgvQ13wh5DkX0G3M8A0MPJGhgaImHL8QNnPUEoDRbf+gYzA9xC6VMs5FK7pJa90ZKAQKOTQUCNSPoMzpHxKyFAzUxCTCGbFj01ABjgzsndDgwu8FRWSF3hUHmNDhnYjbeCtiTCL2LzAXDa6bQ1vUFIBLzOktBXpqF9lw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fN4S40WW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fN4S40WW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5701C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728051353;
	bh=f4viHBS3r+5UJIdVAj9WOFwUTEQZmGcsO3289YpzQmw=;
	h=To:Subject:From:Date:From;
	b=fN4S40WWGVaGyq/h3nkLFxk9FKGo+najXj7pgwoPHieuBGhLEBj3g0q7QyVe70EVc
	 Q0rTVfe4C8NPLJOSpQzL3TiDrjlYXDw8Ep0LicMfLFtmTIvOhaJZBka+Aac6N8wkpN
	 YuD6U+ePcQDI5Q+xMd+zfYihFuvNWJMMA7nreBB03XJOC31/nsOkSQ52Q5aHvDNdvG
	 St+c7bQ99QlwHdURrp9uKlJIXaQ/roeUCXBkuuKbCaWOZGGH5iD0dA6TrYoFAiFoZj
	 biVCOthAdqy/5zF/a3jbsZ+WpA6d5X2Ls6xiMBuMBMBL6xes2pJWk3N9v1SGbBCozq
	 n2b3QPc61Wgow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27C3CF8552
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805135363.20815.14460525537797495213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4646538be40ae90f0ce8677aa4c4ffd79ceee57edb6bda62c402b7cfdf9802df
Date: Fri, 04 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728051353
