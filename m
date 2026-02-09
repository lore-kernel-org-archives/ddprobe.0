Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2E53385A5
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770628433; cv=none; b=GZMYiRE5dRgkdTQAuiw7WJ7vqPqEcx0upx3JV3fGEpYOf/qAnDJdwjMl1cYaWRv9nEpAaLrv8RFcpybMCEjsdMq0Q8gmRZ+SWaXlCrv2x7vkLd07n+ikeLjYlO0MdTqh/1ngdUJ/YyfoQTs3J8o/G/AUiIiUkFPThcALJkMcsqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770628433; c=relaxed/simple;
	bh=sV+9bAIuOS6r75qtV09f3NS9PG+ezPm8nRKugWVbyhk=;
	h=To:Subject:From:Message-Id:Date; b=eiMgqssE8etoLoHR0zX2MWaRFHRyagY2HmOTmSyl6/YE2nQb65NEixJDa4YMustqLs4KgE2y219SdxtTOHJXyjilvycLT8ZCKehBwzZqnH2vAVpOGOp+AlYWC/3btmhuFoPxzhGwzLKZYO2ZIoQyb25vU2VjcPT1TApEOS4s790=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnISdAFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnISdAFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6D4C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770628433;
	bh=sV+9bAIuOS6r75qtV09f3NS9PG+ezPm8nRKugWVbyhk=;
	h=To:Subject:From:Date:From;
	b=bnISdAFKZTIhcE0IL9I1MFUmYtU51ROGFja8aZGnoJ1IBPX8qU/g1/5XRjn8+NabM
	 fWdVxzpq8vcVWWCHDM/46aPYZ/nob39KTRGPruSgEnSb/Vz5yvd3gbrYc7uEw0KSHD
	 mm4OqYQofpvsyHvmnRcxFf6anQtMSfvkXFdZ1YOaA1wFLPr5OJGXpuelwCSc9Eer6s
	 YlMPaSAf9QWgMapnYCsTSUOWOjK96eQHZgPXW7q3SFX2prYQkqy0h3DK2n2rnBIHv0
	 w7FJY/cqrXyeFQdN2MuXUGf2Jo/fa9nUubfVCxVEyi/tpgy3wbbT69jyddh4n7rJy+
	 4q+XwviGSUJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988D0E78D64
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062843361.11446.13461165026463952301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdb9435f842b06bf5e516aeddc19cdd3833b26161dab620b69c1badb08db77a
Date: Mon, 09 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770628433
