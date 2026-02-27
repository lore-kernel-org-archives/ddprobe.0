Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAD536E47A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772233494; cv=none; b=Cp8WgZgqzVNB/IcitiiRLYxgE6huq0Znx8nnO6yOTx6fcQ4rTYtLbwW1VMCwWdVPXyQMzEf2cQvH2vUr9bu2xG9pXOHBJIBcIVZXoLTu1BcF17Xc/JYnDQAzv/urBC/NpqzCbpsOSKsSe8jNUyZSOWIuTC53N/dzfpHSro0EYwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772233494; c=relaxed/simple;
	bh=AS04aPOdqb8mKx1VeLQ2GaXHqjTDCSjDoC1z9aAZaz4=;
	h=To:Subject:From:Message-Id:Date; b=quIagGn1wF6kTbTZyeUtefulSI7SFQsLkUTsPUnBQ3zaLy719eSC6CzOtYA4YVSgySfn6+Pk1S/sL0qVw0on/sV4yT6lAXjzh8PC8VO/l2/TxuNu9vKHEkCrlxSGe3arikJVX02gondthywsWz2wSwBvYxgG9Kakf6xLeRYcadA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfygBGcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfygBGcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63E2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772233493;
	bh=AS04aPOdqb8mKx1VeLQ2GaXHqjTDCSjDoC1z9aAZaz4=;
	h=To:Subject:From:Date:From;
	b=PfygBGcJUk8vIQvhj8o1efzel0eFXJy2UVjt4Ly8y5rFpGOMzUwPz463PIdq0qbHR
	 eeRwi+J7s0vf6BgNkclGmQVL5Svh63ycw6NB4wCrIbLUoOSBSdglFZWLGIbsqCNGCz
	 x1lEaryA+VzqIn0kFyMa+bCfYxKcamlTGMbT4Ba0fGdxpbwBqiWRymM5hg8xVfNfku
	 b9b+6ZTCtM1+PLW/VfV90jftpnxk2vbCWmASUduLE2QdEPqDMAuKHgkFMHHIKYYJ4P
	 PYokZdOPX63nkU1TjZD+FGArOtff+TziCmsJDSyzzZExmmgaaGNiMhKOjAsXpTbNK0
	 ibHgSfwkjUA7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D14104891D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223349358.14813.12935769344457544568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e64f2021d88ce3e6cf6def7af555f8d054ece2feac71efd30dde819087034e
Date: Fri, 27 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772233493
