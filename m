Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C46171AF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779756154; cv=none; b=dfRWGuG4dxBZ3V237UGvbWxB2cEI7LD9tYpiEVw+CY0CKJfSP2QnaxLc/zZpg/AYK9RmulVDk68l6bbMye7ovaWThFSEFOtOyj/91RiBj0sGDZfc5B50T/eUtvZhgPkTztg4wwb57wBJTkpc1WnxtrguodEZYXqA6AXp51Eok0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779756154; c=relaxed/simple;
	bh=wvrWb660YitkJ9v9jfVv+EXozpWn+EjnOV6g272TIUM=;
	h=To:Subject:From:Message-Id:Date; b=O8NltTpfag0vcr4/PLrYUw8Q2c16vRFOfITA98gBUv+d3q6piCu+C5L9exxdnaTMBJMfT9PvKAYSig+lCNHVcsfhJ/wjUdBH5NHfiRTwUSa15dGjSuMbuMBvY3oHrfMeV+V14bqLRElZwiaoqKcUyDj/IOIyRL1bEECETKWgxWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbJN0SoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbJN0SoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88BCC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779756153;
	bh=wvrWb660YitkJ9v9jfVv+EXozpWn+EjnOV6g272TIUM=;
	h=To:Subject:From:Date:From;
	b=QbJN0SoNBcO3U48g1V78GB+n36kWi2trQyPwe9Tr/1UArmjgo2Gvzp1xs0rSt0MDX
	 IuNVMYhf/aX2uietkN8QjhHRFJ7xJH4FrtNBmassppzlS2FB1Izadd03bHG2RvEFbh
	 pViMnkwzQHxn/PJbpfi9zlMKkB2YcTsrD4bQ7v29poYbAaMTM2jg/a3AAr/iPHN18r
	 YRZ9es8PuEE9VDlGZMNEBnlN24hyWnI0suxqOyDxkUN1B00T7etz2/uWc73WNu8EaN
	 3xHq2HSscj2m/65HLQkM4yThRZRJ+jP/BU9uPI8S7HiXP6YbPa723wX2qmdfKN1tew
	 oEOxeZmgDGQAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4DCCD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975615368.32654.7330803366584863245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed3815d22ffc7adbb9ad728897ef1914acf3f8f81629cc3a27a2915a46def1a
Date: Tue, 26 May 2026 00:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779756153
