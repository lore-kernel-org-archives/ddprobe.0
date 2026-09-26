Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4071137C108
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790398834; cv=none; b=lk87WCBbPRCWqDFXh1mO+TnmjRNyvJejc3R5QO2XxX8ePYF2tQjVxtHwFsbkUHlO16AzLHDvJreZIZfiG35diQ6iHzYk95ytW2cuUQGz0HgrqgKOL5pz6fq7ORefvw0Zt3ovpKBSIMZLRy+qli2wj75/h0FW4LY2mwVCyPxk4+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790398834; c=relaxed/simple;
	bh=fFORrAc0CClpw22rKDznMYwJvugZBvs0Gk8118Iufv0=;
	h=To:Subject:From:Message-Id:Date; b=t1tN+cIvkmeOwUxu7D9F48HjFFCHC+KYxR7Jl865sGrodlS163sLH707Sh6ibPdmRjij2Uw/TUslzHiUE7XQeus5EMoZduplpQAEhBF5UlZ/LeTchqiNaXLAdBmEKYL7HFq4sWzrlIXQY91sLvRd7DGE+s7oKrp78jZu0x1geWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXOb4Weu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXOb4Weu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14C2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790398833;
	bh=fFORrAc0CClpw22rKDznMYwJvugZBvs0Gk8118Iufv0=;
	h=To:Subject:From:Date:From;
	b=hXOb4Weu71P9jbWWZunSHwT+UYbsk6gvT3l6gL3C5ODz/u3vQgq3TRn5olMOybho2
	 /8QKxFphc4X4FzbJ9tjlsNnBkTKd2ooxkBJ285KVr4x3KG+SP936uokJ0sswrwzFRe
	 vtblzNL6AIQRAuHfKqvY6UE7vf6yGkrKOxQeDVUQHGAezplvGjVtxspC61VVRkFN2E
	 pqpLcLtfrNdg0Om46m8ysalc6MRwebeClRtajauIhPZEf1IXCKRvVmhJZyCIhPCA27
	 ZtCshP86PSqJwH5+sBeYP1QOnlDpLJVsRlxjwRw37TJBK9Jt/DgPGQqq/QOErICao7
	 hhkH2mUCnIQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E5DC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039883369.13049.16211383845527874389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f545ea04facbb5fceb54a738814f0643a9a88f9ba3758e011cc5f150aa12f8
Date: Sat, 26 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790398833
