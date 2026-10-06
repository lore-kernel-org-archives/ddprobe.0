Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE483BB684
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791274234; cv=none; b=eSsH1da4csQUbZxQZks+JhtE6zbqCiQFuDlh/yLSHlneezwnXySFvErkOmAznPLwYZWn1NVt1XaUziqvnqPm/0PHm4FKRoJH5A8WD1NImz070gmcrhpygwfRwpLJtgZc1hUZfFD8ohK41kAtX0m/OAST3HSkBBwUdBb4pUm3XGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791274234; c=relaxed/simple;
	bh=agL351RxslOoreKjfRK4sJwz4mLp25S5S3NaRRM4ATY=;
	h=To:Subject:From:Message-Id:Date; b=noRz3/gtQV9VBuTFscOKlgbW3fZGTJQYsL62LjJBx3isqWhiCL15zJDhMcH2YYKUz6LhYkm92nbd3O3l7uqIew6YAjO+q24c1hQ9ZUQbm8RTZ+afJ2RfsBlBCFgJkhlSgzPjhSStAkaI+kTBg5HazVhkU15ZVzvqCuXiiF/7fwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOnG9jBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOnG9jBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB39FC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791274233;
	bh=agL351RxslOoreKjfRK4sJwz4mLp25S5S3NaRRM4ATY=;
	h=To:Subject:From:Date:From;
	b=LOnG9jBDwU95hJnUCdLLEHC0tEmYZdInLJso4KXTalZtlk/g/5Uqet80/ZqPUK6BG
	 Aj3xWcG6gZ7U4QF0352ip4HNHWfQ3YXXCKNp1ikTGX+yf6JCTe3jzs+7I5VduxNTxE
	 SUDeoUUT874DN1VBJJyKGq+jcegVvxJKUmB51ggHEgJJccmX10+Cifremeg12GTK33
	 +Sv/ojDTuRiuGZLcZ9jo6xJCon8eb/ObLONzH7IcAlI/jNAcZxRpCbT36pFnfzSV/f
	 00hvCyO+BYXlDW6BqkELzVuT0ESj93bjsKEPoF1UUvN3uRZjnY4h1loLZf8u02Qe3s
	 3DxH6Z3Rv+SvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B739CCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127423373.17736.1693435526293613467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e489b561cae9be43c80e4ef450e47e8f9a38f6a9fdfdadda5d2bceb1346b46c
Date: Tue, 06 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791274233
