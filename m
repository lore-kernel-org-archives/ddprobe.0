Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD24199EAD
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768243434; cv=none; b=XtCEq/XCofb7oO5/Xz/BL+Mmgiei89FaY4imA0hi45AlqCtIlJD/KZOXJuUVm4BKtEGgzsSfSvfy7f7HOULwqgdppVbizktxvoZJiABgu11W9LCAZurx8wH1zUVbfPaBZx9hDGpaIGWbQKXojd7sR/3aFpdytOb1j13/MYnPho0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768243434; c=relaxed/simple;
	bh=ABlGYbN4av2nCwJBj/13hTnSBXXYxMa+izD9tqA2JXM=;
	h=To:Subject:From:Message-Id:Date; b=UJTtGMaoCJBHmZt+d/WgNie7YKrMjmu43XrdcRQjhMHkCLoieTNxx/dTNOoX+kOZ9JW6fWn39AWZas0mzj11ivCRPGkpeNWo6G3UMnCOZejY0cfopzY5cxlpvR1HkhDO0QcdTnRr5/rqgkmu4lSpQZ0sTqyt/iPiVOK6/AMihp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kK2uEtmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kK2uEtmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B8DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768243433;
	bh=ABlGYbN4av2nCwJBj/13hTnSBXXYxMa+izD9tqA2JXM=;
	h=To:Subject:From:Date:From;
	b=kK2uEtmtct/26XZjLVXMRbRMvXEQ5QNbT8AQWmXBlFZaEtiAWJIubupYA4enZJ0FK
	 1uo7Lyo1PVIePa6RZt6xtT1fP+LH/Oxvjd5oC4mkfZYI4DYj2H9VxRGkeM3JH9R93+
	 gQ/DSMiU7DHNeGwi28H3UPlqbMBVvvq4m5n9fZWtlCODfwq/jv9oJDjJ9xPvdzQtdF
	 0UzJIL1/XYtvCY36Ak1b7+Woo1NIaQ1WySnaKS/9lVaSzce39XnNliq94ZQN7NNCjf
	 UC8oHKRpZGNCeFFPmS+BXRPcd2uN6E7jPCU7Ej5DKHk0rTT11Oj3qRgEEpPx3hG5n9
	 JsYM37NoQfycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FACF45C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824343359.28494.2331815115232099385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d5ac88442025c8962e90617b9167203b4a52942d2d30a73a93b7f7c1e342ef
Date: Mon, 12 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768243433
