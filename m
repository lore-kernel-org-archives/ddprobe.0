Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140A21F5858
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771094094; cv=none; b=M8ZKnle0kBTHAjFZnJDRfS3EwrQknIZAir0BWeFkd8mkC/sHiUPaqjBGNnRRLN0Ff8BJD9QcR3ZwcIncVmyA/LrjP2xmIR7uTHLq7lzDCP+n7CHDqA92wPKHIjjYBEwfuFJlTy9gGq5NQq/+aNRV6TF2wNtJY5HRQ7biqFCt79A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771094094; c=relaxed/simple;
	bh=x8lgRYLK2LaTI1cN+FMMH5lUwGEDOOLTXsuX1Rq1h4I=;
	h=To:Subject:From:Message-Id:Date; b=I9CkLwGmhQZUrHDZDaRb1plWaBcf5o6ImWqU6B1684GDw7bhELn1+t1XWwQOxZbzEP4U3THemaPUEfnHM+6HBAym/+1FhCXLZF/7Rx3JTnCueV66OWEURnJMwvmTeJaD8MYoiKzhyIp+Qg1se2AZjMoGJwygU0B+kIFBx3hKcBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbL8B/XE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbL8B/XE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1076C19422
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771094093;
	bh=x8lgRYLK2LaTI1cN+FMMH5lUwGEDOOLTXsuX1Rq1h4I=;
	h=To:Subject:From:Date:From;
	b=rbL8B/XE9f64jFeHUgks93g4Qd8iP9oi7IVMI5EczJutMOCTiRXliBE1EfcnfJY8Q
	 sw8sF6ZdLYiGFrlfNMvxxdi0CTGL15V5cO43DRKcc8e6KcHjDDuMVCv66zGiUpMo5Z
	 FNhYS2Rdhszhkq+7ulESzbT6ztTNbiH0P9HmPHF8+BKbcRsdY+gNMFjn0bduVoiHZv
	 e30U2Sin+dEpBZo5qKXpLqhc7yp4a7F8eSQLpL4+6vXf1RC6IAnDnek1aZq9iYEiwC
	 4R1/91pgkL3TUFclEhGWBm5e9Sxbyl2aQnPL0InmOm0z8COs1G+zaRJbzFkFySfYuf
	 9ZnH0PP0O14Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA88EF584E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109409360.2954.562631704508358318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecaffdced94a66441c6ba79ed5a7e30ce10af873ce566b2d89e3f9941224e61b
Date: Sat, 14 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771094093
