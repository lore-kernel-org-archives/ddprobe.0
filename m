Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0AB311958
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761941994; cv=none; b=Y8w3OEPd8uLpfCk6nRMB8VE1lrohn4vD1fIZ2McTP9RvdzLUe87ggw4i5+yBi/tB1nOGfRohi+Fx8CKLMF9uhotAQDfsxSotYNncuRudT6eu0x3QCuLrLQA3N5mdDdh8tcevboqLiiTk5WlTsUy/XeFNTZFShvbLV/rGkfP9APw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761941994; c=relaxed/simple;
	bh=+HoMKnUDFvv+8qMiu3GuhhWOly1+n6APT1ImZXn7ELQ=;
	h=To:Subject:From:Message-Id:Date; b=hJXlyyOAtFiZKInpvVwx30kkTlTzHHJUAupqtn8+/GDqXTHtoUhXUe5zXJMtyHqRhs3fYy+ltFGECfoOYgKId7lclmxZdFrDfDBOJ/JEH00P3skoEMmGHKMHxVOdAJYBDMW+A/iQYRD0F7RcyXGlNP1839CdM8aOZootLDJ3TaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGbxIHGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGbxIHGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA42C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761941993;
	bh=+HoMKnUDFvv+8qMiu3GuhhWOly1+n6APT1ImZXn7ELQ=;
	h=To:Subject:From:Date:From;
	b=AGbxIHGLAA1/9kyJkobFwVu2NNDVwv3PLuDfEkg1uwernridkpIHfuRfTnZ4TQK01
	 8JsZtMm2ZAYZAZLn66gfpWB6a4PllR04knFBja9+8dvreLmPkLox9/JxKi9asHMSvJ
	 u9GUwOVoknC5xO1YXBhEj8GAslM7fmRBS/0N68uAPpf1qu9fYPsK3HiLZ3rNpTQusx
	 FUE7m5e/XsBhTNhv029tKmvImwepx2WQct6RGF5/S7xwtpw9x9Dt96ONd77e2aVfN0
	 kT7ClMYfTFpV4vld1seHFBqYFCJqaS59pblZp0IC5gyNsEpHOCjQqKoUqkgSVIiU0b
	 SWdWrv6sTZTIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91001CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194199358.22914.11612793583456656695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09b64c3af9eef437e0cafb6bbe361997ffa79f86cbd06f23ba6a614bddada94
Date: Fri, 31 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761941993
